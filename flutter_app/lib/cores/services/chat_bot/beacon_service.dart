import 'dart:async';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:flutter_app/cores/services/chat_bot/base_chat_bot_service.dart';

class BeaconService extends BaseChatBotService {
  final MethodChannel platform;

  const BeaconService({
    required this.platform,
  });

  @override
  Future<void> openChatBot() async {
    try {
      await platform.invokeMethod<String>('openChatBot');
    } catch (e, stackTrace) {
      log(e.toString());
      log(stackTrace.toString());
    }
  }

  @override
  Future<void> clearChat() async {
    try {
      await platform.invokeMethod<String>('clearBeaconChat');
    } catch (e, stackTrace) {
      log(e.toString());
      log(stackTrace.toString());
    }
  }
}
