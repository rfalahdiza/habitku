import 'package:flutter/material.dart';

class Habit{
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isDone;

  const Habit({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isDone = false,
  });

  Habit copywith({bool? isDone}){
    return Habit(
      icon: icon,
      title: title,
      subtitle: subtitle,
      isDone: isDone ?? this.isDone,
      );
  }
}