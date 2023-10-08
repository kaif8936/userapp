import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(30.0), // Adjust the radius as needed
        color: const Color(0xffF2F2F2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              OctIcons.search_24,
              color: const Color(0xff181E22),
              size: 20.sp,
            ),
            onPressed: () {
              // Handle search action here
            },
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              LineAwesome.filter_solid,
              color: const Color(0xff181E22),
              size: 20.sp,
            ),
            onPressed: () {
              // Clear the search input here
            },
          ),
        ],
      ),
    );
  }
}
