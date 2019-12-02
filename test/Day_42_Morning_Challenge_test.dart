import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(logsPercentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]), [{25: 3}, {50: 8}, {75: 16}, {90: 20}, {95: 22}, {99: 22}, {100: 22}]
  );
  expect(logsPercentile([12,9,8,10,17,6,9]), [{25: 8}, {50: 9}, {75: 12}, {90: 17}, {95: 17}, {99: 17}, {100: 17}]
);
  });
}
