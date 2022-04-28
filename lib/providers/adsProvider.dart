import 'package:adsdemo/services/adshelper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsProvider with ChangeNotifier {
  late BannerAd homepageBanner;
  late BannerAd detailPageBanner;
  late InterstitialAd fullPageAd;

  bool isHomepageBannerloaded = false;
  bool isDetailpageBannerloaded = false;
  bool isFullpageAdloaded = false;

  void initializeHomepageAd() async {
    homepageBanner = BannerAd(
        size: AdSize.banner,
        adUnitId: AdHelper.homepageBanner(),
        listener: BannerAdListener(onAdLoaded: (ad) {
          isHomepageBannerloaded = true;
          debugPrint("HomePage Banner loaded");
        }, onAdClosed: (ad) {
          ad.dispose();
          isHomepageBannerloaded = false;
        }, onAdFailedToLoad: (ad, error) {
          debugPrint(error.toString());
          isHomepageBannerloaded = false;
        }),
        request: AdRequest());
    await homepageBanner.load();
    notifyListeners();
  }

  void initializeDetailpageAd() async {
    detailPageBanner = BannerAd(
        size: AdSize.banner,
        adUnitId: AdHelper.DetailspageBanner(),
        listener: BannerAdListener(onAdLoaded: (ad) {
          isDetailpageBannerloaded = true;
          debugPrint("HomePage Banner loaded");
        }, onAdClosed: (ad) {
          ad.dispose();
          isDetailpageBannerloaded = false;
        }, onAdFailedToLoad: (ad, error) {
          debugPrint(error.toString());
          isDetailpageBannerloaded = false;
        }),
        request: AdRequest());
    await detailPageBanner.load();
    notifyListeners();
  }

  void initializeFullpageAd() async {
    await InterstitialAd.load(
        adUnitId: AdHelper.fullPageAds(),
        request: AdRequest(),
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
