import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:userapp/src/utils/routes.dart';
import 'package:userapp/src/widgets/back_button.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_dropdown.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';
import 'package:userapp/src/widgets/phone_field.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({super.key});

  @override
  State<BioScreen> createState() =>
      _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  String? selectedGender;
  bool selectedPhone = false;

  bool isButtonEnabled = false;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();

    super.dispose();
  }

  void _validateForm() {
    //  final isPhoneNumberValid = _isValid;
    final isEmailValid = nameController.text.isNotEmpty;
    // final isPasswordValid = numberController.text.isNotEmpty;
    final isGenderSelected = selectedGender != null;
    final isPhone = selectedPhone;
    setState(() {
      isButtonEnabled = isEmailValid && isGenderSelected && isPhone;
    });
  }

  @override
  Widget build(BuildContext context) {
    const initialCountryCode = 'IN';
    var country =
        countries.firstWhere((element) => element.code == initialCountryCode);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        leadingWidth: 90.w,
        toolbarHeight: 85.h,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.sp, top: 12.sp, bottom: 12.sp),
          child: const CustomBackButton(),
        ),
        title: Text(
          'Fill in all fields',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 22.w),
        child: Form(
          key: _formKey,
          onChanged: _validateForm,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Fill all fields for security'),
                SizedBox(
                  height: 33.h,
                ),
                CustomDropdownFormField<String?>(
                  label: 'Gender',
                  value: selectedGender,
                  items: ['Male', 'Female', 'Other']
                      .map((value) =>
                          DropdownMenuItem(value: value, child: Text(value)))
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue; // Update the selected gender
                    });
                    _validateForm();
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your gender';
                    }
                    return null; // Return null if the selection is valid
                  },
                  hint: 'Select Gender',
                ),
                CustomTextFormField(
                  onFocusChange: (bool hasFocus) {},
                  label: 'Full Name',
                  controller: nameController,
                  hint: 'John Macalister',
                  onTap: () {},
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please input your name';
                    }
                    return null; // Return null if the selection is valid
                  },
                ),
                CustomIntlPhoneField(
                  label: 'Phone Number',
                  controller: numberController,
                  // validator: ,
                  onPhoneNumberChanged: (phone) {
                    if (phone!.number.length >= country.minLength &&
                        phone.number.length <= country.maxLength) {
                      setState(
                        () {
                          selectedPhone = true;
                        },
                      );
                      _validateForm();
                    } else {
                      setState(
                        () {
                          selectedPhone = false;
                        },
                      );
                      _validateForm();
                    }

                    // print(phone.completeNumber);
                    // print(phone.number);
                  },
                  initialCountryCode: initialCountryCode,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Button(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        isLoading = true; // Show loading indicator
                      });
                      // Delay for 3 seconds
                      await Future.delayed(const Duration(seconds: 3));
                      setState(
                        () {
                          isLoading = false; // Hide the loading indicator
                        },
                      );
                      // ignore: use_build_context_synchronously
                      context.push(Routes.registrationSuccessful);
                    }
                  },
                  text: 'NEXT',
                  enabled: isButtonEnabled,
                  isLoading: isLoading, // Pass the isLoading property
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
