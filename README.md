# DayCare

A comprehensive daycare management and booking platform built with Flutter, connecting parents, nursery owners, and caregivers through an intuitive end-to-end solution.

## 📱 Overview

Daycare revolutionizes childcare management by providing a seamless platform for discovering, booking, and managing daycare services. Built with modern Flutter architecture using BLoC pattern and dependency injection, the app offers real-time communication, interactive map-based discovery, and comprehensive management tools for all stakeholders.

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

## 🎨 Media & Design Assets

### 📱 App Design Showcase

Our app design assets are organized in the `assets/media/` directory, featuring comprehensive UI/UX designs:

![App Logo](assets/media/Framed%20DayCare.png)

#### Complete Design Flow (1-12)
The following SVG files showcase the complete user journey and app interface:

| Screen | Design Asset | Description |
|--------|--------------|-------------|
| 1 | ![Screen 1](assets/media/1.svg) | Welcome & Onboarding Screen |
| 2 | ![Screen 2](assets/media/2.svg) | User Authentication & Login |
| 3 | ![Screen 3](assets/media/3.svg) | Home Dashboard Overview |
| 4 | ![Screen 4](assets/media/4.svg) | Map-Based Daycare Discovery |
| 5 | ![Screen 5](assets/media/5.svg) | Daycare Details & Information |
| 6 | ![Screen 6](assets/media/6.svg) | Booking & Reservation Flow |
| 7 | ![Screen 7](assets/media/7.svg) | Parent Dashboard & Activity Timeline |
| 8 | ![Screen 8](assets/media/8.svg) | Real-time Chat Interface |
| 9 | ![Screen 9](assets/media/9.svg) | Owner/Staff Management Portal |
| 10 | ![Screen 10](assets/media/10.svg) | Analytics & Reports |
| 11 | ![Screen 11](assets/media/11svg.svg) | Settings & Profile Management |
| 12 | ![Screen 12](assets/media/12.svg) | Notifications & Alerts |

#### Additional Design Assets
- **[Alternative Onboarding](assets/media/1.1.svg)** - Enhanced onboarding experience

### 📁 Complete Asset Organization

```
assets/                    # Original design assets
└── media/
    ├── 1.svg - 12.svg     # Complete app design flow (numbered sequence)
    ├── 1.1.svg            # Alternative/enhanced designs
    └── Framed DayCare.png # App logo and branding

media/                     # Organized media structure
├── README.md              # Media guidelines and documentation
├── screenshots/           # App UI designs (copied from assets)
│   ├── 1.svg - 12.svg    # Numbered design sequence
│   └── 1.1.svg           # Alternative designs
├── designs/
│   ├── ui_mockups/       # High-fidelity design mockups
│   ├── wireframes/       # Low-fidelity layout designs
│   └── style_guide/      # Design system documentation
├── logos/                # App branding assets
│   └── Framed DayCare.png # Main app logo
└── videos/               # Demo videos and promotional content
```

### 🔄 Asset Workflow

1. **Original Assets**: Stored in `assets/media/` for app bundle inclusion
2. **Documentation Assets**: Copied to `media/` for README and documentation
3. **Numbered Sequence**: SVG files 1-12 represent the complete user journey
4. **Version Control**: Alternative designs use decimal notation (e.g., 1.1.svg)

### 🎯 Design Highlights

Our design system features:
- **Intuitive User Flow**: Logical progression from onboarding to core features
- **Consistent Visual Language**: Unified design patterns across all screens
- **Modern UI Components**: Contemporary interface elements and interactions
- **Accessibility Focus**: Clear visual hierarchy and inclusive design principles
- **Responsive Design**: Optimized layouts for various device sizes

### 📋 Using Design Assets

#### For Development
- Reference numbered SVGs (1-12) for implementation guidance
- Follow the established design patterns and component styles
- Maintain visual consistency across the application

#### For Documentation
- Link to specific design assets when documenting features
- Use the complete flow for user journey documentation
- Reference designs in technical specifications and requirements

## 🏗️ Architecture

The app follows clean architecture principles with:
- **BLoC Pattern** for state management
- **Repository Pattern** for data abstraction
- **Dependency Injection** using GetIt
- **Modular Structure** for scalability and maintainability


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

### 3. Run the App
```bash
flutter run
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


