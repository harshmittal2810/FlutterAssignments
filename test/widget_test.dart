import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_assignments/common/utils/functions/utils_functions.dart';

void main() {
  group('Utility Functions Tests', () {
    test('formatDate should format date string correctly', () {
      String dateString = "2025-02-27T12:34:56Z";
      String formattedDate = formatDate(dateString);
      expect(formattedDate, equals("27-02-2025"));
    });

    test('getUserNameInitials should return initials for a single user', () {
      String name = "John Doe";
      String initials = getUserNameInitials(name);
      expect(initials, equals("JD"));
    });

    test('capitalizeEachWord should capitalize each word in a string', () {
      String text = "hello world";
      String capitalizedText = capitalizeEachWord(text);
      expect(capitalizedText, equals("Hello World"));
    });
  });
}
