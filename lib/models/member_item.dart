
import 'package:flutter/material.dart';

class MemberItem {
  final int number;
  final String name;
  final String studentId;
  final String subtitle;
  final Color color;
  final WidgetBuilder builder;

  const MemberItem({
    required this.number,
    required this.name,
    required this.studentId,
    required this.subtitle,
    required this.color,
    required this.builder,
  });
}