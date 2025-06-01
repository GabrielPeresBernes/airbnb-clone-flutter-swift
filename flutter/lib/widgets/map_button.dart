import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapButton extends StatelessWidget {
  const MapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: FloatingActionButton.extended(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF222222),
        label: Row(
          spacing: 6,
          children: [
            Text(
              'Map',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(CupertinoIcons.map_fill, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
