# edutec_hub
This is a tutoring school system built with Flutter.

## Flutter Version
- 3.24.3 (stable)

## Framework & Libraries
- Bloc state management
- Dio & Retrofit for API
- go_router for route config
- easy_localization for multiple languages

## Directory Structure
/
└─ lib/                    # Main source code
├─ data/               # Data layer
│  ├─ models/          # Data models
│  └─ repositories/    # Data access
├─ presentation/       # Presentation layer
│  ├─ screens/         # Full pages
│  └─ ui/              # UI components
├─ state_management/   # State management
│  ├─ blocs/
│  └─ cubit/
├─ config/             # Configuration
├─ theme/              # Theme settings
└─ utils/              # Utilities


## Generate Files Command
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs