import './AbstractLayer.dart';
import '../objects/AttributedString.dart';

class Text extends AbstractLayer {
  final String _class = "text";
  AttributedString attributedString;
  bool automaticallyDrawOnUnderlyingPath;
  bool dontSynchroniseWithSymbol;
  int lineSpacingBehaviour;
  int textBehaviour;
  String glyphBounds;

  Text();

  static setModelWithMap(Map<String, dynamic> map, Text model) {
    AbstractLayer.setModelWithMap(map, model);

    model.attributedString = map['attributedString'] != null ? new AttributedString.fromMap(map['attributedString']) : null;

    model.automaticallyDrawOnUnderlyingPath = map['automaticallyDrawOnUnderlyingPath'];

    model.dontSynchroniseWithSymbol = map['dontSynchroniseWithSymbol'];

    model.lineSpacingBehaviour = map['lineSpacingBehaviour'];

    model.textBehaviour = map['textBehaviour'];

    model.glyphBounds = map['glyphBounds'];

	}

  factory Text.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Text model = Text();
	  Text.setModelWithMap(map, model);
    return model;
  }

  Map<String, dynamic> toMap() {
	  return {
    };
  }

  @override
  String toString() {
    return 'Text()';
  }

} 
