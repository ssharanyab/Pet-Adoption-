import 'package:flutter_test/flutter_test.dart';

void main() {
  test('disable button', () async {
    bool _isPressed = false;
    bool _isPressedExpected = myCallback(_isPressed);
    expect(_isPressedExpected, true);
  });
}

bool myCallback(bool _isPressed) {
  _isPressed = true;
  return _isPressed;
}
