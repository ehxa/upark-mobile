/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Park type in your schema. */
class Park extends amplify_core.Model {
  static const classType = const _ParkModelType();
  final String id;
  final String? _name;
  final String? _address;
  final String? _postal_code;
  final String? _phone;
  final String? _email;
  final String? _overview;
  final List<Review>? _reviews;
  final List<Spot>? _spots;
  final List<Photos>? _photos;
  final Parkinfo? _parkinfo;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _parkParkinfoId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ParkModelIdentifier get modelIdentifier {
      return ParkModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get address {
    return _address;
  }
  
  String? get postal_code {
    return _postal_code;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get email {
    return _email;
  }
  
  String? get overview {
    return _overview;
  }
  
  List<Review>? get reviews {
    return _reviews;
  }
  
  List<Spot>? get spots {
    return _spots;
  }
  
  List<Photos>? get photos {
    return _photos;
  }
  
  Parkinfo? get parkinfo {
    return _parkinfo;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get parkParkinfoId {
    return _parkParkinfoId;
  }
  
  const Park._internal({required this.id, name, address, postal_code, phone, email, overview, reviews, spots, photos, parkinfo, createdAt, updatedAt, parkParkinfoId}): _name = name, _address = address, _postal_code = postal_code, _phone = phone, _email = email, _overview = overview, _reviews = reviews, _spots = spots, _photos = photos, _parkinfo = parkinfo, _createdAt = createdAt, _updatedAt = updatedAt, _parkParkinfoId = parkParkinfoId;
  
  factory Park({String? id, String? name, String? address, String? postal_code, String? phone, String? email, String? overview, List<Review>? reviews, List<Spot>? spots, List<Photos>? photos, Parkinfo? parkinfo, String? parkParkinfoId}) {
    return Park._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      address: address,
      postal_code: postal_code,
      phone: phone,
      email: email,
      overview: overview,
      reviews: reviews != null ? List<Review>.unmodifiable(reviews) : reviews,
      spots: spots != null ? List<Spot>.unmodifiable(spots) : spots,
      photos: photos != null ? List<Photos>.unmodifiable(photos) : photos,
      parkinfo: parkinfo,
      parkParkinfoId: parkParkinfoId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Park &&
      id == other.id &&
      _name == other._name &&
      _address == other._address &&
      _postal_code == other._postal_code &&
      _phone == other._phone &&
      _email == other._email &&
      _overview == other._overview &&
      DeepCollectionEquality().equals(_reviews, other._reviews) &&
      DeepCollectionEquality().equals(_spots, other._spots) &&
      DeepCollectionEquality().equals(_photos, other._photos) &&
      _parkinfo == other._parkinfo &&
      _parkParkinfoId == other._parkParkinfoId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Park {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("postal_code=" + "$_postal_code" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("overview=" + "$_overview" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("parkParkinfoId=" + "$_parkParkinfoId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Park copyWith({String? name, String? address, String? postal_code, String? phone, String? email, String? overview, List<Review>? reviews, List<Spot>? spots, List<Photos>? photos, Parkinfo? parkinfo, String? parkParkinfoId}) {
    return Park._internal(
      id: id,
      name: name ?? this.name,
      address: address ?? this.address,
      postal_code: postal_code ?? this.postal_code,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      overview: overview ?? this.overview,
      reviews: reviews ?? this.reviews,
      spots: spots ?? this.spots,
      photos: photos ?? this.photos,
      parkinfo: parkinfo ?? this.parkinfo,
      parkParkinfoId: parkParkinfoId ?? this.parkParkinfoId);
  }
  
  Park copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<String?>? address,
    ModelFieldValue<String?>? postal_code,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<String?>? email,
    ModelFieldValue<String?>? overview,
    ModelFieldValue<List<Review>?>? reviews,
    ModelFieldValue<List<Spot>?>? spots,
    ModelFieldValue<List<Photos>?>? photos,
    ModelFieldValue<Parkinfo?>? parkinfo,
    ModelFieldValue<String?>? parkParkinfoId
  }) {
    return Park._internal(
      id: id,
      name: name == null ? this.name : name.value,
      address: address == null ? this.address : address.value,
      postal_code: postal_code == null ? this.postal_code : postal_code.value,
      phone: phone == null ? this.phone : phone.value,
      email: email == null ? this.email : email.value,
      overview: overview == null ? this.overview : overview.value,
      reviews: reviews == null ? this.reviews : reviews.value,
      spots: spots == null ? this.spots : spots.value,
      photos: photos == null ? this.photos : photos.value,
      parkinfo: parkinfo == null ? this.parkinfo : parkinfo.value,
      parkParkinfoId: parkParkinfoId == null ? this.parkParkinfoId : parkParkinfoId.value
    );
  }
  
  Park.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _address = json['address'],
      _postal_code = json['postal_code'],
      _phone = json['phone'],
      _email = json['email'],
      _overview = json['overview'],
      _reviews = json['reviews']  is Map
        ? (json['reviews']['items'] is List
          ? (json['reviews']['items'] as List)
              .where((e) => e != null)
              .map((e) => Review.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['reviews'] is List
          ? (json['reviews'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Review.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _spots = json['spots']  is Map
        ? (json['spots']['items'] is List
          ? (json['spots']['items'] as List)
              .where((e) => e != null)
              .map((e) => Spot.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['spots'] is List
          ? (json['spots'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Spot.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _photos = json['photos']  is Map
        ? (json['photos']['items'] is List
          ? (json['photos']['items'] as List)
              .where((e) => e != null)
              .map((e) => Photos.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['photos'] is List
          ? (json['photos'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Photos.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _parkinfo = json['parkinfo'] != null
        ? json['parkinfo']['serializedData'] != null
          ? Parkinfo.fromJson(new Map<String, dynamic>.from(json['parkinfo']['serializedData']))
          : Parkinfo.fromJson(new Map<String, dynamic>.from(json['parkinfo']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _parkParkinfoId = json['parkParkinfoId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'address': _address, 'postal_code': _postal_code, 'phone': _phone, 'email': _email, 'overview': _overview, 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'spots': _spots?.map((Spot? e) => e?.toJson()).toList(), 'photos': _photos?.map((Photos? e) => e?.toJson()).toList(), 'parkinfo': _parkinfo?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'parkParkinfoId': _parkParkinfoId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'address': _address,
    'postal_code': _postal_code,
    'phone': _phone,
    'email': _email,
    'overview': _overview,
    'reviews': _reviews,
    'spots': _spots,
    'photos': _photos,
    'parkinfo': _parkinfo,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'parkParkinfoId': _parkParkinfoId
  };

  static final amplify_core.QueryModelIdentifier<ParkModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ParkModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final POSTAL_CODE = amplify_core.QueryField(fieldName: "postal_code");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final OVERVIEW = amplify_core.QueryField(fieldName: "overview");
  static final REVIEWS = amplify_core.QueryField(
    fieldName: "reviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final SPOTS = amplify_core.QueryField(
    fieldName: "spots",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Spot'));
  static final PHOTOS = amplify_core.QueryField(
    fieldName: "photos",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Photos'));
  static final PARKINFO = amplify_core.QueryField(
    fieldName: "parkinfo",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Parkinfo'));
  static final PARKPARKINFOID = amplify_core.QueryField(fieldName: "parkParkinfoId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Park";
    modelSchemaDefinition.pluralName = "Parks";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.ADDRESS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.POSTAL_CODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.EMAIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.OVERVIEW,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Park.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.PARKID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Park.SPOTS,
      isRequired: false,
      ofModelName: 'Spot',
      associatedKey: Spot.PARKID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Park.PHOTOS,
      isRequired: false,
      ofModelName: 'Photos',
      associatedKey: Photos.PARKID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Park.PARKINFO,
      isRequired: false,
      ofModelName: 'Parkinfo',
      associatedKey: Parkinfo.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Park.PARKPARKINFOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _ParkModelType extends amplify_core.ModelType<Park> {
  const _ParkModelType();
  
  @override
  Park fromJson(Map<String, dynamic> jsonData) {
    return Park.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Park';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Park] in your schema.
 */
class ParkModelIdentifier implements amplify_core.ModelIdentifier<Park> {
  final String id;

  /** Create an instance of ParkModelIdentifier using [id] the primary key. */
  const ParkModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ParkModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ParkModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}