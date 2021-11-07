// SHA: 1322b4feb0d09d09390a4a11e17f029637f139ac
// ID: MTYzNTgzMDA1ODc1Ny45MjA0LTE2MzU4MzAwNTg3NTcuOTIwNA==
// Generated file. Do not edit.

enum LanguageCodes {
    aa,
    ab,
    af,
    ak,
    sq,
    am,
    ar,
    an,
    hy,
    as_,
    av,
    ae,
    ay,
    az,
    ba,
    bm,
    eu,
    be,
    bn,
    bh,
    bi,
    bo,
    bs,
    br,
    bg,
    my,
    ca,
    cs,
    ch,
    ce,
    zh,
    cu,
    cv,
    kw,
    co,
    cr,
    cy,
    da,
    de,
    dv,
    nl,
    dz,
    el,
    en,
    eo,
    et,
    ee,
    fo,
    fa,
    fj,
    fi,
    fr,
    fy,
    ff,
    ka,
    gd,
    ga,
    gl,
    gv,
    gn,
    gu,
    ht,
    ha,
    he,
    hz,
    hi,
    ho,
    hr,
    hu,
    ig,
    io,
    ii,
    iu,
    ie,
    ia,
    id,
    ik,
    it,
    jv,
    ja,
    kl,
    kn,
    ks,
    kr,
    kk,
    km,
    ki,
    rw,
    ky,
    kv,
    kg,
    ko,
    kj,
    ku,
    lo,
    la,
    lv,
    li,
    ln,
    lt,
    lb,
    lu,
    lg,
    mk,
    mh,
    ml,
    mi,
    mr,
    ms,
    mg,
    mt,
    mn,
    na,
    nv,
    nr,
    nd,
    ng,
    ne,
    nn,
    nb,
    no,
    ny,
    oc,
    oj,
    or,
    om,
    os,
    pa,
    pi,
    pl,
    pt,
    ps,
    qu,
    rm,
    ro,
    rn,
    ru,
    sg,
    sa,
    si,
    sk,
    sl,
    se,
    sm,
    sn,
    sd,
    so,
    st,
    es,
    sc,
    sr,
    ss,
    su,
    sw,
    sv,
    ty,
    ta,
    tt,
    te,
    tg,
    tl,
    th,
    ti,
    to,
    tn,
    ts,
    tk,
    tr,
    tw,
    ug,
    uk,
    ur,
    uz,
    ve,
    vi,
    vo,
    wa,
    wo,
    xh,
    yi,
    yo,
    za,
    zu
}
      
extension LanguageCodesUtils on LanguageCodes {
    String get code => name.replaceFirst(RegExp(r'_$'), '');
    String get language => LanguageUtils.codeNameMap[this]!;
}

abstract class LanguageUtils {
    static Map<LanguageCodes, String> codeNameMap =
        <LanguageCodes, String>{
        LanguageCodes.aa: 'Afar',
        LanguageCodes.ab: 'Abkhazian',
        LanguageCodes.af: 'Afrikaans',
        LanguageCodes.ak: 'Akan',
        LanguageCodes.sq: 'Albanian',
        LanguageCodes.am: 'Amharic',
        LanguageCodes.ar: 'Arabic',
        LanguageCodes.an: 'Aragonese',
        LanguageCodes.hy: 'Armenian',
        LanguageCodes.as_: 'Assamese',
        LanguageCodes.av: 'Avaric',
        LanguageCodes.ae: 'Avestan',
        LanguageCodes.ay: 'Aymara',
        LanguageCodes.az: 'Azerbaijani',
        LanguageCodes.ba: 'Bashkir',
        LanguageCodes.bm: 'Bambara',
        LanguageCodes.eu: 'Basque',
        LanguageCodes.be: 'Belarusian',
        LanguageCodes.bn: 'Bengali',
        LanguageCodes.bh: 'Bihari languages',
        LanguageCodes.bi: 'Bislama',
        LanguageCodes.bo: 'Tibetan',
        LanguageCodes.bs: 'Bosnian',
        LanguageCodes.br: 'Breton',
        LanguageCodes.bg: 'Bulgarian',
        LanguageCodes.my: 'Burmese',
        LanguageCodes.ca: 'Catalan; Valencian',
        LanguageCodes.cs: 'Czech',
        LanguageCodes.ch: 'Chamorro',
        LanguageCodes.ce: 'Chechen',
        LanguageCodes.zh: 'Chinese',
        LanguageCodes.cu: 'Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic',
        LanguageCodes.cv: 'Chuvash',
        LanguageCodes.kw: 'Cornish',
        LanguageCodes.co: 'Corsican',
        LanguageCodes.cr: 'Cree',
        LanguageCodes.cy: 'Welsh',
        LanguageCodes.da: 'Danish',
        LanguageCodes.de: 'German',
        LanguageCodes.dv: 'Divehi; Dhivehi; Maldivian',
        LanguageCodes.nl: 'Dutch; Flemish',
        LanguageCodes.dz: 'Dzongkha',
        LanguageCodes.el: 'Greek, Modern (1453-)',
        LanguageCodes.en: 'English',
        LanguageCodes.eo: 'Esperanto',
        LanguageCodes.et: 'Estonian',
        LanguageCodes.ee: 'Ewe',
        LanguageCodes.fo: 'Faroese',
        LanguageCodes.fa: 'Persian',
        LanguageCodes.fj: 'Fijian',
        LanguageCodes.fi: 'Finnish',
        LanguageCodes.fr: 'French',
        LanguageCodes.fy: 'Western Frisian',
        LanguageCodes.ff: 'Fulah',
        LanguageCodes.ka: 'Georgian',
        LanguageCodes.gd: 'Gaelic; Scottish Gaelic',
        LanguageCodes.ga: 'Irish',
        LanguageCodes.gl: 'Galician',
        LanguageCodes.gv: 'Manx',
        LanguageCodes.gn: 'Guarani',
        LanguageCodes.gu: 'Gujarati',
        LanguageCodes.ht: 'Haitian; Haitian Creole',
        LanguageCodes.ha: 'Hausa',
        LanguageCodes.he: 'Hebrew',
        LanguageCodes.hz: 'Herero',
        LanguageCodes.hi: 'Hindi',
        LanguageCodes.ho: 'Hiri Motu',
        LanguageCodes.hr: 'Croatian',
        LanguageCodes.hu: 'Hungarian',
        LanguageCodes.ig: 'Igbo',
        LanguageCodes.io: 'Ido',
        LanguageCodes.ii: 'Sichuan Yi; Nuosu',
        LanguageCodes.iu: 'Inuktitut',
        LanguageCodes.ie: 'Interlingue; Occidental',
        LanguageCodes.ia: 'Interlingua (International Auxiliary Language Association)',
        LanguageCodes.id: 'Indonesian',
        LanguageCodes.ik: 'Inupiaq',
        LanguageCodes.it: 'Italian',
        LanguageCodes.jv: 'Javanese',
        LanguageCodes.ja: 'Japanese',
        LanguageCodes.kl: 'Kalaallisut; Greenlandic',
        LanguageCodes.kn: 'Kannada',
        LanguageCodes.ks: 'Kashmiri',
        LanguageCodes.kr: 'Kanuri',
        LanguageCodes.kk: 'Kazakh',
        LanguageCodes.km: 'Central Khmer',
        LanguageCodes.ki: 'Kikuyu; Gikuyu',
        LanguageCodes.rw: 'Kinyarwanda',
        LanguageCodes.ky: 'Kirghiz; Kyrgyz',
        LanguageCodes.kv: 'Komi',
        LanguageCodes.kg: 'Kongo',
        LanguageCodes.ko: 'Korean',
        LanguageCodes.kj: 'Kuanyama; Kwanyama',
        LanguageCodes.ku: 'Kurdish',
        LanguageCodes.lo: 'Lao',
        LanguageCodes.la: 'Latin',
        LanguageCodes.lv: 'Latvian',
        LanguageCodes.li: 'Limburgan; Limburger; Limburgish',
        LanguageCodes.ln: 'Lingala',
        LanguageCodes.lt: 'Lithuanian',
        LanguageCodes.lb: 'Luxembourgish; Letzeburgesch',
        LanguageCodes.lu: 'Luba-Katanga',
        LanguageCodes.lg: 'Ganda',
        LanguageCodes.mk: 'Macedonian',
        LanguageCodes.mh: 'Marshallese',
        LanguageCodes.ml: 'Malayalam',
        LanguageCodes.mi: 'Maori',
        LanguageCodes.mr: 'Marathi',
        LanguageCodes.ms: 'Malay',
        LanguageCodes.mg: 'Malagasy',
        LanguageCodes.mt: 'Maltese',
        LanguageCodes.mn: 'Mongolian',
        LanguageCodes.na: 'Nauru',
        LanguageCodes.nv: 'Navajo; Navaho',
        LanguageCodes.nr: 'Ndebele, South; South Ndebele',
        LanguageCodes.nd: 'Ndebele, North; North Ndebele',
        LanguageCodes.ng: 'Ndonga',
        LanguageCodes.ne: 'Nepali',
        LanguageCodes.nn: 'Norwegian Nynorsk; Nynorsk, Norwegian',
        LanguageCodes.nb: 'Bokmål, Norwegian; Norwegian Bokmål',
        LanguageCodes.no: 'Norwegian',
        LanguageCodes.ny: 'Chichewa; Chewa; Nyanja',
        LanguageCodes.oc: 'Occitan (post 1500)',
        LanguageCodes.oj: 'Ojibwa',
        LanguageCodes.or: 'Oriya',
        LanguageCodes.om: 'Oromo',
        LanguageCodes.os: 'Ossetian; Ossetic',
        LanguageCodes.pa: 'Panjabi; Punjabi',
        LanguageCodes.pi: 'Pali',
        LanguageCodes.pl: 'Polish',
        LanguageCodes.pt: 'Portuguese',
        LanguageCodes.ps: 'Pushto; Pashto',
        LanguageCodes.qu: 'Quechua',
        LanguageCodes.rm: 'Romansh',
        LanguageCodes.ro: 'Romanian; Moldavian; Moldovan',
        LanguageCodes.rn: 'Rundi',
        LanguageCodes.ru: 'Russian',
        LanguageCodes.sg: 'Sango',
        LanguageCodes.sa: 'Sanskrit',
        LanguageCodes.si: 'Sinhala; Sinhalese',
        LanguageCodes.sk: 'Slovak',
        LanguageCodes.sl: 'Slovenian',
        LanguageCodes.se: 'Northern Sami',
        LanguageCodes.sm: 'Samoan',
        LanguageCodes.sn: 'Shona',
        LanguageCodes.sd: 'Sindhi',
        LanguageCodes.so: 'Somali',
        LanguageCodes.st: 'Sotho, Southern',
        LanguageCodes.es: 'Spanish; Castilian',
        LanguageCodes.sc: 'Sardinian',
        LanguageCodes.sr: 'Serbian',
        LanguageCodes.ss: 'Swati',
        LanguageCodes.su: 'Sundanese',
        LanguageCodes.sw: 'Swahili',
        LanguageCodes.sv: 'Swedish',
        LanguageCodes.ty: 'Tahitian',
        LanguageCodes.ta: 'Tamil',
        LanguageCodes.tt: 'Tatar',
        LanguageCodes.te: 'Telugu',
        LanguageCodes.tg: 'Tajik',
        LanguageCodes.tl: 'Tagalog',
        LanguageCodes.th: 'Thai',
        LanguageCodes.ti: 'Tigrinya',
        LanguageCodes.to: 'Tonga (Tonga Islands)',
        LanguageCodes.tn: 'Tswana',
        LanguageCodes.ts: 'Tsonga',
        LanguageCodes.tk: 'Turkmen',
        LanguageCodes.tr: 'Turkish',
        LanguageCodes.tw: 'Twi',
        LanguageCodes.ug: 'Uighur; Uyghur',
        LanguageCodes.uk: 'Ukrainian',
        LanguageCodes.ur: 'Urdu',
        LanguageCodes.uz: 'Uzbek',
        LanguageCodes.ve: 'Venda',
        LanguageCodes.vi: 'Vietnamese',
        LanguageCodes.vo: 'Volapük',
        LanguageCodes.wa: 'Walloon',
        LanguageCodes.wo: 'Wolof',
        LanguageCodes.xh: 'Xhosa',
        LanguageCodes.yi: 'Yiddish',
        LanguageCodes.yo: 'Yoruba',
        LanguageCodes.za: 'Zhuang; Chuang',
        LanguageCodes.zu: 'Zulu'
    };

    static final Map<String, LanguageCodes> nameCodeMap =
        LanguageCodes.values
            .asMap()
            .map(
                (final int k, final LanguageCodes v) =>
                    MapEntry<String, LanguageCodes>(v.name, v),
            )
            .cast<String, LanguageCodes>();
    }

enum CountryCodes {
    af,
    al,
    dz,
    as_,
    ad,
    ao,
    ai,
    aq,
    ag,
    ar,
    am,
    aw,
    au,
    at,
    az,
    bs,
    bh,
    bd,
    bb,
    by,
    be,
    bz,
    bj,
    bm,
    bt,
    bo,
    ba,
    bw,
    br,
    io,
    vg,
    bn,
    bg,
    bf,
    bi,
    kh,
    cm,
    ca,
    cv,
    ky,
    cf,
    td,
    cl,
    cn,
    cx,
    cc,
    co,
    km,
    ck,
    cr,
    hr,
    cu,
    cw,
    cy,
    cz,
    cd,
    dk,
    dj,
    dm,
    do_,
    tl,
    ec,
    eg,
    sv,
    gq,
    er,
    ee,
    et,
    fk,
    fo,
    fj,
    fi,
    fr,
    pf,
    ga,
    gm,
    ge,
    de,
    gh,
    gi,
    gr,
    gl,
    gd,
    gu,
    gt,
    gg,
    gn,
    gw,
    gy,
    ht,
    hn,
    hk,
    hu,
    is_,
    in_,
    id,
    ir,
    iq,
    ie,
    im,
    il,
    it,
    ci,
    jm,
    jp,
    je,
    jo,
    kz,
    ke,
    ki,
    xk,
    kw,
    kg,
    la,
    lv,
    lb,
    ls,
    lr,
    ly,
    li,
    lt,
    lu,
    mo,
    mk,
    mg,
    mw,
    my,
    mv,
    ml,
    mt,
    mh,
    mr,
    mu,
    yt,
    mx,
    fm,
    md,
    mc,
    mn,
    me,
    ms,
    ma,
    mz,
    mm,
    na,
    nr,
    np,
    nl,
    an,
    nc,
    nz,
    ni,
    ne,
    ng,
    nu,
    kp,
    mp,
    no,
    om,
    pk,
    pw,
    ps,
    pa,
    pg,
    py,
    pe,
    ph,
    pn,
    pl,
    pt,
    pr,
    qa,
    cg,
    re,
    ro,
    ru,
    rw,
    bl,
    sh,
    kn,
    lc,
    mf,
    pm,
    vc,
    ws,
    sm,
    st,
    sa,
    sn,
    rs,
    sc,
    sl,
    sg,
    sx,
    sk,
    si,
    sb,
    so,
    za,
    kr,
    ss,
    es,
    lk,
    sd,
    sr,
    sj,
    sz,
    se,
    ch,
    sy,
    tw,
    tj,
    tz,
    th,
    tg,
    tk,
    to,
    tt,
    tn,
    tr,
    tm,
    tc,
    tv,
    vi,
    ug,
    ua,
    ae,
    gb,
    us,
    uy,
    uz,
    vu,
    va,
    ve,
    vn,
    wf,
    eh,
    ye,
    zm,
    zw
}
      
extension CountryCodesUtils on CountryCodes {
    String get code => name.replaceFirst(RegExp(r'_$'), '');
    String get country => CountryUtils.codeNameMap[this]!;
}

abstract class CountryUtils {
    static Map<CountryCodes, String> codeNameMap =
        <CountryCodes, String>{
        CountryCodes.af: 'Afghanistan',
        CountryCodes.al: 'Albania',
        CountryCodes.dz: 'Algeria',
        CountryCodes.as_: 'American Samoa',
        CountryCodes.ad: 'Andorra',
        CountryCodes.ao: 'Angola',
        CountryCodes.ai: 'Anguilla',
        CountryCodes.aq: 'Antarctica',
        CountryCodes.ag: 'Antigua and Barbuda',
        CountryCodes.ar: 'Argentina',
        CountryCodes.am: 'Armenia',
        CountryCodes.aw: 'Aruba',
        CountryCodes.au: 'Australia',
        CountryCodes.at: 'Austria',
        CountryCodes.az: 'Azerbaijan',
        CountryCodes.bs: 'Bahamas',
        CountryCodes.bh: 'Bahrain',
        CountryCodes.bd: 'Bangladesh',
        CountryCodes.bb: 'Barbados',
        CountryCodes.by: 'Belarus',
        CountryCodes.be: 'Belgium',
        CountryCodes.bz: 'Belize',
        CountryCodes.bj: 'Benin',
        CountryCodes.bm: 'Bermuda',
        CountryCodes.bt: 'Bhutan',
        CountryCodes.bo: 'Bolivia',
        CountryCodes.ba: 'Bosnia and Herzegovina',
        CountryCodes.bw: 'Botswana',
        CountryCodes.br: 'Brazil',
        CountryCodes.io: 'British Indian Ocean Territory',
        CountryCodes.vg: 'British Virgin Islands',
        CountryCodes.bn: 'Brunei',
        CountryCodes.bg: 'Bulgaria',
        CountryCodes.bf: 'Burkina Faso',
        CountryCodes.bi: 'Burundi',
        CountryCodes.kh: 'Cambodia',
        CountryCodes.cm: 'Cameroon',
        CountryCodes.ca: 'Canada',
        CountryCodes.cv: 'Cape Verde',
        CountryCodes.ky: 'Cayman Islands',
        CountryCodes.cf: 'Central African Republic',
        CountryCodes.td: 'Chad',
        CountryCodes.cl: 'Chile',
        CountryCodes.cn: 'China',
        CountryCodes.cx: 'Christmas Island',
        CountryCodes.cc: 'Cocos Islands',
        CountryCodes.co: 'Colombia',
        CountryCodes.km: 'Comoros',
        CountryCodes.ck: 'Cook Islands',
        CountryCodes.cr: 'Costa Rica',
        CountryCodes.hr: 'Croatia',
        CountryCodes.cu: 'Cuba',
        CountryCodes.cw: 'Curacao',
        CountryCodes.cy: 'Cyprus',
        CountryCodes.cz: 'Czech Republic',
        CountryCodes.cd: 'Democratic Republic of the Congo',
        CountryCodes.dk: 'Denmark',
        CountryCodes.dj: 'Djibouti',
        CountryCodes.dm: 'Dominica',
        CountryCodes.do_: 'Dominican Republic',
        CountryCodes.tl: 'East Timor',
        CountryCodes.ec: 'Ecuador',
        CountryCodes.eg: 'Egypt',
        CountryCodes.sv: 'El Salvador',
        CountryCodes.gq: 'Equatorial Guinea',
        CountryCodes.er: 'Eritrea',
        CountryCodes.ee: 'Estonia',
        CountryCodes.et: 'Ethiopia',
        CountryCodes.fk: 'Falkland Islands',
        CountryCodes.fo: 'Faroe Islands',
        CountryCodes.fj: 'Fiji',
        CountryCodes.fi: 'Finland',
        CountryCodes.fr: 'France',
        CountryCodes.pf: 'French Polynesia',
        CountryCodes.ga: 'Gabon',
        CountryCodes.gm: 'Gambia',
        CountryCodes.ge: 'Georgia',
        CountryCodes.de: 'Germany',
        CountryCodes.gh: 'Ghana',
        CountryCodes.gi: 'Gibraltar',
        CountryCodes.gr: 'Greece',
        CountryCodes.gl: 'Greenland',
        CountryCodes.gd: 'Grenada',
        CountryCodes.gu: 'Guam',
        CountryCodes.gt: 'Guatemala',
        CountryCodes.gg: 'Guernsey',
        CountryCodes.gn: 'Guinea',
        CountryCodes.gw: 'Guinea-Bissau',
        CountryCodes.gy: 'Guyana',
        CountryCodes.ht: 'Haiti',
        CountryCodes.hn: 'Honduras',
        CountryCodes.hk: 'Hong Kong',
        CountryCodes.hu: 'Hungary',
        CountryCodes.is_: 'Iceland',
        CountryCodes.in_: 'India',
        CountryCodes.id: 'Indonesia',
        CountryCodes.ir: 'Iran',
        CountryCodes.iq: 'Iraq',
        CountryCodes.ie: 'Ireland',
        CountryCodes.im: 'Isle of Man',
        CountryCodes.il: 'Israel',
        CountryCodes.it: 'Italy',
        CountryCodes.ci: 'Ivory Coast',
        CountryCodes.jm: 'Jamaica',
        CountryCodes.jp: 'Japan',
        CountryCodes.je: 'Jersey',
        CountryCodes.jo: 'Jordan',
        CountryCodes.kz: 'Kazakhstan',
        CountryCodes.ke: 'Kenya',
        CountryCodes.ki: 'Kiribati',
        CountryCodes.xk: 'Kosovo',
        CountryCodes.kw: 'Kuwait',
        CountryCodes.kg: 'Kyrgyzstan',
        CountryCodes.la: 'Laos',
        CountryCodes.lv: 'Latvia',
        CountryCodes.lb: 'Lebanon',
        CountryCodes.ls: 'Lesotho',
        CountryCodes.lr: 'Liberia',
        CountryCodes.ly: 'Libya',
        CountryCodes.li: 'Liechtenstein',
        CountryCodes.lt: 'Lithuania',
        CountryCodes.lu: 'Luxembourg',
        CountryCodes.mo: 'Macau',
        CountryCodes.mk: 'Macedonia',
        CountryCodes.mg: 'Madagascar',
        CountryCodes.mw: 'Malawi',
        CountryCodes.my: 'Malaysia',
        CountryCodes.mv: 'Maldives',
        CountryCodes.ml: 'Mali',
        CountryCodes.mt: 'Malta',
        CountryCodes.mh: 'Marshall Islands',
        CountryCodes.mr: 'Mauritania',
        CountryCodes.mu: 'Mauritius',
        CountryCodes.yt: 'Mayotte',
        CountryCodes.mx: 'Mexico',
        CountryCodes.fm: 'Micronesia',
        CountryCodes.md: 'Moldova',
        CountryCodes.mc: 'Monaco',
        CountryCodes.mn: 'Mongolia',
        CountryCodes.me: 'Montenegro',
        CountryCodes.ms: 'Montserrat',
        CountryCodes.ma: 'Morocco',
        CountryCodes.mz: 'Mozambique',
        CountryCodes.mm: 'Myanmar',
        CountryCodes.na: 'Namibia',
        CountryCodes.nr: 'Nauru',
        CountryCodes.np: 'Nepal',
        CountryCodes.nl: 'Netherlands',
        CountryCodes.an: 'Netherlands Antilles',
        CountryCodes.nc: 'New Caledonia',
        CountryCodes.nz: 'New Zealand',
        CountryCodes.ni: 'Nicaragua',
        CountryCodes.ne: 'Niger',
        CountryCodes.ng: 'Nigeria',
        CountryCodes.nu: 'Niue',
        CountryCodes.kp: 'North Korea',
        CountryCodes.mp: 'Northern Mariana Islands',
        CountryCodes.no: 'Norway',
        CountryCodes.om: 'Oman',
        CountryCodes.pk: 'Pakistan',
        CountryCodes.pw: 'Palau',
        CountryCodes.ps: 'Palestine',
        CountryCodes.pa: 'Panama',
        CountryCodes.pg: 'Papua New Guinea',
        CountryCodes.py: 'Paraguay',
        CountryCodes.pe: 'Peru',
        CountryCodes.ph: 'Philippines',
        CountryCodes.pn: 'Pitcairn',
        CountryCodes.pl: 'Poland',
        CountryCodes.pt: 'Portugal',
        CountryCodes.pr: 'Puerto Rico',
        CountryCodes.qa: 'Qatar',
        CountryCodes.cg: 'Republic of the Congo',
        CountryCodes.re: 'Reunion',
        CountryCodes.ro: 'Romania',
        CountryCodes.ru: 'Russia',
        CountryCodes.rw: 'Rwanda',
        CountryCodes.bl: 'Saint Barthelemy',
        CountryCodes.sh: 'Saint Helena',
        CountryCodes.kn: 'Saint Kitts and Nevis',
        CountryCodes.lc: 'Saint Lucia',
        CountryCodes.mf: 'Saint Martin',
        CountryCodes.pm: 'Saint Pierre and Miquelon',
        CountryCodes.vc: 'Saint Vincent and the Grenadines',
        CountryCodes.ws: 'Samoa',
        CountryCodes.sm: 'San Marino',
        CountryCodes.st: 'Sao Tome and Principe',
        CountryCodes.sa: 'Saudi Arabia',
        CountryCodes.sn: 'Senegal',
        CountryCodes.rs: 'Serbia',
        CountryCodes.sc: 'Seychelles',
        CountryCodes.sl: 'Sierra Leone',
        CountryCodes.sg: 'Singapore',
        CountryCodes.sx: 'Sint Maarten',
        CountryCodes.sk: 'Slovakia',
        CountryCodes.si: 'Slovenia',
        CountryCodes.sb: 'Solomon Islands',
        CountryCodes.so: 'Somalia',
        CountryCodes.za: 'South Africa',
        CountryCodes.kr: 'South Korea',
        CountryCodes.ss: 'South Sudan',
        CountryCodes.es: 'Spain',
        CountryCodes.lk: 'Sri Lanka',
        CountryCodes.sd: 'Sudan',
        CountryCodes.sr: 'Suriname',
        CountryCodes.sj: 'Svalbard and Jan Mayen',
        CountryCodes.sz: 'Swaziland',
        CountryCodes.se: 'Sweden',
        CountryCodes.ch: 'Switzerland',
        CountryCodes.sy: 'Syria',
        CountryCodes.tw: 'Taiwan',
        CountryCodes.tj: 'Tajikistan',
        CountryCodes.tz: 'Tanzania',
        CountryCodes.th: 'Thailand',
        CountryCodes.tg: 'Togo',
        CountryCodes.tk: 'Tokelau',
        CountryCodes.to: 'Tonga',
        CountryCodes.tt: 'Trinidad and Tobago',
        CountryCodes.tn: 'Tunisia',
        CountryCodes.tr: 'Turkey',
        CountryCodes.tm: 'Turkmenistan',
        CountryCodes.tc: 'Turks and Caicos Islands',
        CountryCodes.tv: 'Tuvalu',
        CountryCodes.vi: 'U.S. Virgin Islands',
        CountryCodes.ug: 'Uganda',
        CountryCodes.ua: 'Ukraine',
        CountryCodes.ae: 'United Arab Emirates',
        CountryCodes.gb: 'United Kingdom',
        CountryCodes.us: 'United States',
        CountryCodes.uy: 'Uruguay',
        CountryCodes.uz: 'Uzbekistan',
        CountryCodes.vu: 'Vanuatu',
        CountryCodes.va: 'Vatican',
        CountryCodes.ve: 'Venezuela',
        CountryCodes.vn: 'Vietnam',
        CountryCodes.wf: 'Wallis and Futuna',
        CountryCodes.eh: 'Western Sahara',
        CountryCodes.ye: 'Yemen',
        CountryCodes.zm: 'Zambia',
        CountryCodes.zw: 'Zimbabwe'
    };

    static final Map<String, CountryCodes> nameCodeMap =
    CountryCodes.values
            .asMap()
            .map(
                (final int k, final CountryCodes v) =>
                    MapEntry<String, CountryCodes>(v.name, v),
            )
            .cast<String, CountryCodes>();
    }