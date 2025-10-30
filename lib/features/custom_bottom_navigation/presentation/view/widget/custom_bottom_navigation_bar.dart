import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportive/core/const/app_icons/app_icons.dart';
import 'package:sportive/core/const/app_text/app_text.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_cubit.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_intent.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_state.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fitnessBottomNavCubit = BlocProvider.of<CustomsBottomNavigationCubit>(context);

    return BlocBuilder<CustomsBottomNavigationCubit, CustomBottomNavigationState>(
      builder: (context, state) {
        return Container(
          height: 73.h,
          margin: REdgeInsets.symmetric(horizontal: 32, vertical: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: theme.colorScheme.surface,
            border: Border.all(color: theme.colorScheme.outline),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withOpacity(0.2),
                blurStyle: BlurStyle.outer,
                blurRadius: 8.r,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: BottomNavigationBar(
              backgroundColor: theme.colorScheme.surface,
              elevation: 0,
              currentIndex: state.currentIndex,
              selectedItemColor: theme.colorScheme.primary,
              unselectedItemColor: theme.colorScheme.onSurfaceVariant,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              onTap: (value) => fitnessBottomNavCubit.doIntent(
                intent: ChangeIndexIntent(index: value),
              ),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    width: 24.r,
                    height: 24.r,
                    colorFilter: ColorFilter.mode(
                      state.currentIndex == 0
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppText.explore.tr(),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.chat,
                    width: 24.r,
                    height: 24.r,
                    colorFilter: ColorFilter.mode(
                      state.currentIndex == 1
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppText.workouts.tr(),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.profile,
                    width: 24.r,
                    height: 24.r,
                    colorFilter: ColorFilter.mode(
                      state.currentIndex == 2
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppText.profile.tr(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
