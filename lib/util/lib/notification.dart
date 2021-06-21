import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationUtil {
  /*
    # Sample format

    {
        "notification": {
            "title": "Title goes here...",
            "body": "Body goes here..."
        },
        "data": {
            "title": "Title goes here...",
            "body": "Body goes here...",
            "click_action": "FLUTTER_NOTIFICATION_CLICK",
            "is_background": "true",
            "content_available": "true"
        }
    }
  */

  FlutterLocalNotificationsPlugin? _plugin;

  NotificationUtil._internal();

  static final NotificationUtil _instance = NotificationUtil._internal();

  static NotificationUtil on() {
    return _instance;
  }

  void configLocalNotification(SelectNotificationCallback onSelectCallback) {
    if (_plugin == null) {
      _plugin = FlutterLocalNotificationsPlugin();
    }

    var initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('app_icon'),
      iOS: IOSInitializationSettings(),
    );

    _plugin!.initialize(
      initializationSettings,
      onSelectNotification: onSelectCallback,
    );
  }

  void showNotification(Map<String, dynamic> message) async {
    if (Platform.isAndroid &&
        message.containsKey('notification') &&
        message['notification'].containsKey('title') &&
        message['notification'].containsKey('body')) {
      var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'default_channel_id',
        'Default',
        'default description',
        playSound: true,
        enableVibration: true,
        importance: Importance.max,
        priority: Priority.high,
      );

      var iOSPlatformChannelSpecifics = IOSNotificationDetails();
      var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
      );

      await _plugin!.show(
        message.hashCode,
        message['notification']['title'].toString(),
        message['notification']['body'].toString(),
        platformChannelSpecifics,
      );
    }

    if (Platform.isIOS &&
        message.containsKey('title') &&
        message.containsKey('body') &&
        message.containsKey('id')) {
      var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'default_channel_id',
        'Default',
        'default description',
        playSound: true,
        enableVibration: true,
        importance: Importance.max,
        priority: Priority.high,
      );

      var iOSPlatformChannelSpecifics = IOSNotificationDetails(
        presentAlert: true,
        presentSound: true,
      );

      var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
      );

      await _plugin!.show(
        message.hashCode,
        message['title'].toString(),
        message['body'].toString(),
        platformChannelSpecifics,
      );
    }
  }
}
