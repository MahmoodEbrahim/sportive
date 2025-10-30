import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_intent.dart';
import 'package:sportive/features/custom_bottom_navigation/presentation/view_model/custom_bottom_navigation_state.dart';

@injectable
class CustomsBottomNavigationCubit extends Cubit<CustomBottomNavigationState> {
  CustomsBottomNavigationCubit() : super(const CustomBottomNavigationState());

  void doIntent({required CustomBottomNavigationIntent intent}) {
    switch (intent) {
      case ChangeIndexIntent():
        _changeIndex(index: intent.index);
        break;
    }
  }

  void _changeIndex({required int index}) {
    emit(state.copyWith(currentIndex: index));
  }
}
