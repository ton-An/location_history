import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_date_utils/in_date_utils.dart';
import 'package:intl/intl.dart';
import 'package:location_history/core/theme/location_history_theme.dart';
import 'package:location_history/features/calendar/presentation/cubits/calendar_date_selection_cubit/calendar_date_selection_cubit.dart';
import 'package:location_history/features/calendar/presentation/cubits/calendar_date_selection_cubit/calendar_date_selection_state.dart';
import 'package:location_history/features/calendar/presentation/cubits/decennially_calendar_cubit/decennially_calendar_cubit.dart';
import 'package:location_history/features/calendar/presentation/cubits/decennially_calendar_cubit/decennially_calendar_state.dart';
import 'package:location_history/features/calendar/presentation/widgets/big_calendar_cell.dart';

part '_years_grid.dart';

class DecenniallyYearCalendar extends StatelessWidget {
  const DecenniallyYearCalendar({
    super.key,
    required this.decadeOffset,
  });

  final int decadeOffset;
  @override
  Widget build(BuildContext context) {
    final LocationHistoryThemeData theme = LocationHistoryTheme.of(context);
    return _YearsGrid(decadeOffset: decadeOffset);
  }
}
