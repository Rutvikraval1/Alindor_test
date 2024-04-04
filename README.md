# alindor_test

 [Download Demo APK](/assets/project_demo/demo.apk)

## Overview
This repository contains the code for a Flutter mobile application prototype developed as part of a test assignment. The assignment required the completion of two pages of a design provided in Figma, involving Google sign-in via Firebase on the first page and an "IndRecord" page on the second 
##
The project aims to demonstrate proficiency in front-end development, integration with Firebase authentication, audio recording functionality, 
(I have not found the open source of OpenAI)

## Screenshots

| Login       | Inrecord           |
| ------------- |:-------------:|
|<img src="/assets/project_demo/login_screen.jpg" width="200"/>| <img src="/assets/project_demo/inrecord.jpg" width="200"/> |

<img src="/assets/project_demo/inrecord2.jpg" width="200"/>

| Full Demo Video  |
| ------------- |
|<img src="/assets/project_demo/demoVideo.mp4" width="200"/>|





# Challenges Faced

## Integration with Firebase
Integrating Firebase authentication for Google sign-in required setting up Firebase project configurations, including adding the Firebase SDK to the project and handling authentication flows.

## Audio Recording
Implementing audio recording functionality on mobile devices involved dealing with various platform-specific APIs and ensuring compatibility across different Android versions and device types.

## UI/UX Design Implementation
Translating the design provided in Figma into a functional mobile app required attention to detail and ensuring consistency in layout, styling, and user interactions.
( All design create custom like box, progressbar or silder, etc. )

## Deliverables
### The project delivers an APK mobile app with two pages:
Google Sign-in Page: Allows users to sign in using their Google account via Firebase authentication.

IndRecord Page: Provides functionality for audio recording.

## Repository Structure

root
│   README.md
│   ...
└───lib
    │   main.dart
    └───screens
    │        │    login_screen.dart
    │        │    login_screen.dart
    │
    └───service
    │        │    fire_collection_all_name.dart
    │        │    firebase_auth.dart
    │        │    Firebase_collection.dart
    │        │    firebase_options.dart
    │        │    pref_manager.dart
    │ 
    └───utils
    │        │    app_locale.dart
    │        │    app_style.dart
    │        │    custColors.dart
    │   
    └───widgets


## How to Use
1. Clone the repository to your local machine.
2. Open the project in your preferred Android stuido or Vscode.
3. Follow the instructions in the development environment to set up Firebase configurations and design.
4. Build the project and generate the APK file.
5. Install the APK on an Android device for testing.

##  Feedback and Improvements
Feedback and suggestions for improvements are welcome. Please feel free to open issues or pull requests with any enhancements or fixes.
