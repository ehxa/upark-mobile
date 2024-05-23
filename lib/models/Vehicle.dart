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


/** This is an auto generated class representing the Vehicle type in your schema. */
class Vehicle extends amplify_core.Model {
  static const classType = const _VehicleModelType();
  final String id;
  final String? _plate;
  final VehicleType? _type;
  final List<UserVehicle>? _users;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  VehicleModelIdentifier get modelIdentifier {
      return VehicleModelIdentifier(
        id: id
      );
  }
  
  String? get plate {
    return _plate;
  }
  
  VehicleType? get type {
    return _type;
  }
  
  List<UserVehicle>? get users {
    return _users;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Vehicle._internal({required this.id, plate, type, users, createdAt, updatedAt}): _plate = plate, _type = type, _users = users, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Vehicle({String? id, String? plate, VehicleType? type, List<UserVehicle>? users}) {
    return Vehicle._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      plate: plate,
      type: type,
      users: users != null ? List<UserVehicle>.unmodifiable(users) : users);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vehicle &&
      id == other.id &&
      _plate == other._plate &&
      _type == other._type &&
      DeepCollectionEquality().equals(_users, other._users);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Vehicle {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("plate=" + "$_plate" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Vehicle copyWith({String? plate, VehicleType? type, List<UserVehicle>? users}) {
    return Vehicle._internal(
      id: id,
      plate: plate ?? this.plate,
      type: type ?? this.type,
      users: users ?? this.users);
  }
  
  Vehicle copyWithModelFieldValues({
    ModelFieldValue<String?>? plate,
    ModelFieldValue<VehicleType?>? type,
    ModelFieldValue<List<UserVehicle>?>? users
  }) {
    return Vehicle._internal(
      id: id,
      plate: plate == null ? this.plate : plate.value,
      type: type == null ? this.type : type.value,
      users: users == null ? this.users : users.value
    );
  }
  
  Vehicle.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _plate = json['plate'],
      _type = amplify_core.enumFromString<VehicleType>(json['type'], VehicleType.values),
      _users = json['users']  is Map
        ? (json['users']['items'] is List
          ? (json['users']['items'] as List)
              .where((e) => e != null)
              .map((e) => UserVehicle.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['users'] is List
          ? (json['users'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => UserVehicle.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'plate': _plate, 'type': amplify_core.enumToString(_type), 'users': _users?.map((UserVehicle? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'plate': _plate,
    'type': _type,
    'users': _users,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<VehicleModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<VehicleModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PLATE = amplify_core.QueryField(fieldName: "plate");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final USERS = amplify_core.QueryField(
    fieldName: "users",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserVehicle'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Vehicle";
    modelSchemaDefinition.pluralName = "Vehicles";
    
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
      key: Vehicle.PLATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Vehicle.TYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Vehicle.USERS,
      isRequired: false,
      ofModelName: 'UserVehicle',
      associatedKey: UserVehicle.VEHICLE
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
  });
}

class _VehicleModelType extends amplify_core.ModelType<Vehicle> {
  const _VehicleModelType();
  
  @override
  Vehicle fromJson(Map<String, dynamic> jsonData) {
    return Vehicle.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Vehicle';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Vehicle] in your schema.
 */
class VehicleModelIdentifier implements amplify_core.ModelIdentifier<Vehicle> {
  final String id;

  /** Create an instance of VehicleModelIdentifier using [id] the primary key. */
  const VehicleModelIdentifier({
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
  String toString() => 'VehicleModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is VehicleModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}