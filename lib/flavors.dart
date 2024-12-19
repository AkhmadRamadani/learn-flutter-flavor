import 'package:flutter/services.dart' show appFlavor;

enum Flavor {
  apple,
  banana,
  cherry,
}

Flavor getFlavor(String name) {
  switch (name) {
    case 'apple':
      return Flavor.apple;
    case 'banana':
      return Flavor.banana;
    case 'cherry':
      return Flavor.cherry;
    default:
      return Flavor.apple;
  }
}

class F {
  static Flavor selectedFlavor = Flavor.apple;

  static String get name => selectedFlavor.name;

  F() {
    String? flavor = appFlavor;
    if (flavor != null) {
      selectedFlavor = getFlavor(flavor);
    }
  }

  static String get title {
    switch (selectedFlavor) {
      case Flavor.apple:
        return 'Apple App';
      case Flavor.banana:
        return 'Banana App';
      case Flavor.cherry:
        return 'Cherry App';
      default:
        return 'title';
    }
  }

  static String get baseUrl {
    switch (selectedFlavor) {
      case Flavor.apple:
        return 'https://apple.com';
      case Flavor.banana:
        return 'https://banana.com';
      case Flavor.cherry:
        return 'https://cherry.com';
      default:
        return 'https://default.com';
    }
  }
}
