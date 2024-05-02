import 'package:flutter_bloc/flutter_bloc.dart';

class PageIndicatorCubit extends Cubit<int> {
  PageIndicatorCubit() : super(1);

  void updateIndicator(int index) {
    emit(index + 1);
  }
}
