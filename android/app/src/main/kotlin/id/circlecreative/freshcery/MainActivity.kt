package id.circlecreative.freshcery

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
//import io.flutter.plugins.firebase.messaging.FirebaseMessagingPlugin

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        //flutterEngine.plugins.add(FirebaseMessagingPlugin())
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
