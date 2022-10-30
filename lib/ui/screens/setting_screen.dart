import 'dart:io';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/provider/provider_scheduling_resto.dart';
import 'package:flutter_application_1/ui/helper/background_service.dart';
import 'package:flutter_application_1/ui/widgets/custom_dialog.dart';
import 'package:flutter_application_1/ui/widgets/multi_platform.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  static const String settingsTitle = 'Settings';

  const SettingScreen({Key? key}) : super(key: key);

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          settingsTitle,
          style: navigationTextStyle,
        ),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          settingsTitle,
          style: navigationTextStyle,
        ),
      ),
      child: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    final schedulerState = Provider.of<SchedulingProvider>(context);

    return Consumer<PreferencesProvider>(
      builder: (context, provider, child) {
        return ListView(
          children: [
            Material(
              child: ListTile(
                title: const Text('Dark Theme'),
                trailing: Switch.adaptive(
                  value: provider.isDarkTheme,
                  onChanged: (value) {
                    provider.enableDarkTheme(value);
                  },
                ),
              ),
            ),
            Material(
              child: ListTile(
                title: const Text('Scheduling Resto'),
                trailing: Consumer<SchedulingProvider>(
                  builder: (context, scheduled, _) {
                    return Switch.adaptive(
                      value: provider.isDailyRestoActive,
                      onChanged: (value) async {
                        if (Platform.isIOS) {
                          customDialog(context);
                        } else {
                          scheduled.scheduledResto(value);
                          provider.enableDailyResto(value);
                        }
                      },
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Alarm with Delayed (Test)',
              ),
              onPressed: () async {
                schedulerState.scheduledResto(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MultiPlatform(
      androidStyle: _buildAndroid,
      iosStyle: _buildIos,
    ));
  }
}
