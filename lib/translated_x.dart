/// A library providing extensions for translated text widgets using GetX.
///
/// The `translated_x` library offers a convenient way to display translated text
/// in Flutter applications. It includes an extension on `String?` that allows you
/// to easily create text widgets with various customization options, leveraging
/// the GetX package for translations.
///
/// To use this library, simply import it and call the `translatedX` method on any
/// nullable string. You can customize the appearance and behavior of the text
/// widget through various parameters.
///
/// ```dart
/// import 'package:translated_x/translated_x.dart';
///
/// String? myText = 'hello';
/// myText.translatedX(
///   style: TextStyle(fontSize: 16),
///   textAlign: TextAlign.center,
///   topMargin: 8.0,
///   bottomMargin: 8.0,
/// );
/// ```
///
/// The library exports the following file:
///
/// - `src/translated_x.dart`: Contains the extension method for `String?`.
///
/// Example usage:
/// ```dart
/// import 'package:translated_x/translated_x.dart';
///
/// void main() {
///   runApp(
///     MaterialApp(
///       home: Scaffold(
///         body: Center(
///           child: 'hello'.translatedX(),
///         ),
///       ),
///     ),
///   );
/// }
/// ```
library translated_x;

export './src/translated_x.dart';
