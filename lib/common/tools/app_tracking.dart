import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:inspireui/utils/logs.dart';

class AppTracking {
  static Future<bool> requestAuthorization() async {
    var status;
    // If the system can show an authorization request dialog
    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.notDetermined) {
      // Request system's tracking authorization dialog
      status = await AppTrackingTransparency.requestTrackingAuthorization();
    }
    if (status == TrackingStatus.authorized) {
      printLog(':::::::::[AppTrackingTransparency] Tracking authorized');
      return true;
    }

    printLog(':::::::::[AppTrackingTransparency] Tracking not authorized');
    return false;
  }
}
