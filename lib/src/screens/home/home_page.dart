import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/home/widgets/category_list.dart';
import 'package:userapp/src/screens/home/widgets/dish_list.dart';
import 'package:userapp/src/screens/home/widgets/offers_page.dart';
import 'package:userapp/src/screens/home/widgets/popular.dart';
import 'package:userapp/src/screens/home/widgets/search_heading.dart';
import 'package:userapp/src/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MealCategory> mealCategories = [
    italianCategory,
    mexicanCategory,
    indianCategory,
    dessertCategory,
    vegetarianCategory,
    meatsCategory,
  ];

  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 22.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.push(Routes.searchPage);
                      },
                      child: const SearchHeading(),
                    ),
                  ),
                  
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 54.w,
                    height: 54.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF2F2F2),
                    ),
                    child: Center(
                      child: Icon(
                        BoxIcons.bx_notification,
                        color: const Color(0xff181E22),
                        size: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
            ),
            SizedBox(height: 15.h),
            CategoryList(
              mealCategories: mealCategories,
              selectedCategoryIndex: selectedCategoryIndex,
              onCategorySelected: (index) {
                setState(() {
                  selectedCategoryIndex = index;
                });
              },
            ),

            SizedBox(height: 5.h), // Adjust spacing as needed
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    mealCategories[selectedCategoryIndex].title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ),
                SizedBox(height: 16.h),
                CategoryDishesList(
                  category: mealCategories[selectedCategoryIndex],
                ),
                SizedBox(height: 25.h),
                const NetworkImageCarousel(
                  imageUrls: [
                    'https://img.freepik.com/premium-photo/different-healthy-food-products-blue-background_427957-558.jpg',
                    'https://img.freepik.com/premium-photo/food-yellow-background-chicken-eggs-sunflower-oil-tomatoes-pasta-canned-food-top-view-flatlay_155404-392.jpg',
                    'https://img.freepik.com/free-photo/top-view-different-types-pasta-as-cavatappi-pipe-rigate-others-with-garlic-butter-pepper-salt-blue-surface-with-copy-space_141793-10547.jpg',
                  ],
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    "Popular This Week",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ),
                SizedBox(height: 16.h),
                PopularDishesList(
                  mealCategories: mealCategories,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
