import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/photo-1622796476782-35e5163bbd6f.jpg",
      fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.7),
    colorBlendMode: BlendMode.darken,);
  }
}
