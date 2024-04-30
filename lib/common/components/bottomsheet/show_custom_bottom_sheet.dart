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
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      expand: false,
      builder: (
        BuildContext context,
        ScrollController scrollController,
      ) {
        return widget;
      },
    ),
  );
}
