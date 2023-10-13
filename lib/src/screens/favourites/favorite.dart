import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/cart/services/cart_manager.dart';
import 'package:userapp/src/widgets/back_button.dart';

class FavoritePage extends StatefulWidget {
  final List<MealCategory> categories;

  const FavoritePage({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void _showRemoveFromFavoritesBottomSheet(BuildContext context, Dish dish) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Remove from Favorites'),
              onTap: () {
                setState(() {
                  dish.isFavorite = false; // Remove from favorites
                });
                Navigator.of(context).pop();
                _showItemRemovedSnackBar(); // Close the bottom sheet
              },
            ),
          ],
        );
      },
    );
  }

  void _showItemRemovedSnackBar() {
    const snackBar = SnackBar(
      content: Text('Item Removed from Fravoties'),
      backgroundColor: Colors.red, // Customize the color as needed
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final favoriteDishes = widget.categories
        .expand((category) => category.dishes)
        .where((dish) => dish.isFavorite)
        .toList();

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(7.sp),
          child: const CustomBackButton(),
        ),
        title: Text(
          'My Favourites',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.sp),
        child: favoriteDishes.isEmpty
            ? const Center(child: Text("No Favourites"))
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300.h,
                  crossAxisCount: 2, 

                  mainAxisSpacing: 12.sp,
                  crossAxisSpacing: 12.sp,
                ),
                itemCount: favoriteDishes.length,
                itemBuilder: (context, index) {
                  final dish = favoriteDishes[index];
                  return Padding(
                    padding: const EdgeInsets.all(0), 
                    child: Container(
                      // height: 3050.h,
                      // width: 180.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
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
                                // width: 150.w,
                                height: 190.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(dish.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 2.h),
                                child: Container(
                                  height: 50.h,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        dish.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
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
                                          height: 45.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0D5EF9),
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
                                          height: 45.h,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0D5EF9),
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
                                                    color: Colors.white,
                                                  ),
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
                                _showRemoveFromFavoritesBottomSheet(
                                    context, dish);
                              },
                              child: Container(
                                width: 34.w,
                                height: 34.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons
                                      .more_vert, 
                                  color: Colors.grey,
                                  size: 20.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
