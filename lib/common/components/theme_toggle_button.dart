import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/common/theme/theme_cubit.dart";

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppThemeData>(
      builder: (context, isDark) {
        return IconButton(
          icon: Icon(
            isDark ? Icons.nightlight_round : Icons.wb_sunny,
            color: tWhiteColor,
          ),
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
        );
      },
    );
  }
}
