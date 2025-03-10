import Flutter
import UIKit
import Beacon

@main
@objc class AppDelegate: FlutterAppDelegate {
  var beaconSettings: HSBeaconSettings?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let beaconChatBotChannel = FlutterMethodChannel(
      name: "flutter_app.app/beacon_chat_bot",
      binaryMessenger: controller.binaryMessenger)
    beaconChatBotChannel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
      switch call.method {
        case "openChatBot":
          self?.openChatBot(result: result)

        case "clearBeaconChat":
            self?.clearBeaconChat(result: result)

        default:
            result(FlutterMethodNotImplemented)
      }
    })

    GeneratedPluginRegistrant.register(with: self)
    beaconSettings = HSBeaconSettings(beaconId: "")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func openChatBot(result: FlutterResult) {
    guard let settings = beaconSettings else { return }
    HSBeacon.open(settings)
  }

   private func clearBeaconChat(result: FlutterResult) {
    guard let settings = beaconSettings else { return }
    HSBeacon.logout()
  }
}
