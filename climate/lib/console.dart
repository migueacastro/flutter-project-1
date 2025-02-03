import 'dart:io';

void clear() {
  stdout.write('\x1B[2J\x1B[0;0H');
}
