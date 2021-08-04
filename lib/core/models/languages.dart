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
  as,
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
  zu,
}

extension LanguageName on LanguageCodes {
  String get code => toString().split('.').last;
  String get language => LanguageUtils.languageNameMap[this]!;
}

abstract class LanguageUtils {
  static const Map<LanguageCodes, String> languageNameMap = {
    LanguageCodes.aa: 'Afar',
    LanguageCodes.ab: 'Abkhazian',
    LanguageCodes.af: 'Afrikaans',
    LanguageCodes.ak: 'Akan',
    LanguageCodes.sq: 'Albanian',
    LanguageCodes.am: 'Amharic',
    LanguageCodes.ar: 'Arabic',
    LanguageCodes.an: 'Aragonese',
    LanguageCodes.hy: 'Armenian',
    LanguageCodes.as: 'Assamese',
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
    LanguageCodes.cu:
        'Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic',
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
    LanguageCodes.ia:
        'Interlingua (International Auxiliary Language Association)',
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

  static final codeLangaugeMap = LanguageCodes.values
      .asMap()
      .map(
        (k, v) => MapEntry(
          v.code,
          v,
        ),
      )
      .cast<String, LanguageCodes>();
}
