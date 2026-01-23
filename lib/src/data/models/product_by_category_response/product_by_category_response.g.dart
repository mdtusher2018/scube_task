// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_by_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductByCategoryResponse _$ProductByCategoryResponseFromJson(
  Map<String, dynamic> json,
) => _ProductByCategoryResponse(
  category: Category.fromJson(json['category'] as Map<String, dynamic>),
  products: (json['products'] as List<dynamic>)
      .map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductByCategoryResponseToJson(
  _ProductByCategoryResponse instance,
) => <String, dynamic>{
  'category': instance.category,
  'products': instance.products,
};
