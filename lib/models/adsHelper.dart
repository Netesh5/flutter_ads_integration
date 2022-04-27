import 'dart:io';

class AdHelper {
  String homepageBanner() {
    if (Platform.isIOS) {
      return "ca-app-pub-2951068600361614/7118983057";
    } else {
      return "ca-app-pub-2951068600361614/5710532619";
    }
  }
}
