import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:hk_code/config/game_theme.dart';
import 'package:hk_code/game/hollow_game.dart';
import 'package:material_ui/material_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  final game = HollowGame();

  runApp(HollowKnightApp(game: game));
}

class HollowKnightApp extends StatelessWidget {
  final HollowGame game;

  const HollowKnightApp({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hollow Knight Lite',
      debugShowCheckedModeBanner: false,
      theme: GameTheme.darkTheme,
      home: Scaffold(
        backgroundColor: GameTheme.abyssDark,
        body: GameWidget<HollowGame>(game: game),
      ),
    );
  }
}
