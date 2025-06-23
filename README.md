# InfoBot Flutter App

InfoBot is a modern AI chatbot mobile application built with Flutter. It features a clean, intuitive UI and demonstrates best practices in app structure, widget organization, and navigation.

## Features

- **Home Screen:**  
  - Welcome message and user profile avatar  
  - "New Chat" button to start a new AI conversation  
  - Chat history and popular prompts  
  - Explore section for suggested actions

- **Chat AI Screen:**  
  - Conversational chat UI between user and bot  
  - User and bot avatars (using local assets)  
  - Copy, like, and dislike chat messages  
  - Chat input bar for sending messages

- **Clean Architecture:**  
  - Separate files for screens, widgets, and static data  
  - Easy to extend and maintain

## Screenshots

<p float="left">
  <img src="assets/screenshot_home.png" width="220">
  <img src="assets/screenshot_chat.png" width="220">
</p>

*(Replace with your screenshots if desired)*

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/infobot-flutter.git
cd infobot-flutter
```

### 2. Add Assets

Place these images in the `assets/` directory:

- `assets/user.png`
- `assets/bot.png`
- `assets/avatar.png`

Update your `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/user.png
    - assets/bot.png
    - assets/avatar.png
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the app

```bash
flutter run
```

## File Structure

```
lib/
 ├── main.dart               # App entry point and navigation
 ├── home_screen.dart        # Home screen
 ├── chat_screen.dart        # Chat screen
 ├── widgets.dart            # Shared widgets
 └── chat_data.dart          # Static data/constants
assets/
 ├── user.png
 ├── bot.png
 └── avatar.png
```

## Customization

- Replace avatars and screenshots with your branding.
- Extend the chat logic and backend as needed.
- Add more screens or features for your use-case.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Made with ❤️ using Flutter**
