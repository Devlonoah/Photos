import 'package:bloc/bloc.dart';

part 'tab_state.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState(0));

  void tabChanged(int index) {
    emit(TabState(index));
  }
}
