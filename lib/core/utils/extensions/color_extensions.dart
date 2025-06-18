extension ColorExtensions on double {
  int get toAlpha {
    assert(this >= 0.0 && this <= 1.0);
    return (this * 255).round();
  }
}