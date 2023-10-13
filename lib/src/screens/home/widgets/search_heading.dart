import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class SearchHeading extends StatelessWidget {
  const SearchHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       
        Expanded(
      child: Container(
        height: 54.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color(0xffF2F2F2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(OctIcons.search_24,
                  color: const Color(0xff181E22), size: 20.sp),
              onPressed: () {},
            ),
            const Expanded(
              child: SizedBox(
                child: Text("Search"),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
