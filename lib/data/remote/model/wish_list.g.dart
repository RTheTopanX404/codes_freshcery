// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishList _$WishListFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'type', 'user_id']);
  return WishList(
    id: json['id'] as int?,
    type: json['type'] as String?,
    userId: json['user_id'],
    couponId: json['coupon_id'],
    currencyCode: json['currency_code'] as String? ?? '',
    couponDiscount: json['coupon_discount'],
    grossTotal: json['gross_total'] ?? '',
    netTotal: json['net_total'] ?? '',
    taxTotal: json['tax_total'] ?? '',
    couponCode: json['coupon_code'],
    createdAt: json['created_at'] as String? ?? '',
    items: (json['items'] as List<dynamic>?)
            ?.map((e) => WishListItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$WishListToJson(WishList instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'currency_code': instance.currencyCode,
      'user_id': instance.userId,
      'coupon_id': instance.couponId,
      'coupon_code': instance.couponCode,
      'coupon_discount': instance.couponDiscount,
      'created_at': instance.createdAt,
      'gross_total': instance.grossTotal,
      'net_total': instance.netTotal,
      'tax_total': instance.taxTotal,
      'items': instance.items,
    };
