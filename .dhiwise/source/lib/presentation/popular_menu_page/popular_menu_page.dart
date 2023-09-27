import '../popular_menu_page/widgets/popular_menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PopularMenuPage extends StatefulWidget {
  const PopularMenuPage({Key? key})
      : super(
          key: key,
        );

  @override
  PopularMenuPageState createState() => PopularMenuPageState();
}

class PopularMenuPageState extends State<PopularMenuPage>
    with AutomaticKeepAliveClientMixin<PopularMenuPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 24.h,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 289.v,
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return PopularMenuItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
