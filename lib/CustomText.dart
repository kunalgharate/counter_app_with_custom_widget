// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String count;

  const CustomText({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  State<CustomText> createState() => CustomTextState();
}

class CustomTextState extends State<CustomText> {
  String count = "0";
  @override
  Widget build(BuildContext context) {
    return Text(count);
  }

  @override
  void initState() {
    count = widget.count;
    super.initState();
  }


// Update status when something get change on the parent widget
  @override
  void didUpdateWidget(covariant CustomText oldWidget) {
    if (widget.count != oldWidget.count) {
      setState(() {
        count = widget.count;
      });
    }
    super.didUpdateWidget(oldWidget);
  }
}
