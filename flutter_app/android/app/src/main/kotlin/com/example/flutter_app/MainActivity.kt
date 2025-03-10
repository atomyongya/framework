package com.example.flutter_app

import android.os.Bundle
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.helpscout.beacon.ui.BeaconActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    private final val channel = "flutter_app.app/beacon_chat_bot"
    private final val beaconChatBot = BeaconChatBot()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        beaconChatBot.onCreate();
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            handleMethodCall(call, result)
        }
    }


    private fun handleMethodCall(call: MethodCall, result: MethodChannel.Result) {
        try{
            when(call.method) {
                "openChatBot" -> {
                    BeaconActivity.open(this)
                    result.success("Beacon Created")
                }
                else -> result.notImplemented()
            }
        }catch (e: Exception){
            result.error("ERROR", e.localizedMessage, null)
        }
    }
}

