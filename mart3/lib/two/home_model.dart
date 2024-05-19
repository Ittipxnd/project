import 'package:flutter/material.dart';

class HomePageModel extends ChangeNotifier {
  FocusNode unfocusNode = FocusNode();

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
