import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/cart/services/cart_manager.dart';
import 'package:userapp/src/screens/home/widgets/search_bar.dart';

class SearchDishesPage extends StatefulWidget {
  const SearchDishesPage({Key? key}) : super(key: key);

  @override
  _SearchDishesPageState createState() => _SearchDishesPageState();
}

class _SearchDishesPageState extends State<SearchDishesPage> {
  late List<Dish> allDishes;
  late List<Dish> displayedDishes;
  String query = '';

  @override
  void initState() {
    super.initState();
    allDishes = [
      italianCategory,
      mexicanCategory,
      indianCategory,
      dessertCategory,
      vegetarianCategory,
      meatsCategory
    ].expand((category) => category.dishes).toList();
    displayedDishes = List.from(allDishes);
  }

  List<Dish> searchDishes(String query) {
    query = query.toLowerCase();
    return allDishes.where((dish) {
      return dish.title.toLowerCase().contains(query) ||
          dish.subTitle.toLowerCase().contains(query);
    }).toList();
  }

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
              child: CustomSearchBar(
                onChanged: (query) {
                  setState(() {
                    displayedDishes = searchDishes(query);
                  });
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount:
                  displayedDishes.isNotEmpty ? displayedDishes.length : 1,
              itemBuilder: (context, index) {
                if (displayedDishes.isEmpty) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 22.w),
                    child: Text(
                      'No results for "$query" in delivery. Please try something else',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  final dish = displayedDishes[index];
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 22.w),
                    child: Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10.sp)),
                                  image: DecorationImage(
                                    image: NetworkImage(dish.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 12.h,
                                ),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            dish.title,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(3.5.sp),
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8.sp,
                                              ), // Border radius
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  dish.userRating
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.sp),
                                                ),
                                                SizedBox(width: 2.w),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 14.sp,
                                                ), 
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        dish.subTitle,
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
                                  onTap: dish.isItemAdded
                                      ? () {}
                                      : () {
                                          setState(
                                            () {
                                              dish.isItemAdded =
                                                  !dish.isItemAdded;
                                            },
                                          );
                                          CartManager.addToCart(dish.id);
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
                                                    2), 
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        },
                                  child: dish.isItemAdded
                                      ? Container(
                                          height: 50.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff0D5EF9),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  Radius.circular(16.sp),
                                              bottomRight:
                                                  Radius.circular(16.sp),
                                            ),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  BoxIcons.bx_check,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                Text(
                                                  'ADDED',
                                                  style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 50.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff0D5EF9),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  Radius.circular(16.sp),
                                              bottomRight:
                                                  Radius.circular(16.sp),
                                            ),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                                      fontSize: 10.sp,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                            ],
                          ),
                          Positioned(
                            top: 10.h,
                            right: 10.w,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  dish.isFavorite = !dish.isFavorite;
                                });
                              },
                              child: Container(
                                width: 34.w,
                                height: 34.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  BoxIcons
                                      .bxs_heart, 
                                  color: dish.isFavorite
                                      ? Colors.red
                                      : Colors.grey[200],
                                  size: 20.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
