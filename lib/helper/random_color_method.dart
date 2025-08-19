import 'dart:math';
import 'dart:ui';

Color getRandomPastelColor() {
  final Random random = Random();
  int min = 150; // makes colors lighter (pastel effect)
  return Color.fromARGB(
    255,
    min + random.nextInt(106), // 150–255
    min + random.nextInt(106),
    min + random.nextInt(106),
  );
}
