import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/models/meal_category.dart';

class CategoryList extends StatelessWidget {
  final List<MealCategory> mealCategories;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const CategoryList({super.key, 
    required this.mealCategories,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155.h,
      child: ListView.separated(
        clipBehavior: Clip.none,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 12.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: mealCategories.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final category = mealCategories[index];
          final isSelected = index == selectedCategoryIndex;

          return GestureDetector(
            onTap: () {
              onCategorySelected(index);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 88.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(88.sp),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.24),
                              spreadRadius: 2,
                              blurRadius: 16,
                              offset: const Offset(0, 12),
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.08),
                              spreadRadius: 0,
                              blurRadius: 16,
                              offset: const Offset(0, 4),
                            ),
                          ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 1.8.h, horizontal: 2.5.w),
                        child: Container(
                          width: 88.w,
                          height: 88.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(category.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        category.title,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
