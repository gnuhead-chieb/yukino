import 'dart:io';
import 'package:puppeteer/puppeteer.dart';
import '../html_dom.dart';

class PuppeteerOptions {
  const PuppeteerOptions({
    required final this.userDirectory,
  });

  final String userDirectory;
}

class Puppeteer extends HtmlDOMProvider {
  Puppeteer(final HtmlDOMOptions options) : super(options);

  late Browser browser;
  late Page page;
  String? chromiumPath;
  bool ready = false;

  @override
  Future<void> initialize() async {
    final List<String?> chromiumPaths = <String?>[
      ...await Puppeteer.getChromiumPaths(),
      null,
    ];

    for (final String? x in chromiumPaths) {
      try {
        await _launch(x);
      } catch (_) {}
    }

    ready = true;
  }

  Future<void> _launch(final String? executablePath) async {
    browser = await puppeteer.launch(
      userDataDir: options.puppeteerOptions.userDirectory,
      executablePath: executablePath,
    );
    page = await browser.newPage();

    chromiumPath = executablePath;
  }

  @override
  Future<void> goto(final String url) async {
    isClean = false;

    await page.goto(url);
  }

  @override
  Future<dynamic> evalJavascript(final String code) async =>
      page.evaluate(code);

  @override
  Future<void> clean() async {
    if (!isClean) {
      await page.close();
      isClean = true;
    }
  }

  @override
  Future<void> dispose() async {
    await browser.close();
  }

  bool get isUsingInbuiltBrowser => chromiumPath != null;

  static const List<String> regKeys = <String>[
    r'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\App Paths',
    r'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\App Paths',
  ];

  static const List<String> chromiumAppNames = <String>[
    'chrome.exe',
    'msedge.exe'
  ];

  static bool isSupported() =>
      Platform.isWindows || Platform.isLinux || Platform.isMacOS;

  static Future<List<String>> getChromiumPaths() async {
    final List<String> chromiumPaths = <String>[];

    for (final String regKey in regKeys) {
      final ProcessResult result = await Process.run(
        'REG',
        <String>['QUERY', regKey],
        runInShell: true,
      );

      final List<String> paths = result.stdout.toString().trim().split('\n');
      chromiumPaths.addAll(
        paths.where(
          (final String x) =>
              chromiumAppNames.any((final String y) => x.endsWith('/$y')),
        ),
      );
    }

    return chromiumPaths;
  }
}