import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewOne8ItemWidget extends StatelessWidget {
  const ChipviewOne8ItemWidget({Key? key})
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
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "10m",
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 14.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}