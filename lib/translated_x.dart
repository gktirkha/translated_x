/// A Dart library for providing an extension on [String] to create a [Text] widget
/// with translation and customizable margins.
///
/// This library exports the `translated_x.dart` file which contains the `TranslatedX`
/// extension on [String], allowing for easy use of translated strings with customizable
/// text properties and margins.
///
/// Example:
/// ```dart
/// import 'package:translated_x/translated_x.dart';
///
/// 'hello'.translatedX(
///   style: TextStyle(fontSize: 20),
///   textAlign: TextAlign.center,
///   topMargin: 10.0,
///   bottomMargin: 10.0,
/// );
/// ```
library translated_x;

export './src/translated_x.dart';
