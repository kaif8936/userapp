// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String)? onChanged;
  final String? initialQuery; 

  const CustomSearchBar({
    Key? key,
    this.onChanged,
    this.initialQuery,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 54.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color(0xffF2F2F2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: const Color(0xff181E22),
                size: 18.sp,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: TextField(
                focusNode: _focusNode,
                controller: _controller,
                onChanged: widget.onChanged,
                decoration: const InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                LineAwesome.filter_solid,
                color: const Color(0xff181E22),
                size: 20.sp,
              ),
              onPressed: () {
                _controller.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
