# translated_x

`translated_x` is a Dart library that provides an extension on the `String` class for easy translation and customization of text widgets in Flutter applications. It simplifies the creation of `Text` widgets with translation capabilities and customizable margins.

> This Library is  designed and tested only on get (getx state management) translation

## Features

- **Translation Integration**: Easily use translated strings in your Flutter app.
- **Customizable Margins**: Add margins around the text widget with top, bottom, left, and right margin options.
- **Text Customization**: Customize various text properties including style, alignment, overflow, and more.

## Installation

Add `translated_x` to your `pubspec.yaml` file:

```yaml
dependencies:
  translated_x:
    git: https://github.com/gktirkha/translated_x/
```

> If you prefer you can read the dart doc version of the documentation [here](https://gktirkha.github.io/flutter_packages_doc/translated_x/)

# Usage
Import the library and use the translatedX extension method on any String:
```dart
import 'package:translated_x/translated_x.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('translated_x Example')),
        body: Center(
          child: 'hello'.translatedX(
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
            topMargin: 10.0,
            bottomMargin: 10.0,
          ),
        ),
      ),
    );
  }
}
```

# Parameters
1. style: The text style to apply to the text.
1. overflow: How visual overflow should be handled.
1. maxLines: The maximum number of lines to display.
1. textAlign: How the text should be aligned horizontally.
1. locale: The locale to use for translation.
1. selectionColor: The color of the selection handle.
1. semanticsLabel: A description of the text used by accessibility tools.
1. softWrap: Whether the text should break at soft line breaks.
1. strutStyle: The strut style to apply to the text.
1. textDirection: The direction in which the text should be laid out.
1. textHeightBehavior: Defines how text height should be calculated.
1. textScaleFactor: Deprecated parameter for scaling text size.
1. textWidthBasis: How the width of the text should be calculated.
1. textScaler: A custom text scaler to adjust text sizes.
1. topMargin: The margin to apply at the top of the text widget.
1. bottomMargin: The margin to apply at the bottom of the text widget.
1. leftMargin: The margin to apply on the left side of the text widget.
1. rightMargin: The margin to apply on the right side of the text widget.

> Note: The textScaleFactor parameter is deprecated and should be avoided.

# Contributing
Contributions are welcome! Please submit a pull request or open an issue on [Github Repository.](https://github.com/gktirkha/translated_x/)

# License
This library is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.