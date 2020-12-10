import './ParagraphStyle.dart';
import './FontDescriptor.dart';
import './Color.dart';

class TextStyle {
  final String _class = "textStyle";
  int verticalAlignment;
  TextStyle_EncodedAttributes encodedAttributes;

  TextStyle();

  static setModelWithMap(Map<String, dynamic> map, TextStyle model) {
    model.verticalAlignment = map['verticalAlignment'];

    model.encodedAttributes = map['encodedAttributes'];

	}

  factory TextStyle.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    TextStyle model = TextStyle();
	  TextStyle.setModelWithMap(map, model);
    return model;
  }

  Map<String, dynamic> toMap() {
	  return {
    };
  }

  @override
  String toString() {
    return 'TextStyle()';
  }

} 
class TextStyle_EncodedAttributes {
  ParagraphStyle paragraphStyle;
  int MSAttributedStringTextTransformAttribute;
  int underlineStyle;
  final String strikethroughStyle = "0";
  double kerning;
  FontDescriptor MSAttributedStringFontAttribute;
  int textStyleVerticalAlignmentKey;
  Color MSAttributedStringColorAttribute;

  TextStyle_EncodedAttributes();

  static setModelWithMap(Map<String, dynamic> map, TextStyle_EncodedAttributes model) {
    model.paragraphStyle = map['paragraphStyle'] != null ? new ParagraphStyle.fromMap(map['paragraphStyle']) : null;

    model.MSAttributedStringTextTransformAttribute = map['MSAttributedStringTextTransformAttribute'];

    model.underlineStyle = map['underlineStyle'];

    model.kerning = map['kerning'] != null ? map['kerning'].toDouble() : 0.0;

    model.MSAttributedStringFontAttribute = map['MSAttributedStringFontAttribute'] != null ? new FontDescriptor.fromMap(map['MSAttributedStringFontAttribute']) : null;

    model.textStyleVerticalAlignmentKey = map['textStyleVerticalAlignmentKey'];

    model.MSAttributedStringColorAttribute = map['MSAttributedStringColorAttribute'] != null ? new Color.fromMap(map['MSAttributedStringColorAttribute']) : null;

	}

  factory TextStyle_EncodedAttributes.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    TextStyle_EncodedAttributes model = TextStyle_EncodedAttributes();
	  TextStyle_EncodedAttributes.setModelWithMap(map, model);
    return model;
  }

  Map<String, dynamic> toMap() {
	  return {
    };
  }

  @override
  String toString() {
    return 'TextStyle_EncodedAttributes()';
  }

} 
