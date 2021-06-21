import 'package:azzoa_grocery/data/remote/model/cart.dart';
// import 'package:azzoa_grocery/data/remote/model/shop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_cart.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MyCart {
  @JsonKey(defaultValue: null)
  Cart? jsonObject;

  MyCart();

  factory MyCart.fromJson(Map<String, dynamic> json) => _$MyCartFromJson(json);

  Map<String, dynamic> toJson() => _$MyCartToJson(this);
}
