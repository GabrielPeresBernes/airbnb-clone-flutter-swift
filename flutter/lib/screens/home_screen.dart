import 'package:flutter/material.dart';

import '../data/listing_data.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/listing_card.dart';
import '../widgets/listing_tabs.dart';
import '../widgets/map_button.dart';
import '../widgets/price_tag.dart';
import '../widgets/search_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(126),
          child: SafeArea(
            child: Stack(children: [ListingTabs(), SearchButton()]),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Flexible(
                child: ListView(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 64,
                  ),
                  children: [
                    PriceTag(),
                    SizedBox(height: 18),
                    ListingCard(listing: listing1),
                    SizedBox(height: 36),
                    ListingCard(listing: listing2),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(),
        floatingActionButton: MapButton(),
      ),
    );
  }
}
