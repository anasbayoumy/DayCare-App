# Daycare First 🏫

A comprehensive daycare management and booking platform built with Flutter, connecting parents, nursery owners, and caregivers through an intuitive end-to-end solution.

## 📱 Overview

Daycare First revolutionizes childcare management by providing a seamless platform for discovering, booking, and managing daycare services. Built with modern Flutter architecture using BLoC pattern and dependency injection, the app offers real-time communication, interactive map-based discovery, and comprehensive management tools for all stakeholders.

## ✨ Key Features

### 🗺️ Map-Based Discovery
- **Interactive Google Maps Integration**: Search and discover daycares with visual map interface
- **Smart Filtering**: Filter by distance, ratings, availability, and custom preferences
- **AI-Driven Recommendations**: Intelligent suggestions based on user preferences and location

### 📅 Instant Booking & Management
- **Secure Spot Reservations**: Real-time booking with instant confirmation
- **Waitlist Management**: Automated waitlist handling and notifications
- **Payment Integration**: Secure payment processing for bookings
- **Capacity Analytics**: Real-time availability tracking and quota management

### 👨‍👩‍👧‍👦 Parent Dashboard
- **Live Activity Timeline**: Real-time updates on check-ins, meals, naps, and activities
- **Daily Summary Reports**: Comprehensive daily reports with photos and notes
- **In-App Chat**: Direct communication with caregivers and staff
- **Child Progress Tracking**: Monitor development milestones and activities

### 🏢 Owner & Staff Portal
- **Attendance Analytics**: Detailed insights into attendance patterns and trends
- **Reservation Management**: Approve/decline bookings and manage capacity
- **News & Events Publishing**: Share updates, announcements, and upcoming events
- **Health Checkup Workflows**: Track and manage child health records

### 💬 Real-time Communication
- **Instant Messaging**: Firebase Realtime Database powered chat system
- **Push Notifications**: Firebase Cloud Messaging for important alerts
- **Media Sharing**: Share photos, videos, and documents securely

## 🛠️ Tech Stack

### Frontend
- **Flutter** - Cross-platform mobile development framework
- **Dart** - Programming language
- **BLoC** - State management pattern for predictable state handling
- **GetIt** - Dependency injection for clean architecture

### Backend & Services
- **Firebase Authentication** - Secure user authentication and authorization
- **Cloud Firestore** - NoSQL database for scalable data storage
- **Firebase Realtime Database** - Real-time chat and live updates
- **Firebase Storage** - Media file storage and management
- **Firebase Cloud Functions** - Serverless backend logic
- **Firebase Cloud Messaging** - Push notifications

### Maps & Location
- **Google Maps Flutter SDK** - Interactive map integration
- **Location Services** - GPS and location-based features

## 🏗️ Architecture

The app follows clean architecture principles with:
- **BLoC Pattern** for state management
- **Repository Pattern** for data abstraction
- **Dependency Injection** using GetIt
- **Modular Structure** for scalability and maintainability

## 📋 Prerequisites

Before running this project, make sure you have:

- Flutter SDK (3.0.0 or higher)
- Dart SDK (2.17.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Firebase project setup
- Google Maps API key

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/daycarefirst.git
cd daycarefirst
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Firebase Setup
1. Create a new Firebase project
2. Add your Android/iOS app to the project
3. Download and place the configuration files:
   - `google-services.json` in `android/app/`
   - `GoogleService-Info.plist` in `ios/Runner/`

### 4. Configure Google Maps
1. Get a Google Maps API key from Google Cloud Console
2. Add the API key to:
   - `android/app/src/main/AndroidManifest.xml`
   - `ios/Runner/AppDelegate.swift`

### 5. Run the App
```bash
flutter run
```

## 📱 Supported Platforms

- ✅ Android (API 21+)
- ✅ iOS (iOS 11.0+)

## 🧪 Testing

Run the test suite:
```bash
flutter test
```

Run integration tests:
```bash
flutter test integration_test/
```

## 📦 Build

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support and questions:
- Email: support@daycarefirst.com
- Documentation: [Wiki](https://github.com/yourusername/daycarefirst/wiki)
- Issues: [GitHub Issues](https://github.com/yourusername/daycarefirst/issues)

## 🎨 Media & Design Assets

### App Screenshots
Place your app screenshots in the `media/screenshots/` directory:

```
media/
├── screenshots/
│   ├── home_screen.png
│   ├── map_discovery.png
│   ├── booking_flow.png
│   ├── parent_dashboard.png
│   ├── chat_interface.png
│   └── owner_portal.png
├── designs/
│   ├── ui_mockups/
│   ├── wireframes/
│   └── style_guide/
├── logos/
│   ├── app_icon.png
│   ├── logo_light.png
│   └── logo_dark.png
└── videos/
    ├── app_demo.mp4
    └── feature_highlights.mp4
```

### Design Resources
- **UI/UX Mockups**: High-fidelity design mockups
- **Wireframes**: Low-fidelity layout designs
- **Style Guide**: Color palette, typography, and component guidelines
- **App Icons**: Various sizes and formats for different platforms
- **Demo Videos**: App walkthrough and feature demonstrations

### Adding Media
To add new media assets:
1. Create the appropriate subdirectory in `media/`
2. Add your files with descriptive names
3. Update this README with links to new assets
4. Ensure all images are optimized for web viewing

---

**Built with ❤️ using Flutter**
