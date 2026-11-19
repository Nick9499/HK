import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:hk_code/config/game_theme.dart';

class HollowGame extends FlameGame {
  @override
  Color backgroundColor() => GameTheme.abyssDark;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    if (kDebugMode) {
      print('>>> HollowGame: Game loop initialized successfully! <<<');
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
