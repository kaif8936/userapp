import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/home/cart_manager.dart';

class CategoryDishesList extends StatefulWidget {
  
  final MealCategory category;

  const CategoryDishesList({
    super.key,
    required this.category,
  });
  
  @override
  State<CategoryDishesList> createState() => _CategoryDishesListState();
}

class _CategoryDishesListState extends State<CategoryDishesList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 250.h, // Adjust the height as needed
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 24.w,
        ),
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        itemCount: widget.category.dishes.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final dish = widget.category.dishes[index];
          return Container(
            width: 180.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.sp),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x660D5EF9),
                  spreadRadius: -12,
                  blurRadius: 32,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 180.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10.sp)),
                        image: DecorationImage(
                          image: NetworkImage(dish.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              dish.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              dish.subTitle,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '\$${dish.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                         CartManager.addToCart(dish);
                        const snackBar = SnackBar(
                          backgroundColor: Color(0xff0D5EF9),
                          content: Row(
                            children: [
                              Text('Item added to cart'),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                BoxIcons.bx_cart_add,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          duration: Duration(
                              seconds:
                                  2), // You can adjust the duration as needed
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Container(
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: const Color(0xff0D5EF9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.sp),
                            bottomRight: Radius.circular(16.sp),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                BoxIcons.bx_cart_add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'ADD TO CART',
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: Container(
                    width: 34.w,
                    height: 34.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          dish.isFavorite = !dish.isFavorite;
                        });
                      },
                      child: Icon(
                        BoxIcons.bxs_heart, // You can use any heart icon here
                        color: dish.isFavorite ? Colors.red : Colors.grey[200],
                        size: 20.sp,
                      ),
                    ),
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
