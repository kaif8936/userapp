// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl_phone_field/countries.dart';
// import 'package:provider/provider.dart';
// import 'package:userapp/src/providers/bio_provider.dart';
// import 'package:userapp/src/utils/routes.dart';
// import 'package:userapp/src/widgets/back_button.dart';
// import 'package:userapp/src/widgets/button.dart';
// import 'package:userapp/src/widgets/custom_dropdown.dart';
// import 'package:userapp/src/widgets/custom_form_field.dart';
// import 'package:userapp/src/widgets/phone_field.dart';

// class BioScreen extends StatelessWidget {
//   const BioScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // print("Rebuild");
//     // final bioProvider = Provider.of<BioProvider>(context, listen: false);

//     const initialCountryCode = 'IN';
//     var country =
//         countries.firstWhere((element) => element.code == initialCountryCode);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[50],
//         leadingWidth: 90.w,
//         toolbarHeight: 85.h,
//         leading: Padding(
//           padding: EdgeInsets.only(left: 24.sp, top: 12.sp, bottom: 12.sp),
//           child: const CustomBackButton(),
//         ),
//         title: Text(
//           'Fill in all fields',
//           style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Consumer<BioProvider>(
//         builder: (context, bioProvider, child) {
//           return Padding(
//             padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 22.w),
//             child: Form(
//               key: bioProvider.formKey,
//               onChanged: bioProvider.validateForm,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text('Fill all fields for security'),
//                   SizedBox(
//                     height: 33.h,
//                   ),
//                   CustomDropdownFormField<String?>(
//                     label: 'Gender',
//                     value: bioProvider.selectedGender,
//                     items: ['Male', 'Female', 'Other']
//                         .map((value) =>
//                             DropdownMenuItem(value: value, child: Text(value)))
//                         .toList(),
//                     onChanged: (String? newValue) {
//                       bioProvider.selectedGender = newValue;
//                       bioProvider.validateForm();
//                     },
//                     validator: (String? value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please select your gender';
//                       }
//                       return null;
//                     },
//                     hint: 'Select Gender',
//                   ),
//                   CustomTextFormField(
//                     onFocusChange: (bool hasFocus) {},
//                     label: 'Full Name',
//                     controller: bioProvider.nameController,
//                     hint: 'John Macalister',
//                     onTap: () {},
//                     validator: (String? value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please input your name';
//                       }
//                       return null;
//                     },
//                   ),
//                   CustomIntlPhoneField(
//                     label: 'Phone Number',
//                     controller: bioProvider.numberController,
//                     onPhoneNumberChanged: (phone) {
//                       if (phone!.number.length >= country.minLength &&
//                           phone.number.length <= country.maxLength) {
//                         bioProvider.selectedPhone = true;
//                       } else {
//                         bioProvider.selectedPhone = false;
//                       }
//                       bioProvider.validateForm();
//                     },
//                     initialCountryCode: initialCountryCode,
//                   ),
//                   const Expanded(
//                     child: SizedBox(),
//                   ),
//                   Button(
//                     onTap: () async {
//                       if (bioProvider.formKey.currentState!.validate()) {
//                         bioProvider.isLoading = true;
//                         bioProvider.validateForm();

//                         await bioProvider.login();

//                         // ignore: use_build_context_synchronously
//                         context.push(Routes.registrationSuccessful);
//                       }
//                     },
//                     text: 'NEXT',
//                     enabled: bioProvider.isButtonEnabled,
//                     isLoading: bioProvider.isLoading,
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
