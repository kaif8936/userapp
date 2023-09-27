// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
//   final String title;
//   final Function()? onBack;

//   CustomAppBar({
//     Key? key,
//     required this.title,
//     this.onBack,
//   }) : super(key: key);

//   @override
//   Size get preferredSize =>
//       const Size.fromHeight(56.0); // Adjust the height as needed

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white, // Customize the background color
//       elevation: 4.0, // Customize the elevation
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back),
//         onPressed: onBack ?? () => Navigator.of(context).pop(),
//         color: Colors.black, // Customize the icon color
//       ),
//       title: Text(
//         title,
//         style: TextStyle(
//           color: Colors.black, // Customize the title text color
//           fontSize: 18.sp, // Adjust the font size as needed
//           fontWeight: FontWeight.bold, // Adjust the font weight as needed
//         ),
//       ),
//       centerTitle: true, // Center-align the title
//       // Add more customizations as needed, such as actions, etc.
//     );
//   }
// }
