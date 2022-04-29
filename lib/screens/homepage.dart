import 'dart:async';
import 'package:adsdemo/providers/adsProvider.dart';
import 'package:adsdemo/screens/nextPage.dart';
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

    super.initState();
    AdsProvider adprovider = Provider.of<AdsProvider>(context, listen: false);
    adprovider.initializeHomepageAd();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AdsProvider>(
      create: (context) => AdsProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ads Integration"),
          actions: [
            TextButton(
                onPressed: (() => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => nextPage()))),
                child: const Text(
                  "Next page",
                  style: TextStyle(color: Colors.white),
                ))
          ],
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
            Consumer<AdsProvider>(builder: (context, adsProvider, child) {
          if (adsProvider.isHomepageBannerloaded) {
            return Container(
              height: adsProvider.homepageBanner.size.height.toDouble(),
              width: adsProvider.homepageBanner.size.width.toDouble(),
              child: AdWidget(ad: adsProvider.homepageBanner),
            );
            // ignore: dead_code
          } else {
            return Container(
              height: 60,
              child: const Center(child: Text("Ad not loaded")),
            );
          }
        }),
      ),
    );
  }
}
