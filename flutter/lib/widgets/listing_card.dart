import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/listing.dart';

class ListingCard extends StatelessWidget {
  const ListingCard({super.key, required this.listing});

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(listing.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 16,
                top: 16,
                child: SvgPicture.asset(
                  'assets/heart.svg',
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Text(
          listing.location,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(
          listing.distance,
          style: TextStyle(fontSize: 14, color: Color(0xFF6A6A6A)),
        ),
        Text(
          listing.availability,
          style: TextStyle(fontSize: 14, color: Color(0xFF6A6A6A)),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 14, color: Colors.black),
            children: [
              TextSpan(
                text: listing.price,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' ${listing.stay}',
                style: TextStyle(color: Color(0xFF6A6A6A)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
