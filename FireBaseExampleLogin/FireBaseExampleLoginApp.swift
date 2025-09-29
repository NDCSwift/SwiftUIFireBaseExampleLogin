//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI
import FirebaseCore
import Firebase

// AppDelegate to handle Firebase configuration during app launch
class AppDelegate: NSObject, UIApplicationDelegate {
    
    // Called when the application has finished launching
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        // Configure Firebase when the app launches
        FirebaseApp.configure()
        return true
    }
}

// The main entry point of the FireBaseExampleLogin app
@main
struct FireBaseExampleLoginApp: App {
    // Integrates the AppDelegate to manage application lifecycle events
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            // Sets ContentView as the initial view of the app
            ContentView()
        }
    }
}
