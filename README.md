# flutter_app

A cross-platform Flutter application.

## Features

- Modern UI with Material Design
- Supports Android, iOS, Web, Windows, macOS, and Linux
- Uses packages: `lottie`, `shared_preferences`, `flutter_launcher_icons`, `http`, `cupertino_icons`

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart SDK (included with Flutter)
- IDE: [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. Clone the repository:
   ```sh
   git clone <your-repo-url>
   cd flutter_app
   ```

2. Install dependencies:
   ```sh
   flutter pub get
   ```

3. Run the app:
   - For mobile/web:
     ```sh
     flutter run
     ```
   - For desktop (Windows/macOS/Linux):
     ```sh
     flutter run -d windows   # or macos, linux
     ```

### Project Structure

- `lib/` - Main Dart source code
- `assets/` - Images and other assets
- `android/`, `ios/`, `web/`, `windows/`, `macos/`, `linux/` - Platform-specific code
- `test/` - Unit and widget tests

### Useful Commands

- Analyze code:
  ```sh
  flutter analyze
  ```
- Run tests:
  ```sh
  flutter test
  ```
- Build release:
  ```sh
  flutter build apk        # Android
  flutter build ios        # iOS
  flutter build web        # Web
  flutter build windows    # Windows
  flutter build macos      # macOS
  flutter build linux      # Linux
  ```

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
