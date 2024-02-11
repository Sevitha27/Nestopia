import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

class AppbarTrailingImage extends StatelessWidget {
  const AppbarTrailingImage({
    Key? key,
    required this.onTapNestopia,
    this.imagePath = 'assets/nestopia_icon.png',
    this.margin,
  }) : super(key: key);

  final VoidCallback onTapNestopia;
  final String imagePath;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapNestopia,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Image.asset(
          imagePath,
          height: 44.0, // Adjust the size as needed
          width: 46.0,
        ),
      ),
    );
  }
}
