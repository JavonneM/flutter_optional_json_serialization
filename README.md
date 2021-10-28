# retro_test

This shows an example of how the json_serializable package is unable to correctly decode responses from an api. I have found success using the `@JsonKey(fromJson: (){}, toJson: (){}))` on the generic field.

Don't forget to generate code with build_runner `flutter pub run build_runner build`

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
