import 'dart:isolate';
import 'dart:ui';

import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/ui/helper/notification_helper.dart';

final ReceivePort port = ReceivePort();

class BackgroundService {
  static BackgroundService? _instance;
  static const String _isolateName = 'isolate';
  static SendPort? _uiSendPort;

  BackgroundService._internal() {
    _instance = this;
  }

  factory BackgroundService() => _instance ?? BackgroundService._internal();

  void initializeIsolate() {
    IsolateNameServer.registerPortWithName(
      port.sendPort,
      _isolateName,
    );
  }

  static Future<void> callback() async {
    try {
      print('Alarm fired!');
      final NotificationHelper notificationHelper = NotificationHelper();
      var result = await ApiService().getListRestaurants();
      if (result != null && result.restaurants!.length > 0) {
        await notificationHelper.showNotification(
          flutterLocalNotificationsPlugin,
          result,
        );
      }
    } catch (e) {
      print("error");
      print(e);
    }

    _uiSendPort ??= IsolateNameServer.lookupPortByName(_isolateName);
    _uiSendPort?.send(null);
  }
}
