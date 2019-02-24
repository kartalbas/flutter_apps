import 'package:flutter/material.dart';
import 'styles_tools.dart';

class Styles {
  static const _textSizeLarge = 22.0;
  static const _textSizeDefault = 16.0;
  static const _textSizeSmall = 12.0;
  static const horizontalPaddingDefault = 12.0;
  static final Color _textColorStrong =  StylesTools.hexToColor('000000');
  static final Color _textColorDefault = StylesTools.hexToColor('000000');
  static final Color _textColorFaint = StylesTools.hexToColor('999999');
  static final Color textColorBright = StylesTools.hexToColor('FFFFFF');
  static final Color accentColor = StylesTools.hexToColor('FF0000');
  static final String _fontNameDefault = 'Montserrat';

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
    fontWeight: FontWeight.w600,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
    height: 1.2,
  );

  static TextStyle textDefaultWithColor(Color color) {
    return TextStyle(
      fontFamily: _fontNameDefault,
      fontSize: _textSizeDefault,
      color: color,
      height: 1.2,
    );
  }

  static final textCTAButton = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: textColorBright,
  );

  static final locationTileTitleLight = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );

  static final locationTileTitleDark = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: textColorBright,
  );

  static final locationTileSubTitle = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: accentColor,
  );
  
  static final locationTileCaption = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeSmall,
    color: _textColorFaint,
  );
}
