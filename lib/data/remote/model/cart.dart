import 'package:azzoa_grocery/constants.dart';
import 'package:azzoa_grocery/data/remote/model/cart_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Cart {
  @JsonKey(required: true)
  int? id;

  @JsonKey(required: true)
  String? type;

  @JsonKey(defaultValue: kDefaultString)
  String? currencyCode;

  @JsonKey(required: true)
  dynamic userId;

  @JsonKey()
  dynamic couponId;

  @JsonKey()
  String? couponCode;

  @JsonKey()
  dynamic couponDiscount;

  @JsonKey(defaultValue: kDefaultString)
  String? createdAt;

  @JsonKey(defaultValue: kDefaultDouble)
  dynamic grossTotal;

  @JsonKey(defaultValue: kDefaultDouble)
  dynamic netTotal;

  @JsonKey(defaultValue: kDefaultDouble)
  dynamic taxTotal;

  @JsonKey(defaultValue: [])
  List<CartItem>? items;

  Cart({
    this.id,
    this.type,
    this.userId,
    this.couponId,
    this.currencyCode,
    this.couponDiscount,
    this.grossTotal,
    this.netTotal,
    this.taxTotal,
    this.couponCode,
    this.createdAt,
    this.items,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
