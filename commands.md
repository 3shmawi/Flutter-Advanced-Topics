# Fastlane Distribution
# -> fastlane android firebase_distribution-

# Native Splash Creation
# -> dart run flutter_native_splash:create --path=flutter_native_splash.yaml

# Build runner for Retrofit & json_serializable & freezed
# -> dart run build_runner build --delete-conflicting-outputs

# Run Flavor
# DEBUG
# -> flutter run --flavor FLAVOR_NAME --target PATH_FLAVOR_MAIN
# -> ex). flutter run --debug --flavor development --target lib/main_development.dart
# RELEASE
# -> flutter build apk --release --flavor FLAVOR_NAME --target PATH_FLAVOR_MAIN --no-tree-shake-icons
# -> ex). flutter build apk --release --flavor production --target lib/main_production.dart --no-tree-shake-icons