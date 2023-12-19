import "package:flutter/material.dart";

void showCustomBottomsheet(BuildContext context, Widget widget) {
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    context: context,
    builder: (context) => widget,
  );
}
