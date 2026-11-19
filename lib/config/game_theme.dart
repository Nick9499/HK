import 'package:material_ui/material_ui.dart';

abstract final class GameTheme {
  // --- Core World & Atmosphere Palette ---
  static const Color abyssDark = Color(0xFF0C0E14); // Background / Deep caves
  static const Color hallownestSlate = Color(0xFF1E222D); // Platforms / Stone
  static const Color caveFog = Color(0x332A324B); // Atmospheric fog/tint

  // --- Combat & FX Palette ---
  static const Color soulGlow = Color(0xFF8CE8F8); // Soul energy / Magic
  static const Color nailFlash = Color(0xFFFFFFFF); // Attack slash / Parries
  static const Color infectionOrange = Color(
    0xFFF7941D,
  ); // Hazard / Spikes / Enemies

  // --- HUD & UI Palette ---
  static const Color maskWhite = Color(0xFFF0F4F8); // Health masks (active)
  static const Color maskEmpty = Color(0xFF2B303C); // Health masks (broken)
  static const Color geoGold = Color(0xFFF5D061); // Currency / Accents
  static const Color textMuted = Color(0xFF8B9BB4); // Secondary menu text

  // --- Flutter Widget Theme (for Menus, Settings & Overlays) ---
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: abyssDark,
      colorScheme: const ColorScheme.dark(
        surface: hallownestSlate,
        primary: soulGlow,
        secondary: geoGold,
        error: infectionOrange,
      ),
      sliderTheme: const SliderThemeData(
        activeTrackColor: soulGlow,
        thumbColor: soulGlow,
        inactiveTrackColor: maskEmpty,
      ),
    );
  }
}
