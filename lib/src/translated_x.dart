import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

/// An extension on `String?` that provides a widget displaying the translated
/// text with various customization options.
///
/// This extension method allows you to easily display translated text using
/// the GetX translation utilities. It provides various parameters to customize
/// the appearance and behavior of the text.
///
/// ```dart
/// String? myText = 'hello';
/// myText.translatedX(
///   style: TextStyle(fontSize: 16),
///   textAlign: TextAlign.center,
///   topMargin: 8.0,
///   bottomMargin: 8.0,
/// );
/// ```
///
/// The method returns a `Container` widget that contains a `Text` widget. If
/// the string is null or empty, and the `showPlaceholderIfEmpty` flag is not set,
/// it returns a `Container` with no child.
///
/// Parameters:
/// - `placeholder`: A fallback string to use if the original string is null.
/// - `style`: The text style to apply to the text.
/// - `overflow`: How visual overflow should be handled.
/// - `maxLines`: The maximum number of lines for the text to span.
/// - `textAlign`: How the text should be aligned horizontally.
/// - `locale`: The locale used to select a font when the text is drawn.
/// - `selectionColor`: The color of the text when selected.
/// - `semanticsLabel`: An alternative semantics label for the text.
/// - `softWrap`: Whether the text should break at soft line breaks.
/// - `strutStyle`: Strut style used for text.
/// - `textDirection`: The directionality of the text.
/// - `textHeightBehavior`: Defines how the paragraph's vertical height is handled.
/// - `textScaleFactor`: The number of font pixels for each logical pixel. This parameter is deprecated.
/// - `textWidthBasis`: Defines how to measure the width of the text.
/// - `textScaler`: Defines the scaling behavior of the text.
/// - `topMargin`: The top margin to apply around the text.
/// - `bottomMargin`: The bottom margin to apply around the text.
/// - `leftMargin`: The left margin to apply around the text.
/// - `rightMargin`: The right margin to apply around the text.
/// - `marginIfNull`: Whether to apply margin if the text is null.
/// - `showPlaceholderIfEmpty`: Whether to show the placeholder if the text is empty.
/// - `ipsumInDebug`: Whether to show 'ipsum' text in debug mode if the text is null.
extension TranslatedX on String? {
  Widget translatedX({
    String? placeholder,
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
    bool marginIfNull = false,
    bool showPlaceholderIfEmpty = false,
    bool ipsumInDebug = true,
  }) {
    final EdgeInsets margin =
        EdgeInsets.fromLTRB(leftMargin, topMargin, rightMargin, bottomMargin);
    String? textToShow = this ?? placeholder;
    if (kDebugMode &&
        (textToShow == null || textToShow.isEmpty) &&
        ipsumInDebug) textToShow = 'ipsum';

    if ((textToShow == null || textToShow.isEmpty) && !showPlaceholderIfEmpty) {
      return Container(
        margin: marginIfNull ? margin : null,
        child: const SizedBox.shrink(),
      );
    }

    return Container(
      margin: margin,
      child: Text(
        textToShow!.tr,
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
