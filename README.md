#  Flight Booking App

A modern and intuitive Flutter-based mobile application for booking airline tickets and hotel accommodations. Built with clean architecture principles and state management using GetX.

## Features

- **Flight Booking**: Search and book airline tickets with detailed flight information
- **Hotel Booking**: Browse and reserve hotel accommodations
- **Booking Management**: View and manage your upcoming flights and hotel reservations
- **User Profile**: Personalized user experience with profile management
- **Real-time Data**: Dynamic content loading with shimmer effects for better UX
- **Responsive Design**: Optimized for various screen sizes and orientations

##  Tech Stack

- **Framework**: Flutter (Dart)
- **State Management**: GetX for reactive state management
- **UI Components**: Material Design with custom styling
- **Icons**: FluentUI Icons for modern iconography
- **Layout**: Responsive design with custom layout utilities
- **Architecture**: MVC pattern with separate controllers and repositories

## App Structure

- **Home Screen**: Welcome dashboard with upcoming flights and quick search
- **Search Screen**: Advanced flight and hotel search with filters
- **Bookings Screen**: Manage existing reservations and tickets
- **Profile Screen**: User account and preferences

##  Project Architecture

```
lib/
├── controllers/     # Business logic and state management
├── models/         # Data models for flights, hotels, and tickets
├── screens/        # UI screens and pages
├── widgets/        # Reusable UI components
├── utils/          # Utility functions and constants
├── data/           # API clients and repositories
└── shimmer/        # Loading state components
```

## Key Features

- **Modern UI/UX**: Clean, intuitive interface with smooth animations
- **Cross-platform**: Works on iOS, Android, and web platforms
- **Scalable Architecture**: Easy to extend and maintain
- **Performance Optimized**: Efficient data loading and rendering
- **Accessibility**: Built with accessibility best practices

## Screenshots

The app includes beautiful UI components with:
- Custom bottom navigation
- Shimmer loading effects
- Responsive card layouts
- Modern typography and spacing

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Connect your device or emulator
4. Run `flutter run` to start the app

## Requirements

- Flutter SDK: ^3.7.2
- Dart SDK: Latest stable version
- Android Studio / VS Code with Flutter extensions

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
