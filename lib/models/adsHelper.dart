import 'dart:io';

class AdHelper {
  String homepageBanner() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/7118983057";
    } else {
      return "ca-app-pub-2951068600361614/5710532619";
    }
  }

  String DetailsBanner() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/1675084681";
    } else {
      return "ca-app-pub-2951068600361614/4397450948";
    }
  }

  String fullPageAds() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/5422758000";
    } else {
      return "ca-app-pub-2951068600361614/3084369273";
    }
  }
}
