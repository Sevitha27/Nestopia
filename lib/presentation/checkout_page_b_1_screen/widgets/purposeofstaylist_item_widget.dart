import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PurposeofstaylistItemWidget extends StatelessWidget {
  const PurposeofstaylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Purpose of stay",
      style: theme.textTheme.titleLarge,
    );
  }
}
