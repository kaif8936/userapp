import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHugeiconsmartBlueGray900,
      activeIcon: ImageConstant.imgHugeiconsmartBlueGray900,
      type: BottomBarEnum.Hugeiconsmartbluegray900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTrashGray500,
      activeIcon: ImageConstant.imgTrashGray500,
      type: BottomBarEnum.Trashgray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHugeiconuseroutlineuser,
      activeIcon: ImageConstant.imgHugeiconuseroutlineuser,
      type: BottomBarEnum.Hugeiconuseroutlineuser,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSignal,
      activeIcon: ImageConstant.imgSignal,
      type: BottomBarEnum.Signal,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: appTheme.gray500,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: appTheme.blueGray900,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Hugeiconsmartbluegray900,
  Trashgray500,
  Hugeiconuseroutlineuser,
  Signal,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
