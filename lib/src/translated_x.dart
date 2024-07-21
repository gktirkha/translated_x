import 'package:flutter/material.dart';
import 'package:get/utils.dart';

/// An extension on [String] that provides a convenience method to create a [Text]
/// widget with translation and margin support.
///
/// This extension method allows you to use a translated string within a [Text] widget
/// while customizing various text properties and adding margins around the text.
///
/// Example:
/// ```dart
/// 'hello'.translatedX(
///   style: TextStyle(fontSize: 20),
///   textAlign: TextAlign.center,
///   topMargin: 10.0,
///   bottomMargin: 10.0,
/// );
/// ```
///
/// The following parameters can be customized:
/// - `style`: The text style to apply to the text.
/// - `overflow`: How visual overflow should be handled.
/// - `maxLines`: The maximum number of lines to display.
/// - `textAlign`: How the text should be aligned horizontally.
/// - `locale`: The locale to use for translation.
/// - `selectionColor`: The color of the selection handle.
/// - `semanticsLabel`: A description of the text used by accessibility tools.
/// - `softWrap`: Whether the text should break at soft line breaks.
/// - `strutStyle`: The strut style to apply to the text.
/// - `textDirection`: The direction in which the text should be laid out.
/// - `textHeightBehavior`: Defines how text height should be calculated.
/// - `textScaleFactor`: Deprecated parameter for scaling text size.
/// - `textWidthBasis`: How the width of the text should be calculated.
/// - `textScaler`: A custom text scaler to adjust text sizes.
/// - `topMargin`: The margin to apply at the top of the text widget.
/// - `bottomMargin`: The margin to apply at the bottom of the text widget.
/// - `leftMargin`: The margin to apply on the left side of the text widget.
/// - `rightMargin`: The margin to apply on the right side of the text widget.
///
/// Note: The `textScaleFactor` parameter is deprecated and should be avoided.
extension TranslatedX on String {
  Widget translatedX({
    TextStyle? style,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    Locale? locale,
    Color? selectionColor,
    String? semanticsLabel,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextHeightBehavior? textHeightBehavior,
    @Deprecated('This is a deprecated Argument') double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
    TextScaler? textScaler,
    double topMargin = 0.0,
    double bottomMargin = 0.0,
    double leftMargin = 0.0,
    double rightMargin = 0.0,
  }) {
    final EdgeInsets margin =
        EdgeInsets.fromLTRB(leftMargin, topMargin, rightMargin, bottomMargin);

    return Container(
      margin: margin,
      child: Text(
        tr,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        selectionColor: selectionColor,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        textHeightBehavior: textHeightBehavior,
        // ignore: deprecated_member_use
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        textScaler: textScaler,
      ),
    );
  }
}
