import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:intl/intl.dart';

String formatDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);
  return DateFormat('dd-MM-yyyy').format(dateTime);
}

String getUserNameInitials(String name) {
  List<String> names = name.split(' ');
  String initials = "";
  if (names.isNotEmpty) initials += names[0][0].toUpperCase();
  if (names.length > 1) initials += names[1][0].toUpperCase();
  return initials;
}

String capitalizeEachWord(String text) {
  return text
      .split(' ')
      .map((word) {
        if (word.isEmpty) return word;
        return word[0].toUpperCase() + word.substring(1);
      })
      .join(' ');
}

Future<String?> getFcmToken() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    String? token = await messaging.getToken();
    return token;
  } else {
    print("User declined or has not accepted permission");
    return null;
  }
}
