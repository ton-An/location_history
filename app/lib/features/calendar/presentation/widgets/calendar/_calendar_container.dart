part of 'calendar.dart';

class _CalendarContainer extends StatelessWidget {
  const _CalendarContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final WebfabrikThemeData theme = WebfabrikTheme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(theme.radii.medium),
      child: BackdropFilter(
        filter: theme.misc.blurFilter,
        child: AnimatedContainer(
          duration: theme.durations.short,
          decoration: BoxDecoration(
            color: theme.colors.background.withAlpha(150),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: theme.spacing.xSmall,
              bottom: theme.spacing.medium,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
