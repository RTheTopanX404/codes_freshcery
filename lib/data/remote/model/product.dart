import 'dart:convert';

import 'package:azzoa_grocery/constants.dart';
import 'package:azzoa_grocery/data/remote/model/attribute.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gallery.dart';

part 'product.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Product {
  static String get tableName => 'product';

  @JsonKey(required: true)
  int? id;

  @JsonKey()
  int? parentId;

  @JsonKey()
  dynamic categoryId;

  @JsonKey()
  dynamic shopId;

  @JsonKey(required: true)
  String? title;

  @JsonKey(defaultValue: kDefaultString)
  String? slug;

  @JsonKey(defaultValue: kDefaultString)
  String? excerpt;

  @JsonKey(defaultValue: kDefaultString)
  String? content;

  @JsonKey(defaultValue: kDefaultString)
  String? image;

  @JsonKey()
  dynamic views;

  @JsonKey()
  dynamic per;

  @JsonKey(defaultValue: kDefaultString)
  String? unit;

  @JsonKey()
  double? salePrice;

  @JsonKey()
  double? generalPrice;

  @JsonKey()
  dynamic tax;

  @JsonKey(defaultValue: kDefaultString)
  dynamic sku;

  @JsonKey()
  dynamic stock;

  @JsonKey()
  String? deliveryTime;

  @JsonKey()
  dynamic deliveryTimeType;

  @JsonKey()
  dynamic isFreeShipping;

  @JsonKey(defaultValue: kDefaultString)
  String? createdAt;

  @JsonKey()
  dynamic status;

  @JsonKey()
  double? priceOff;

  @JsonKey(defaultValue: kDefaultString)
  String? type;

  @JsonKey(defaultValue: kDefaultDouble)
  double? star;

  @JsonKey(defaultValue: kDefaultDouble)
  double? averageRating;

  @JsonKey(defaultValue: [])
  List<Product>? variations;

  @JsonKey(defaultValue: [])
  List<Attribute>? attrs;

  @JsonKey(defaultValue: [])
  List<Gallery>? gallery;

  Product(
      {this.id,
      this.parentId,
      this.categoryId,
      this.shopId,
      this.title,
      this.slug,
      this.excerpt,
      this.content,
      this.image,
      this.views,
      this.per,
      this.unit,
      this.salePrice,
      this.generalPrice,
      this.tax,
      this.sku,
      this.stock,
      this.deliveryTime,
      this.deliveryTimeType,
      this.isFreeShipping,
      this.status,
      this.createdAt,
      this.priceOff,
      this.type,
      this.star,
      this.variations,
      this.attrs,
      this.gallery});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  String toJsonString() => json.encode(toJson());

  factory Product.fromDatabase(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toDatabase() {
    return {
      'id': id,
      'parent_id': parentId,
      'category_id': categoryId,
      'shop_id': shopId,
      'title': title,
      'slug': slug,
      'excerpt': excerpt,
      'content': content,
      'image': image,
      'views': views,
      'per': per,
      'unit': unit,
      'sale_price': salePrice,
      'general_price': generalPrice,
      'tax': tax,
      'sku': sku,
      'stock': stock,
      'delivery_time': deliveryTime,
      'delivery_time_type': deliveryTimeType,
      'is_free_shipping': isFreeShipping,
      'created_at': createdAt,
      'status': status,
      'price_off': priceOff,
      'type': type,
      'star': star,
    };
  }
}
