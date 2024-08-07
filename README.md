# hibank_test

A new Flutter project.

## Getting Started

1. Clone this project
2. Open the project in your IDE (Android studio or VS Code)
3. Get all packages using

```
flutter pub run
```

4. Generate files that depend on generated files. You may run this command in your CLI

```
flutter pub run build_runner build --delete-conflicting-outputs
```

5. Run this project to your device/emulator


## Dependencies

Here's a breakdown of the project's dependencies and their roles:

- **`flutter`:** The core Flutter framework for building cross-platformmobile applications.
- **`cupertino_icons`:** Provides a set of Cupertino-style icons for a consistent look and feel across iOS and Android.
- **`cloud_firestore`:** Enables seamless integration with Cloud Firestore, a NoSQL cloud database for storing and syncing data.
- **`dio`:** A powerful HTTP client for making network requests, simplifying API interactions.
- **`firebase_core`:** Initializes Firebase services within the Flutter app, providing access to various Firebase features.
- **`firebase_auth`:** Facilitates user authentication using Firebase Authentication, supporting various authentication methods.
- **`freezed_annotation`:** Generates immutable data classes using the Freezed package, promoting code safety and maintainability.
- **`get`:** A lightweight and powerful state management solution for Flutter, simplifying data flow and UI updates.
- **`get_it`:** A service locator for dependency injection, improving code organization and testability.
- **`google_sign_in`:** Flutter plugin for Google Sign-In, a secure authentication system for signing in with a Google account.
- **`injectable`:** Enhances dependency injection with annotations and code generation, reducing boilerplate.
- **`json_annotation`:** Facilitates JSON serialization and deserialization, enabling easy data exchange with APIs.
- **`json_serializable`:** Generates code for converting Dart objects to and from JSON format.
- **`mockito`:** A mocking framework for creating mock objects in unit tests, isolating components for better testing.
- **`pull_to_refresh_flutter3`:** Adds a pull-to-refresh feature to scrollable widgets, enhancing user experience.
- **`shimmer`:** Creates a shimmering effect for loading placeholders, providing a visually appealing loading experience.

## Dev Dependencies

These dependencies are used specifically for development and testing:

- **`flutter_test`:** The official Flutter testing framework for writing unit, widget, and integration tests.
- **`build_runner`:** Automates code generation tasks, such as generating Freezed classes and Injectable dependencies.
- **`flutter_lints`:** A static analysis tool that enforces best practices and code style guidelines.
- **`freezed`:** Generates immutable data classes with support for value equality, copyWith, and more.
- **`injectable_generator`:** Generates code for dependency injection using the Injectable package.

Here's breakdown application development flow:

Create a Firebase project
Setup Firebase build project extension:
    Setup firebase auth
        Setup firebase auth by email
        Setup firebase auth by google
    Setup firebase firestore
Setup Flutter project library /package /depedencies
Integrate Firebase into flutter using Firebase CLI
Setup flutter firebase core
    Setup into utils : firebase_utils.dart
Setup flutter firebase auth for signin with google
    Setup info.plist for ios
    Setup android sha-1 for debbug app apk
        add finger print into Firebase projects setup
        re init firebase
Setup di (deppedency injection)
    Setup di modules
Setup data layer
    create model data
    create remote source
Setup domain layer
    create entity data
    create repository
        implement the repository into data layer
    create mapper file if its needed to convert data from domain layer to data layer
    create usecase
Setup presentation layer

done