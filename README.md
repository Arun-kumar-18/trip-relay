# trip-relay

trip-relay is a Flutter-based trip guide and trip booking app for Android and iOS.

## Overview

trip-relay helps travelers discover places, plan itineraries, and book shared or group trips.

It helps users:

- Explore destinations and local highlights.
- Discover popular places in each city.
- Check star ratings and reviews for places.
- Get guided trip suggestions based on interests.
- Find hotels, restaurants, and available hotel rooms.
- Book trips and join shared travel plans.
- Organize travel details in one place.

If you want a simple way to plan, guide, and book your next journey, trip-relay is built for you.

## App Purpose

The main purpose of trip-relay is to make trip planning and booking easier.

- Travelers discover better places and experiences.
- Users can book trips faster with less planning effort.
- Friends or groups can plan and share trip details together.

## Key Features

- Destination Discovery: Explore destinations, attractions, and activity ideas.
- Popular Places Guide: View top places to visit in each location.
- Ratings and Reviews: Check star ratings for attractions, hotels, and restaurants.
- Hotel and Room Search: Browse hotels and available room options.
- Restaurant Discovery: Find restaurants by area, cuisine, and ratings.
- Smart Trip Guide: Get curated suggestions for places to visit.
- Trip Booking: Book individual or shared/group trips.
- Itinerary View: Manage your day-wise travel plan in one flow.
- Trip Sharing: Share trip plans with friends or co-travelers.
- Live Location (Optional): Track trip progress for better coordination.

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
