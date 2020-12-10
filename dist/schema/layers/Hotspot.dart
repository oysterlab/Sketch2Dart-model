import './AbstractLayer.dart';

class Hotspot extends AbstractLayer {
  final String _class = "MSImmutableHotspotLayer";

  Hotspot();

  static setModelWithMap(Map<String, dynamic> map, Hotspot model) {
    AbstractLayer.setModelWithMap(map, model);

	}

  factory Hotspot.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Hotspot model = Hotspot();
	  Hotspot.setModelWithMap(map, model);
    return model;
  }

  Map<String, dynamic> toMap() {
	  return {
    };
  }

  @override
  String toString() {
    return 'Hotspot()';
  }

} 
