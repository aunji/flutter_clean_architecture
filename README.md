# flutter_clean_architecture

Flutter Getx Clean Architecture Starter Project

## Project Structure

```javascript
lib/
├── main.dart
├── core
│   ├── bindings
│   │   └── initial_bindings.dart        # Initial bindings (services, etc.)
│   ├── routes
│   │   └── app_pages.dart               # Manages app routes
│   └── theme
│       ├── theme_service.dart           # Theme management
│       └── app_themes.dart              # Defines light/dark themes
├── modules
│   ├── home
│   │   └── views
│   │       └── home_view.dart           # Home screen
│   └── user
│       ├── controllers
│       │   └── user_controller.dart     # Manages API calls and user state
│       ├── models
│       │   └── user_model.dart          # Represents user data model
│       ├── views
│       │   └── user_view.dart           # UI for user data
│       └── bindings
│           └── user_binding.dart        # Injects UserController dependencies
├── services
│   └── api_service.dart                 # API service for GetConnect
└── translations
    ├── en_us.dart
    ├── de_de.dart
    ├── th_th.dart
    ├── cn_cn.dart
    └── translations.dart
```

## Features

- Dark and Light Theme Support
- Routing Management
- User Data Fetching from JSONPlaceholder API
- Localization Support for English, German, and Thai

## Getting Started

### Prerequisites

Make sure you have Flutter installed on your machine. You can check the installation guide on the [official Flutter website](https://flutter.dev/docs/get-started/install).

### Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/aunji/flutter_clean_architecture.git
cd flutter_clean_architecture
```
