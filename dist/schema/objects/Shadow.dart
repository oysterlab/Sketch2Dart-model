import './Color.dart';
import './GraphicsContextSettings.dart';

class Shadow {
  final String _class = "shadow";
  bool isEnabled;
  double blurRadius;
  Color color;
  GraphicsContextSettings contextSettings;
  double offsetX;
  double offsetY;
  double spread;

  Shadow();

  static setModelWithMap(Map<String, dynamic> map, Shadow model) {
    model.isEnabled = map['isEnabled'];

    model.blurRadius = map['blurRadius'] != null ? map['blurRadius'].toDouble() : 0.0;

    model.color = map['color'] != null ? new Color.fromMap(map['color']) : null;

    model.contextSettings = map['contextSettings'] != null ? new GraphicsContextSettings.fromMap(map['contextSettings']) : null;

    model.offsetX = map['offsetX'] != null ? map['offsetX'].toDouble() : 0.0;

    model.offsetY = map['offsetY'] != null ? map['offsetY'].toDouble() : 0.0;

    model.spread = map['spread'] != null ? map['spread'].toDouble() : 0.0;

	}

  factory Shadow.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Shadow model = Shadow();
	  Shadow.setModelWithMap(map, model);
    return model;
  }

  Map<String, dynamic> toMap() {
	  return {
    };
  }

  @override
  String toString() {
    return 'Shadow()';
  }

} 
