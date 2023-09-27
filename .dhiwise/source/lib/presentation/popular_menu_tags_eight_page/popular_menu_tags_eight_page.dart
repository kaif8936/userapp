import '../popular_menu_tags_eight_page/widgets/fooditem4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PopularMenuTagsEightPage extends StatefulWidget {
  const PopularMenuTagsEightPage({Key? key})
      : super(
          key: key,
        );

  @override
  PopularMenuTagsEightPageState createState() =>
      PopularMenuTagsEightPageState();
}

class PopularMenuTagsEightPageState extends State<PopularMenuTagsEightPage>
    with AutomaticKeepAliveClientMixin<PopularMenuTagsEightPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 27.v,
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
                return Fooditem4ItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
