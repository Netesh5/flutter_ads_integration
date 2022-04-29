import 'package:adsdemo/providers/adsProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  State<nextPage> createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  void initState() {
    //initalizing homepage ad function

    super.initState();
    AdsProvider adsProvider = Provider.of<AdsProvider>(context, listen: false);
    adsProvider.initializeDetailpageAd();
    adsProvider.initializeFullpageAd();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AdsProvider adsProvider =
            Provider.of<AdsProvider>(context, listen: false);
        if (adsProvider.isFullpageAdloaded) {
          adsProvider.fullPageAd.show();
        }
        return true; // return true because if we return false the page will not be closed
      },
      child: ChangeNotifierProvider<AdsProvider>(
        create: (context) => AdsProvider(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Next page"),
          ),
          bottomNavigationBar:
              Consumer<AdsProvider>(builder: (context, AdsProvider, child) {
            if (AdsProvider.isDetailpageBannerloaded) {
              return Container(
                height: AdsProvider.detailPageBanner.size.height.toDouble(),
                width: AdsProvider.detailPageBanner.size.width.toDouble(),
                child: AdWidget(ad: AdsProvider.detailPageBanner),
              );
            } else {
              return Container(
                height: 0,
              );
            }
          }),
        ),
      ),
    );
  }
}
