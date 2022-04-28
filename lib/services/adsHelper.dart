import 'dart:io';

class AdHelper {
  static String homepageBanner() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/7118983057";
    } else {
      return "ca-app-pub-2951068600361614/5710532619";
    }
  }

  static String DetailspageBanner() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/1675084681";
    } else {
      return "ca-app-pub-2951068600361614/4397450948";
    }
  }

  static String fullPageAds() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/5422758000";
    } else {
      return "ca-app-pub-2951068600361614/3084369273";
    }
  }
}
