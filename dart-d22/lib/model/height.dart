part of kd.api;

@Entity()
class Height {
  /// The underlying value of this enum member.
  final int value;

  const Height._internal(this.value);

  /// 
  static const Height number0_ = const Height._internal(0);
  /// 
  static const Height number1_ = const Height._internal(1);
  /// 
  static const Height number2_ = const Height._internal(2);
}

class HeightTypeTransformer extends TypeTransformer<Height> {

  @override
  dynamic encode(Height data) {
    return data.value;
  }

  @override
  Height decode(dynamic data) {
    switch (data) {
      case 0: return Height.number0_;
      case 1: return Height.number1_;
      case 2: return Height.number2_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

