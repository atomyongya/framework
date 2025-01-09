import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/extensions/date_time_extension.dart';
import 'package:flutter_web/cores/utils/components/texts/key_value_text.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({super.key});

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              value: DateTime.now().second.toDouble()/60,
              backgroundColor: AppColors.light,
            ),
            SizedBox(height: 32),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'Default Date Time',
              value: DateTime.now().toString(),
            ),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'Default Time Format',
              value: DateTime.now().timeFormat(),
            ),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'Default Date Time',
              value: DateTime.now().dateFormat(),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'UTC Date Time',
              value: DateTime.now().utc(),
            ),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'UTC Time Format',
              value: DateTime.now().utcTimeFormat(),
            ),
            KeyValueText(
              width: 400,
              idWidth: 140,
              id: 'UTC Date Format',
              value: DateTime.now().utcDateFormat(),
            ),
          ],
        ),
      ),
    );
  }
}
