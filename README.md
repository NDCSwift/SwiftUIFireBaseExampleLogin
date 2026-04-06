# 🔥 SwiftUI Firebase Login Example

A SwiftUI app demonstrating email/password authentication with Firebase Auth — covering sign up, sign in, sign out, and auth state observation.

---

## 🤔 What this is

This project shows how to integrate Firebase Authentication into a SwiftUI app: adding the Firebase SDK via SPM, configuring `GoogleService-Info.plist`, creating and signing in users with `Auth.auth()`, and observing auth state changes to drive navigation between logged-in and logged-out views.

## ✅ Why you'd use it

- **Firebase Auth** — email/password sign-up and sign-in with error handling
- **Auth state listener** — `addStateDidChangeListener` drives SwiftUI view switching
- **MVVM pattern** — `AuthViewModel` manages auth state and exposes it to views
- **Sign out** — proper session cleanup with `try Auth.auth().signOut()`
- **SPM setup** — adds Firebase via Swift Package Manager (no CocoaPods)

## ⚠️ Setup Required

Add your own `GoogleService-Info.plist` from the [Firebase Console](https://console.firebase.google.com/) before building.

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/CXnThxHN1PQ)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIFireBaseExampleLogin.git
cd SwiftUIFireBaseExampleLogin
```

### 2. Add GoogleService-Info.plist
Download from your Firebase Console project and drag it into the Xcode project root.

### 3. Open in Xcode
- Double-click `FireBaseExampleLogin.xcodeproj`

### 4. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 5. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier matching your Firebase project.

---

## 🛠️ Notes

- Enable **Email/Password** as a sign-in provider in the Firebase Console.
- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+
- Firebase project with Email/Password auth enabled

---

📺 [Watch the guide on YouTube](https://youtu.be/CXnThxHN1PQ)
