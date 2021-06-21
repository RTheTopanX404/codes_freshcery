// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodList _$PaymentMethodListFromJson(Map<String, dynamic> json) {
  return PaymentMethodList(
    jsonArray: (json['json_array'] as List<dynamic>?)
            ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$PaymentMethodListToJson(PaymentMethodList instance) =>
    <String, dynamic>{
      'json_array': instance.jsonArray,
    };
