import 'package:flutter/material.dart';

sealed class CustomBottomNavigationIntent {
  const CustomBottomNavigationIntent();
}

final class ChangeIndexIntent extends CustomBottomNavigationIntent {
  final int index;
  final Widget? changedTap;

  const ChangeIndexIntent({required this.index, this.changedTap});
}
