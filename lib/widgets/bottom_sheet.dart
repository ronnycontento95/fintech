
import 'package:flutter/material.dart';

Future<dynamic> widgetBottomSheet(BuildContext context,
    {required Widget widget,
      ValueGetter? onHide,
      bool dismissible = true,
      bool transparent = false}) async {
  final deviceHeight = MediaQuery.of(context).size.height;
  final notchPadding = MediaQuery.of(context).padding.top;
  final maxHeight = deviceHeight - notchPadding;

  var response = await showModalBottomSheet(
    context: context,
    barrierColor: transparent ? Colors.black.withAlpha(1) : null,
    isDismissible: dismissible,
    isScrollControlled: true,
    enableDrag: dismissible,
    builder: (BuildContext context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (dismissible) ...[
              Container(
                margin: const EdgeInsets.all(2),
                height: 5,
                width: 100,
                color: Colors.grey,
              ),
            ],
            Flexible(
              child: SingleChildScrollView(
                child: PopScope(
                  canPop: dismissible,
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: widget,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
  if (onHide != null) {
    onHide();
  }
  return response;
}
