enum LanguageCodes { en }

const Map<LanguageCodes, String> languages = {
  LanguageCodes.en: 'English',
};

extension LanguageName on LanguageCodes {
  String get code => toString().split('.').last;
  String get language => languages[this]!;
}

abstract class LanguageSentences {
  LanguageCodes get code;

  String home();
  String search();
  String settings();
  String episodes();
  String noValidSources();
  String prohibitedPage();
  String selectPlugin();
  String searchInPlugin(String plugin);
  String enterToSearch();
  String noResultsFound();
  String failedToGetResults();
  String preferences();
  String landscapeVideoPlayer();
  String landscapeVideoPlayerDetail();
  String theme();
  String systemPreferredTheme();
  String defaultTheme();
  String darkMode();
  String close();
  String chooseTheme();
  String language();
  String chooseLanguage();
}