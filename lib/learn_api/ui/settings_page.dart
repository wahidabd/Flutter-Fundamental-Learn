import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fundamental/learn_api/widgets/platform_widget.dart';

class SettingsPage extends StatelessWidget {
  static const String settingTitle = 'Settings';

  const SettingsPage({Key? key}) : super(key: key);

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(settingTitle),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(settingTitle),
      ),
      child: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView(
      children: [
        Material(
          child: ListTile(
            title: const Text('Dark Theme'),
            trailing: Switch.adaptive(
              value: false,
              onChanged: (value) {
                defaultTargetPlatform == TargetPlatform.iOS
                    ? showCupertinoDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: const Text('Cooming Soon!'),
                            content:
                                const Text('This feature will be coming soon!'),
                            actions: [
                              CupertinoDialogAction(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      )
                    : showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Coming Soon!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          );
                        },
                      );
              },
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
