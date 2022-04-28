import 'package:adsdemo/providers/adsProvider.dart';
import 'package:adsdemo/services/adsHelper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    //initalizing homepage ad function
    Provider.of<AdsProvider>(context, listen: false).initializeHomepageAd();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AdsProvider>(
      create: (context) => AdsProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ads Integration"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                        child: Text(
                      "Sample Items",
                      style: TextStyle(color: Colors.white),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            Consumer<AdsProvider>(builder: (context, AdsProvider, child) {
          if (AdsProvider.isHomepageBannerloaded) {
            return Container(
              height: AdsProvider.homepageBanner.size.height.toDouble(),
              child: AdWidget(ad: AdsProvider.homepageBanner),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
