import 'package:flutter/material.dart';
import 'package:talent_link/src/presentation/widgets/bottom_sheet_widget.dart';

Future showBottomSheetWidget({
  required BuildContext context,
  required Widget content,
  required String titleLabel,
  double height = 300,
}) async {
  return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      enableDrag: false,
      isScrollControlled: true,
      builder: (context) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: BottomSheetWidget(
              height: height,
              content: content,
              titleLabel: titleLabel,
            ),
          ));
}
