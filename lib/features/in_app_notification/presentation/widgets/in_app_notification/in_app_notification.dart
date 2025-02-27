library in_app_notification;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_history/core/failures/failure.dart';
import 'package:location_history/core/theme/location_history_theme.dart';
import 'package:location_history/core/widgets/gaps/gaps.dart';
import 'package:location_history/features/in_app_notification/presentation/cubit/in_app_notification_cubit.dart';
import 'package:location_history/features/in_app_notification/presentation/cubit/in_app_notification_states.dart';

part '_content.dart';
part '_decoration.dart';
part '_dismissible.dart';
part '_fade_wrapper.dart';

/*
  To-Dos:
  - [ ] Implement this screen and clean up
  - [ ] Clear up naming of the whole in app notification feature
*/

/// __In App Notification__ builds an in app notification wich displays a [Failure]
class InAppNotification extends StatelessWidget {
  const InAppNotification({
    required this.failure,
    super.key,
  });

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    final LocationHistoryThemeData theme = LocationHistoryTheme.of(context);

    return _FadeWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Dismissible(
            dismissThreshold: .17,
            onDismissed: () =>
                context.read<InAppNotificationCubit>().dismissNotification(),
            movementDuration: const Duration(milliseconds: 450),
            reverseMovementDuration: const Duration(milliseconds: 2000),
            entryDuration: const Duration(milliseconds: 800),
            key: GlobalKey(),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: theme.spacing.medium,
                  vertical: theme.spacing.small,
                ),
                child: _Decoration(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: theme.spacing.xMedium,
                      vertical: theme.spacing.medium,
                    ),
                    child: _Content(
                      failure: failure,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
