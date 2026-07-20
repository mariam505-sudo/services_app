# Home Services App

## Flutter Version
Flutter 3.44.4

## Packages Used
- gap
- flutter
- cupertino_icons

## Project Structure

lib
│
├── core
│   ├── constants
│   ├── theme
│   └── utils
│
├── features
│   ├── auth
│   │
│   └── home
│       ├── data
│       │   └── dummy_data.dart
│       │
│       ├── domain
│       │   └── models
│       │       └── service_model.dart
│       │
│       └── presentation
│           ├── screens
│           │   ├── home_screen.dart
│           │   ├── services_list_screen.dart
│           │   ├── detail_screen.dart
│           │   ├── booking_screen.dart
│           │   ├── profile_screen.dart
│           │   └── main_screen.dart
│           │
│           └── widgets
│               ├── service_card.dart
│               ├── feedback_card.dart
│               ├── mini_card.dart
│               ├── category_chip.dart
│               └── search_bar.dart
│
└── main.dart
