
import 'package:flutter/material.dart';

Widget memberAvatarImage(
    String assetPath, {
      double? width,
      double? height,
      BoxFit fit = BoxFit.cover,
    }) {
  return Image.asset(
    assetPath,
    width: width,
    height: height,
    fit: fit,
    errorBuilder: (_, __, ___) => Container(
      width: width,
      height: height,
      color: Colors.grey.shade200,
      child: const Icon(Icons.account_circle, size: 48, color: Colors.grey),
    ),
  );
}