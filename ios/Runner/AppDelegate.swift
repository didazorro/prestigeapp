import UIKit
import Flutter
import GoogleMaps
import Firebase
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GMSServices.provideAPIKey(Environment.googleApiKeyIos)
        GeneratedPluginRegistrant.register(with: self)
        if #available(iOS 10.0, *) {
            application.applicationIconBadgeNumber = 0 // Clear Badge Counts
        }
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func application(_ application: UIApplication,
                              didReceiveRemoteNotification notification: [AnyHashable : Any],
                              fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        if Auth.auth().canHandleNotification(notification) {
            completionHandler(.noData)
            return
        }
        
        super.application(application, didReceiveRemoteNotification: notification, fetchCompletionHandler: completionHandler)
    }
    
    override func application(_ application: UIApplication, open url: URL,
                              options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        if Auth.auth().canHandle(url) {
            return true
        }
        
        return super.application(application, open: url, options: options)
    }
}
