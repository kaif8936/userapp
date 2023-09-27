import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.gray50,
                    borderRadius: BorderRadius.circular(15.h),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteATL16 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGrayTL25 => BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillPrimaryTL35 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(35.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(35.h),
      );
  static BoxDecoration get fillGrayTL27 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA400.withOpacity(0.25),
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillGrayTL17 => BoxDecoration(
        color: appTheme.gray90001.withOpacity(0.1),
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillWhiteATL17 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillWhiteATL171 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
        borderRadius: BorderRadius.circular(17.h),
      );
}
