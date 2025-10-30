import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_cubit.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_state.dart';

class CustomBottomNavigationViewBody extends StatelessWidget {
  const CustomBottomNavigationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
        CustomsBottomNavigationCubit,
        CustomBottomNavigationState
    >(builder: (context, state) => state.taps[state.currentIndex]);
  }
}