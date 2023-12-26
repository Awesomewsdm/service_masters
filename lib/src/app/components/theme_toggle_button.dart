import 'package:home_service_app/common/barrels.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, isDark) {
        return IconButton(
          icon: Icon(
            isDark ? Icons.nightlight_round : Icons.wb_sunny,
            // Customize the colors as needed based on theme
            color: tWhiteColor,
          ),
          onPressed: () {
            context.read<ThemeBloc>().add(ThemeEvent.toggle);
          },
        );
      },
    );
  }
}
