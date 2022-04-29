import 'package:adsdemo/services/adshelper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsProvider with ChangeNotifier {
  late BannerAd homepageBanner;
  late BannerAd nextpageBanner;
  late InterstitialAd fullPageAd;

  bool isHomepageBannerloaded = false;
  bool isnextpageBannerloaded = false;
  bool isFullpageAdloaded = false;

  void initializeHomepageAd() async {
    homepageBanner = BannerAd(
      adUnitId: AdHelper.homepageBanner(),
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(onAdLoaded: (ad) {
        isHomepageBannerloaded = true;
        debugPrint("HomePage Banner loaded");
      }, onAdClosed: (ad) {
        ad.dispose();
        isHomepageBannerloaded = false;
        debugPrint("HomePage Banner not loaded");
      }, onAdFailedToLoad: (ad, error) {
        debugPrint(error.toString());
        isHomepageBannerloaded = false;
      }),
    );
    await homepageBanner.load();
    notifyListeners();
  }

  void initializenextpageAd() async {
    nextpageBanner = BannerAd(
        size: AdSize.banner,
        adUnitId: AdHelper.DetailspageBanner(),
        listener: BannerAdListener(onAdLoaded: (ad) {
          isnextpageBannerloaded = true;
          debugPrint("Detail Banner loaded");
        }, onAdClosed: (ad) {
          ad.dispose();
          isnextpageBannerloaded = false;
        }, onAdFailedToLoad: (ad, error) {
          debugPrint(error.toString());
          isnextpageBannerloaded = false;
        }),
        request: const AdRequest());
    await nextpageBanner.load();
    notifyListeners();
  }

  void initializeFullpageAd() async {
    await InterstitialAd.load(
        adUnitId: AdHelper.fullPageAds(),
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          fullPageAd = ad;
          debugPrint(fullPageAd.toString());
          isFullpageAdloaded = true;
        }, onAdFailedToLoad: (error) {
          isFullpageAdloaded = false;
          debugPrint(error.toString());
        }));
    notifyListeners();
  }
}
