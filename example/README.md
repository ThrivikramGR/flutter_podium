## Showcase your top performers in style with a modern 3D Podium widget!

This package provides a customizable Podium widget for Flutter that allows you to easily display three positions with sleek 3D bars.<br><br>
<img width="320" alt="sample screenshot 1" src="https://github.com/ThrivikramGR/flutter_podium/assets/72206073/876c189b-dd01-43df-8fdd-9241deb63179">
<img width="320" alt="sample screenshot 2" src="https://github.com/ThrivikramGR/flutter_podium/assets/72206073/8284ace4-1989-4a1e-be28-dceb04fdb064">
<img width="320" alt="sample screenshot 3" src="https://github.com/ThrivikramGR/flutter_podium/assets/72206073/3912fcc0-db82-4bb0-8c1c-3fc80e30b7ef">


## Features

<b>Modern Design:</b> Enhance your app's aesthetics with a visually appealing podium design.<br><br>
<b>3D Bars:</b> Utilize attractive 3D bars to represent each position on the podium.<br><br>
<b>Customization:</b> Control various aspects of the podium's appearance, such as colors, materials, and sizes.<br><br>
<b>Easy to Use:</b> Integrate the Podium widget seamlessly into your existing Flutter projects.

## Getting started

To use the Flutter Podium Widget in your project, follow these steps:<br><br>
<b>1. Add the dependency:</b><br>
Add the following line with the latest version to your pubspec.yaml file:<br>
```dart
dependencies:
  podium:^1.0.0
```
<b>2. Install the package:</b><br>
Run the following command in your terminal to install the package:<br>
```dart
flutter pub get
```
<b>3. Import the package:</b><br>
Add the following line to the top of the dart file where you would want to use the podium widget:<br>
```dart
import 'package:podium/flutter_podium.dart'
```

## Usage

Here's a basic example of how to use the Podium widget:
```dart
import 'package:podium/flutter_podium.dart';

      Podium(
            firstPosition: Text("Winner 1"),
            secondPosition: Text("Winner 2"),
            thirdPosition: Text("Winner 3"),
          ),
```
This code snippet will display a podium with " Winner Name", " Runner-Up Name", and " Third Place Name" occupying the first, second, and third positions, respectively.

<b>Additional Customization:</b>

The Podium widget offers various properties to customize its appearance. Explore a few of the available properties in the code snippet below:

```dart
  Podium(
            firstPosition: Text("James"),
            secondPosition: Text("Steinfield"),
            thirdPosition: Text("Icona"),
            color: Colors.pink,
            rankingTextColor: Colors.white,
            rankingFontSize: 30,
            displayRankingNumberInsteadOfText: true,
            hideRanking: false,
            height: 250,
            width: 100,
            horizontalSpacing: 3,
          ),
```

## Additional information

<b>Contributing:</b> We welcome contributions from the community! If you have improvements or new features in mind, feel free to submit a pull request.<br><br>
<b>Issues:</b> Encountered a bug or have a question? Raise an issue on the GitHub repository.<br><br><br>
