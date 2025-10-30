import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_cubit.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_state.dart';

class CustomBottomNavigationView extends StatelessWidget {
  const CustomBottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomsBottomNavigationCubit(),
      child: BlocBuilder<CustomsBottomNavigationCubit, CustomBottomNavigationState>(
        builder: (context, state) {
          return Scaffold(
            body: state.taps[state.currentIndex],
            bottomNavigationBar: const CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
