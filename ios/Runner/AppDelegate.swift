import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    if let window = self.window {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      if let sampleViewController = storyboard.instantiateViewController(withIdentifier: "SampleViewController") as? UIViewController {
        window.rootViewController = sampleViewController
        window.makeKeyAndVisible()
      }
    }

    // MethodChannel設定はここに追加するか、または全く不要な場合は削除してください。

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}