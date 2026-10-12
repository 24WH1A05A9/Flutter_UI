# Student E-Portfolio App

A responsive Flutter and Dart portfolio UI for the UID Lab project. It includes a validated demo login, academic details, course certifications, extracurricular activities, an auto-advancing achievement slideshow, and logout.

## Run the app

Install the Flutter SDK. From this folder, fetch the packages and launch the web app:

```powershell
flutter pub get
flutter run -d chrome
```

To run on an Android emulator, install Android Studio, start an emulator, and use `flutter run`.

## Profile and assets

The profile name, roll number, education, skills, projects, and achievements are in `lib/main.dart`. The login is a UI demonstration: it checks that both fields are non-empty and does not authenticate against a server.

The profile photo is `assets/Profile/Photo.jpg`. The five PDF certificates in `assets/certificates/` can be opened from the Skills cards and the animated Awards reel. The reel does not currently play background music or video.

## GitHub submission

Create a GitHub repository, commit the app source, and submit the repository URL. Do not commit generated build output or local Android SDK paths.
