// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summary_paginated_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderSummaryPaginatedList _$OrderSummaryPaginatedListFromJson(
    Map<String, dynamic> json) {
  return OrderSummaryPaginatedList(
    data: (json['data'] as List<dynamic>?)
            ?.map((e) => OrderSummary.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  )
    ..currentPage = json['current_page'] as int? ?? 1
    ..perPage = json['per_page'] as int? ?? 1
    ..lastPage = json['last_page'] as int? ?? 1;
}

Map<String, dynamic> _$OrderSummaryPaginatedListToJson(
        OrderSummaryPaginatedList instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'last_page': instance.lastPage,
      'data': instance.data,
    };
