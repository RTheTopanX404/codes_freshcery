// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethodList _$ShippingMethodListFromJson(Map<String, dynamic> json) {
  return ShippingMethodList(
    jsonArray: (json['json_array'] as List<dynamic>?)
            ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ShippingMethodListToJson(ShippingMethodList instance) =>
    <String, dynamic>{
      'json_array': instance.jsonArray,
    };
