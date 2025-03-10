import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/buttons/app_button.dart';
import 'package:flutter_app/cores/services/chat_bot/base_chat_bot_service.dart';
import 'package:flutter_app/cores/services/chat_bot/beacon_service.dart';

class HomeView extends StatefulWidget {
  static const String route = '/';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MethodChannel platform = MethodChannel('flutter_app.app/beacon_chat_bot');
  late BaseChatBotService _chatBotService;
  @override
  void initState() {
    super.initState();
    _chatBotService = BeaconService(platform: platform);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // AppButton(
            //   onTap: () {},
            //   text: 'Notification',
            // ),
            AppButton(
              onTap: () {
                _chatBotService.clearChat();
              },
              text: 'Clear Beacon Chat',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _chatBotService.openChatBot();
        },
        child: Icon(
          CupertinoIcons.chat_bubble,
        ),
      ),
    );
  }
}
