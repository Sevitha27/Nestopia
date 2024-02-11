import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

class AppbarLeadingImage extends StatelessWidget {
  const AppbarLeadingImage({
    Key? key,
    required this.onTap,
    this.imagePath = 'assets/back_icon.png',
    this.margin,
  }) : super(key: key);

  final VoidCallback onTap;
  final String imagePath;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Image.asset(
          imagePath,
          height: 40.0, // Adjust the size as needed
          width: 42.0,
        ),
      ),
    );
  }
}


