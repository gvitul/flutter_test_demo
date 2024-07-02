import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_demo/counter.dart';

void main() {
  group('Counter', () {
    test('should start at 0', () {
      final counter = Counter();
      expect(counter.count, 0);
    });

    test('should increment the count', () {
      final counter = Counter();
      counter.increment();
      expect(counter.count, 1);
    });

    test('should decrement the count', () {
      final counter = Counter();
      counter.increment();
      counter.decrement();
      expect(counter.count, 0);
    });
  });
}
