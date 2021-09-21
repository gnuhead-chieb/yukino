import { basename, join } from "path";
import { promisify } from "util";
import AdmZip from "adm-zip";
import { spawn, promisifyChildProcess } from "../../../spawn";
import { config } from "../../../config";
import { Logger } from "../../../logger";
import { getVersion } from "../../../helpers/version";

export const built = join(config.base, "build/ios/iphoneos/Runner.app");

const logger = new Logger("build:ios");

export const build = async () => {
    await promisifyChildProcess(
        await spawn("flutter", ["build", "ios", "--no-codesign"], config.base)
    );

    const zip = new AdmZip();
    zip.addLocalFile(built);

    const out = join(
        config.ios.packed,
        `${config.name} v${await getVersion()} Installer.ipa`
    );
    await promisify(zip.writeZip)(out);

    logger.log(`Installer created: ${out}`);
};