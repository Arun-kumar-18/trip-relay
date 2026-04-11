# 🚀 Trip-Relay

**Trip-Relay** is a Flutter-based trip guide and booking application designed for both **Android and iOS** platforms. It helps users discover destinations, plan itineraries, and book trips—all in one place.

---

## 📌 Overview

Trip-Relay simplifies travel planning by combining discovery, guidance, and booking into a single seamless experience.

With Trip-Relay, users can:

- 🌍 Explore destinations and local highlights
- 📍 Discover popular attractions in each city
- ⭐ Check ratings and reviews
- 🧭 Get smart trip suggestions based on interests
- 🏨 Find hotels, restaurants, and available rooms
- 👥 Book solo or shared/group trips
- 📅 Organize complete travel plans in one place

If you're looking for a simple and efficient way to plan your next journey, **Trip-Relay is built for you**.

---

## 🎯 App Purpose

The main goal of Trip-Relay is to make travel **easy, organized, and collaborative**.

- Helps travelers discover better places and experiences
- Reduces planning effort with smart suggestions
- Enables group travel planning and sharing
- Provides a centralized platform for all travel needs

---

## ✨ Key Features

### 🌍 Destination Discovery

Explore cities, attractions, and travel ideas with ease.

### 📌 Popular Places Guide

View top-rated and trending places in each destination.

### ⭐ Ratings & Reviews

Make informed decisions with user ratings and reviews.

### 🏨 Hotel & Room Search

Browse hotels and check room availability in real-time.

### 🍽️ Restaurant Discovery

Find restaurants by location, cuisine, and ratings.

### 🧭 Smart Trip Guide

Get curated travel suggestions tailored to user interests.

### 🎟️ Trip Booking

Book individual trips or join shared/group travel plans.

### 📅 Itinerary Management

Plan and manage day-wise travel schedules.

### 👥 Trip Sharing

Collaborate and share travel plans with friends.

### 📍 Live Location (Optional)

Track travel progress for better coordination.

---

## 🛠️ Tech Stack

- **Framework:** Flutter (3.24.5)
- **IDE:** Android Studio (Giraffe | 2022.3.1 Patch 1)
- **Language:** Dart
- **Java Version:** OpenJDK 17.0.14

---

## 📱 Platform Support

- ✅ Android
- ✅ iOS

---

## 🚀 Getting Started

## Tools and Versions

- Flutter: 3.24.5
- Android Studio: Giraffe | 2022.3.1 Patch 1
- Java: OpenJDK 17.0.14

## Install and Set Up Flutter

https://docs.flutter.dev/get-started/install

## VS Code Setup

Install Flutter extension for VS Code:

https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter

More info:

https://docs.flutter.dev/tools/vs-code

## Getting Started

To start using trip-relay on your local machine, follow these steps:

1. Clone the repository.

   ```bash
   git clone git@github.com:ARUN0018/trip-relay.git
   ```

2. Move to the project directory.

   ```bash
   cd trip-relay
   ```

3. Install dependencies.

   ```bash
   flutter pub get
   ```

4. Run build runner.

   ```bash
   dart run build_runner build -d
   ```

5. Start the app.

   ```bash
   flutter run
   ```

6. Dev environment is selected by default. To override, pass an env file.

   ```bash
   flutter build apk --dart-define-from-file=".env/dev.json"
   ```

## Development on an Emulator

- Install Android Studio and create an Android Virtual Device (AVD).
- Select the virtual device from the bottom-right status bar in VS Code.
  ![Select Device](https://docs.flutter.dev/assets/images/docs/tools/vs-code/device_status_bar.png)
- See [Running and Debugging](https://docs.flutter.dev/tools/vs-code#running-and-debugging).
- Click Run > Start Debugging from the VS Code toolbar.

## Android Deployment

### Keystore Update

Update the android/key.properties file with production keystore values before creating release builds.

### Local Deployment

Build and install the Android APK on a local device:

- `flutter build apk --dart-define-from-file=".env/dev.json"`
- Connect the phone in USB debugging mode, then run `flutter install`.

### Publish to Google Play Store

- `flutter build appbundle --dart-define-from-file=".env/prod.json"`
- Upload the generated app bundle to Google Play Console.
