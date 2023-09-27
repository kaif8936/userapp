import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewOne2ItemWidget extends StatelessWidget {
  const ChipviewOne2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 13.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "10m",
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 14.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.whiteA700.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            21.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
