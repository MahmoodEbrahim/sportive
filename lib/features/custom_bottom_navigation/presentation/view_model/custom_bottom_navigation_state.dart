import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sportive/features/home/presentation/view/home_screen.dart';
import 'package:sportive/features/profile/presentation/view/profile_screen.dart';

final class CustomBottomNavigationState extends Equatable {
  final List<Widget> taps;
  final int currentIndex;

  const CustomBottomNavigationState({
    this.currentIndex = 0,
    this.taps = const [
      HomeScreen(),
      Center(
        child: Text(
          "Chat Screen",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      ProfileScreen(),
    ],
  });

  CustomBottomNavigationState copyWith({
    int? currentIndex,
    List<Widget>? taps,
  }) {
    return CustomBottomNavigationState(
      currentIndex: currentIndex ?? this.currentIndex,
      taps: taps ?? this.taps,
    );
  }

  @override
  List<Object?> get props => [currentIndex, taps];
}
