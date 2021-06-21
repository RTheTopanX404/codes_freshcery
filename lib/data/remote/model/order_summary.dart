import 'package:azzoa_grocery/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_summary.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderSummary {
  @JsonKey(required: true)
  int? id;

  @JsonKey(required: true)
  dynamic userId;

  @JsonKey()
  String? track;

  @JsonKey()
  dynamic couponId;

  @JsonKey()
  dynamic couponCode;

  @JsonKey(defaultValue: kDefaultInt)
  dynamic discount;

  @JsonKey()
  dynamic shippingMethodId;

  @JsonKey(defaultValue: kDefaultString)
  String? shippingMethodName;

  @JsonKey(defaultValue: kDefaultDouble)
  dynamic shippingCharge;

  @JsonKey(defaultValue: kDefaultString)
  String? createdAt;

  @JsonKey()
  dynamic status;

  @JsonKey(defaultValue: kDefaultString)
  String? statusString;

  OrderSummary({
    this.id,
    this.userId,
    this.track,
    this.couponId,
    this.couponCode,
    this.discount,
    this.shippingMethodId,
    this.shippingMethodName,
    this.shippingCharge,
    this.status,
    this.createdAt,
  });

  factory OrderSummary.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSummaryToJson(this);
}
