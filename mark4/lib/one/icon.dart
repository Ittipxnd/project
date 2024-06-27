import 'package:flutter/material.dart';

class IconButtom extends StatelessWidget {
  const IconButtom({
    super.key,
    required this.imagPart,
  });
  final String imagPart;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade400),
    );
    // child:image.asset(
    //   imagPart,height:40,
    // ),
    // );
  }
}
