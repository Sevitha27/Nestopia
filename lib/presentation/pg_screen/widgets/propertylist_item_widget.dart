import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PropertylistItemWidget extends StatelessWidget {
  const PropertylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 181.h,
      child: Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Text(
          "",
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
