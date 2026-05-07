import 'package:flutter/material.dart';
import 'package:movie_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SegmentedButton<ThemeMode>(
              segments: const [
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: Icon(Icons.brightness_auto, size: 18),
                  tooltip: 'System',
                ),
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: Icon(Icons.light_mode, size: 18),
                  tooltip: 'Light',
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: Icon(Icons.dark_mode, size: 18),
                  tooltip: 'Dark',
                ),
              ],
              selected: {themeProvider.themeMode},
              onSelectionChanged: (Set<ThemeMode> selection) {
                themeProvider.setTheme(selection.first);
              },
              showSelectedIcon: false,
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
              ),
            ),
          ),
        ],
      ),
      body: const SizedBox.shrink(),
    );
  }
}
