# Fastlane integration steps 

1) cd android file
2) fastlane init  
3) fastlane add_plugin firebase_app_distribution 
4) android>fastlane>FastFile
   default_platform(:android)

   platform :android do
   desc "Lane for Android Firebase App Distribution"
   lane :firebase_distribution do
   sh "flutter clean"
   sh "flutter build apk --release --flavor production --target lib/main_production.dart --no-tree-shake-icons"
   firebase_app_distribution(
   app: "PROJECT APP ID", // after connect app to Firebase
   firebase_cli_token: "FIREBASE_CLI_TOKEN", // firebase login:ci
   android_artifact_type: "APK",
   android_artifact_path: "../build/app/outputs/flutter-apk/app-production-release.apk",
   testers: "a@gmail.com", "abc@gmail.com", // Testers Emails
   release_notes: "First Fastlane Firebase Distribution Flutter Adv!"
  )
  end
  end
5) fastlane android firebase_distribution  

