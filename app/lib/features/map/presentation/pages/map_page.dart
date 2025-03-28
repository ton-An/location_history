import 'package:flutter/material.dart';
import 'package:location_history/features/calendar/presentation/widgets/calendar_composite/calendar_composite.dart';
import 'package:location_history/features/map/presentation/widgets/location_history_modal/location_history_modal.dart';
import 'package:location_history/features/map/presentation/widgets/map_widget.dart';
import 'package:webfabrik_theme/webfabrik_theme.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  static const String pageName = 'map';
  static const String route = '/$pageName';

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late DraggableScrollableController _draggableScrollableController;

  @override
  void initState() {
    super.initState();

    _draggableScrollableController = DraggableScrollableController();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: MapWidget()),
        Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: WebfabrikTheme.of(context).spacing.medium,
                ),
                child: CalendarComposite(),
              ),
            ),
            Expanded(
              child: DraggableScrollableSheet(
                initialChildSize: LocationHistoryModal.mediumModalHeight,
                minChildSize: LocationHistoryModal.smallModalHeight,
                maxChildSize: LocationHistoryModal.largeModalHeight,
                snap: true,
                snapSizes: [
                  LocationHistoryModal.smallModalHeight,
                  LocationHistoryModal.largeModalHeight,
                ],
                controller: _draggableScrollableController,
                snapAnimationDuration: const Duration(milliseconds: 300),
                builder:
                    (context, scrollController) => LocationHistoryModal(
                      scrollController: scrollController,
                      draggableScrollableController:
                          _draggableScrollableController,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
