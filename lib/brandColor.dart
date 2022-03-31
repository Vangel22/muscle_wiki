import 'package:flutter/material.dart';

class BrandColor {
  static const MaterialColor kToDark = const MaterialColor(
    0xFF213f91, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff2648a6 ),//10%
      100: const Color(0xff2648b6),//20%
      200: const Color(0xff2648c6),//30%
      300: const Color(0xff2648d6),//40%
      400: const Color(0xff2648e6),//50%
      500: const Color(0xff2648f6),//60%
      600: const Color(0xff2648f6),//70%
      700: const Color(0xff2648f6),//80%
      800: const Color(0xff2648f6),//90%
      900: const Color(0xff2648f6),//100%
    },
  );
}