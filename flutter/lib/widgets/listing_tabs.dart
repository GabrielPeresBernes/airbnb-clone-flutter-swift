import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListingTabs extends StatelessWidget {
  const ListingTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TabBar(
        padding: EdgeInsets.symmetric(horizontal: 4),
        dividerHeight: 0,
        indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
        ),
        indicatorWeight: 2,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
        unselectedLabelColor: Color(0xFF6A6A6A),
        unselectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
        tabs: [
          Tab(icon: Icon(CupertinoIcons.sun_max, size: 24), text: 'Beachfront'),
          Tab(icon: Icon(CupertinoIcons.house, size: 24), text: 'Cabins'),
          Tab(icon: Icon(CupertinoIcons.wind, size: 24), text: 'Countryside'),
          Tab(
            icon: Icon(CupertinoIcons.triangle_lefthalf_fill, size: 24),
            text: 'Camping',
          ),
          Tab(
            icon: Icon(CupertinoIcons.square_stack_3d_down_right, size: 24),
            text: 'Off-the-grid',
          ),
          Tab(icon: Icon(CupertinoIcons.eye, size: 24), text: 'Amazing views'),
        ],
      ),
    );
  }
}
