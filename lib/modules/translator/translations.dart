import 'package:flutter/material.dart';
import 'package:utilx/utilities/countries.dart';
import 'package:utilx/utilities/languages.dart';

class TranslationLocale {
  TranslationLocale(this.code, [this.country]);

  factory TranslationLocale.parse(final String locale) {
    final RegExpMatch match = RegExp('([^_]+)(_(.*))?').firstMatch(locale)!;
    final LanguageCodes lang = LanguageUtils.languageCodeMap[match.group(1)!]!;
    final LanguageCountries? country = match.group(3) != null
        ? LanguageCountryUtils.nameCodeMap[match.group(3)!]
        : null;

    return TranslationLocale(lang, country);
  }

  final LanguageCodes code;
  final LanguageCountries? country;

  int compare(final TranslationLocale locale) {
    int threshold = 0;

    if (locale.code == code) {
      threshold += 1;
    }

    if (locale.country == country) {
      threshold += 2;
    }

    return threshold;
  }

  @override
  String toString() =>
      <String>[code.name, if (country != null) country!.name].join('_');

  @override
  bool operator ==(final Object other) =>
      other is TranslationLocale &&
      code == other.code &&
      country == other.country;

  @override
  int get hashCode => Object.hash(code, country);
}

abstract class TranslationSentences {
  TranslationLocale get locale;
  TextDirection get textDirection => TextDirection.ltr;

  String home();
  String search();
  String settings();
  String episodes();
  String episode();
  String noValidSources();
  String prohibitedPage();
  String selectPlugin();
  String searchInPlugin(final String plugin);
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
  String back();
  String of();
  String chooseTheme();
  String language();
  String chooseLanguage();
  String anime();
  String manga();
  String chapters();
  String volumes();
  String chapter();
  String volume();
  String page();
  String noPagesFound();
  String vol();
  String ch();
  String mangaReaderDirection();
  String horizontal();
  String vertical();
  String mangaReaderSwipeDirection();
  String leftToRight();
  String rightToLeft();
  String mangaReaderMode();
  String list();
  String previous();
  String next();
  String skipIntro();
  String skipIntroDuration();
  String seekDuration();
  String seconds();
  String autoPlay();
  String autoPlayDetail();
  String autoNext();
  String autoNextDetail();
  String speed();
  String doubleTapToSwitchChapter();
  String doubleTapToSwitchChapterDetail();
  String tapAgainToSwitchPreviousChapter();
  String tapAgainToSwitchNextChapter();
  String selectSource();
  String sources();
  String refetch();
  String anilist();
  String authenticating();
  String successfullyAuthenticated();
  String autoAnimeFullscreen();
  String autoAnimeFullscreenDetail();
  String autoMangaFullscreen();
  String autoMangaFullscreenDetail();
  String authenticationFailed();
  String connections();
  String logIn();
  String view();
  String logOut();
  String nothingWasFoundHere();
  String progress();
  String finishedOf(final int progress, final int? total);
  String startedOn();
  String completedOn();
  String edit();
  String vols();
  String editing();
  String save();
  String status();
  String noOfEpisodes();
  String noOfChapters();
  String noOfVolumes();
  String score();
  String repeat();
  String characters();
  String play();
  String computedAs();
  String notThis();
  String selectAnAnime();
  String read();
  String animeSyncPercent();
  String extensions();
  String install();
  String uninstall();
  String installing();
  String uninstalling();
  String installed();
  String by();
  String cancel();
  String version();
  String topAnimes();
  String recentlyUpdated();
  String recommendedBy(final String by);
  String seasonalAnimes();
  String selectAPluginToGetResults();
  String initializing();
  String downloadingVersion(
    final String version,
    final String downloaded,
    final String total,
    final String percent,
  );
  String unpackingVersion(final String version);
  String restartingApp();
  String checkingForUpdates();
  String updatingToVersion(final String version);
  String failedToUpdate(final String err);
  String startingApp();
  String myAnimeList();
  String episodesWatched();
  String chaptersRead();
  String volumesCompleted();
  String nsfw();
  String restartAppForChangesToTakeEffect();
}