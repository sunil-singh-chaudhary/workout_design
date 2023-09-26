# Fitness Pro

A  Flutter project.

## Getting Started

1. For running in development mode write the below cmd make sure your main_developemnt path is same where you placed command in terminal
```bash

   flutter run --flavour development --target lib/flavour_enviornment/main_development

```   

Inside lib folder create a flavour_enviornmnet folder inside it we have different runnning folder like for main_development folder for running in developedment Mode or debugmode same for othere lie ProductionMode you have to just change the 

## Deployment
```bash
#flutter run --flavour production --target lib/flavour_enviornment/main_production
```
## For stagging
```bash
flutter run --flavour stagging --target lib/flavour_enviornment/main_stagging  
```

## In Android , build.gradle and after buildType add the following  lines for Flavours
  
  ```bash
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

 ```

 
## vscode create a new launch.json using ctrl+shift+D and copy paste below code

  ```bash
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
  
```

  ## For generating or released apk or bundle when you dont have main.dart instead you have main_production.dart then run command is like 
  ```bash

     flutter build appbundle or apk  --target lib/flavour_enviornment/main_production.dart

```

## Now add signed Properties in app/build.gradle and create a file name key.properties and add below lines 
  ```bash


   storePassword= 123456789
   keyPassword= 123456789
   keyAlias=upload
   storeFile= F:\\demoflutteerWorkspace\\designdemoworkout\\android\\app\\upload-keystore.jks store this file in this place inside android/app/upload-keystrore.jks

```

   ## For generating jks file use below command

  ```bash

      keytool -genkey -v -keystore F:\demoflutteerWorkspace\designdemoworkout\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

```


