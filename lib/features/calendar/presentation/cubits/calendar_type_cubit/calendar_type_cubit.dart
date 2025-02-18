import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_history/features/calendar/presentation/cubits/calendar_type_cubit/calendar_type_state.dart';

class CalendarSelectionTypeCubit extends Cubit<CalendarSelectionTypeState> {
  CalendarSelectionTypeCubit() : super(CalendarDaySelection());

  void changeType(CalendarSelectionTypeState calendarSelectionTypeState) {
    emit(calendarSelectionTypeState);
  }
}
