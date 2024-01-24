import "package:service_masters/common/barrels.dart";

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, appThemeData) {
        return IconButton(
          icon: Icon(
            appThemeData.brightness == Brightness.light
                ? CustomIcons.moon
                : Icons.wb_sunny,
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
