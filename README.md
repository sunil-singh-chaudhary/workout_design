# Fitness Pro

A new Flutter project.

## Getting Started

1. For running in development mode write this command in terminal
   flutter run --flavour development --target lib/flavour_enviornment/main_development

1. lib folder inside it create a flavour_enviornmnet folder inside it we have different runnning folder like for main_development folder for runnig in develop or debug mode same for othere you have to just change the #flutter run --flavour production --target lib/flavour_enviornment/main_production or for stagging
2. flutter run --flavour stagging --target lib/flavour_enviornment/main_stagging

So i used ChangeNotifier for checking it all over app, where i have to use it

1. # For Android in build.gradle after buildType add the below lines of Flavours
     flavorDimensions 'default'
    productFlavors {
        production {
            dimension 'default'
            resValue "string", "app_name", "FITNESS PRODUCTION"
        }
        development {
            dimension 'default'
            applicationIdSuffix '.dev'
            versionNameSuffix '.dev'
            resValue "string", "app_name", "FITNESS.DEV"
        }

        staging {
            dimension 'default'
            applicationIdSuffix '.stg'
            versionNameSuffix '.stg'
            resValue "string", "app_name", "FITNESS.STG"
        }
    }


2. # vscode create a new launch.json using ctrl+shift+D and copy paste

{
    "version": "0.2.0",
    "configurations": [
      {
        "name": "DEV | DEBUG",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_development.dart",
        "args": [
          "--flavor",
          "development",
          "--target",
          "lib/flavour_enviornment/main_development.dart"
        ],
        "flutterMode": "debug"
      },
      {
        "name": "DEV | RELEASE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_development.dart",
        "args": [
          "--flavor",
          "development",
          "--target",
          "lib/flavour_enviornment/main_development.dart"
        ],
        "flutterMode": "release"
      },
      {
        "name": "DEV | PROFILE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_development.dart",
        "args": [
          "--flavor",
          "development",
          "--target",
          "lib/flavour_enviornment/main_development.dart"
        ],
        "flutterMode": "profile"
      },
      {
        "name": "STG | DEBUG",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_staging.dart",
        "args": [
          "--flavor",
          "staging",
          "--target",
          "lib/flavour_enviornment/main_staging.dart"
        ],
        "flutterMode": "debug"
      },
      {
        "name": "STG | RELEASE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_staging.dart",
        "args": [
          "--flavor",
          "staging",
          "--target",
          "lib/flavour_enviornment/main_staging.dart"
        ],
        "flutterMode": "release"
      },
      {
        "name": "STG | PROFILE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_staging.dart",
        "args": [
          "--flavor",
          "staging",
          "--target",
          "lib/flavour_enviornment/main_staging.dart"
        ],
        "flutterMode": "profile"
      },
      {
        "name": "PROD | DEBUG",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_production.dart",
        "args": [
          "--flavor",
          "production",
          "--target",
          "lib/flavour_enviornment/main_production.dart"
        ],
        "flutterMode": "debug"
      },
      {
        "name": "PROD | RELEASE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_production.dart",
        "args": [
          "--flavor",
          "production",
          "--target",
          "lib/flavour_enviornment/main_production.dart"
        ],
        "flutterMode": "release"
      },
      {
        "name": "PROD | PROFILE",
        "request": "launch",
        "type": "dart",
        "program": "lib/flavour_enviornment/main_production.dart", #path set as you created change this
        "args": [
          "--flavor",
          "production",
          "--target",
          "lib/flavour_enviornment/main_production.dart"
        ],
        "flutterMode": "profile"
      },
    ]
  }
  

  # For generating released apk or bundle when you dont have main.dart instead you have main_production.dart then run command is like 

   flutter build appbundle or apk  --target lib/flavour_enviornment/main_production.dart

   add sign Properties in app/build.gradle and create a file name key.properties 
   and add below lines 
   storePassword= 123456789
   keyPassword= 123456789
   keyAlias=upload
   storeFile= F:\\demoflutteerWorkspace\\designdemoworkout\\android\\app\\upload-keystore.jks store this file in this place inside android/app/upload-keystrore.jks

   # for generating jks file use below command

   keytool -genkey -v -keystore F:\demoflutteerWorkspace\designdemoworkout\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload



