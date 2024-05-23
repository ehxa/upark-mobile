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


/** This is an auto generated class representing the Spot type in your schema. */
class Spot extends amplify_core.Model {
  static const classType = const _SpotModelType();
  final String id;
  final int? _floor;
  final SpotStatus? _status;
  final bool? _charger;
  final VehicleType? _vehicle_type;
  final String? _parkID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SpotModelIdentifier get modelIdentifier {
      return SpotModelIdentifier(
        id: id
      );
  }
  
  int? get floor {
    return _floor;
  }
  
  SpotStatus? get status {
    return _status;
  }
  
  bool? get charger {
    return _charger;
  }
  
  VehicleType? get vehicle_type {
    return _vehicle_type;
  }
  
  String get parkID {
    try {
      return _parkID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Spot._internal({required this.id, floor, status, charger, vehicle_type, required parkID, createdAt, updatedAt}): _floor = floor, _status = status, _charger = charger, _vehicle_type = vehicle_type, _parkID = parkID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Spot({String? id, int? floor, SpotStatus? status, bool? charger, VehicleType? vehicle_type, required String parkID}) {
    return Spot._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      floor: floor,
      status: status,
      charger: charger,
      vehicle_type: vehicle_type,
      parkID: parkID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Spot &&
      id == other.id &&
      _floor == other._floor &&
      _status == other._status &&
      _charger == other._charger &&
      _vehicle_type == other._vehicle_type &&
      _parkID == other._parkID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Spot {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("floor=" + (_floor != null ? _floor!.toString() : "null") + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("charger=" + (_charger != null ? _charger!.toString() : "null") + ", ");
    buffer.write("vehicle_type=" + (_vehicle_type != null ? amplify_core.enumToString(_vehicle_type)! : "null") + ", ");
    buffer.write("parkID=" + "$_parkID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Spot copyWith({int? floor, SpotStatus? status, bool? charger, VehicleType? vehicle_type, String? parkID}) {
    return Spot._internal(
      id: id,
      floor: floor ?? this.floor,
      status: status ?? this.status,
      charger: charger ?? this.charger,
      vehicle_type: vehicle_type ?? this.vehicle_type,
      parkID: parkID ?? this.parkID);
  }
  
  Spot copyWithModelFieldValues({
    ModelFieldValue<int?>? floor,
    ModelFieldValue<SpotStatus?>? status,
    ModelFieldValue<bool?>? charger,
    ModelFieldValue<VehicleType?>? vehicle_type,
    ModelFieldValue<String>? parkID
  }) {
    return Spot._internal(
      id: id,
      floor: floor == null ? this.floor : floor.value,
      status: status == null ? this.status : status.value,
      charger: charger == null ? this.charger : charger.value,
      vehicle_type: vehicle_type == null ? this.vehicle_type : vehicle_type.value,
      parkID: parkID == null ? this.parkID : parkID.value
    );
  }
  
  Spot.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _floor = (json['floor'] as num?)?.toInt(),
      _status = amplify_core.enumFromString<SpotStatus>(json['status'], SpotStatus.values),
      _charger = json['charger'],
      _vehicle_type = amplify_core.enumFromString<VehicleType>(json['vehicle_type'], VehicleType.values),
      _parkID = json['parkID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'floor': _floor, 'status': amplify_core.enumToString(_status), 'charger': _charger, 'vehicle_type': amplify_core.enumToString(_vehicle_type), 'parkID': _parkID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'floor': _floor,
    'status': _status,
    'charger': _charger,
    'vehicle_type': _vehicle_type,
    'parkID': _parkID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<SpotModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SpotModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FLOOR = amplify_core.QueryField(fieldName: "floor");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final CHARGER = amplify_core.QueryField(fieldName: "charger");
  static final VEHICLE_TYPE = amplify_core.QueryField(fieldName: "vehicle_type");
  static final PARKID = amplify_core.QueryField(fieldName: "parkID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Spot";
    modelSchemaDefinition.pluralName = "Spots";
    
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["parkID"], name: "byPark")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Spot.FLOOR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Spot.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Spot.CHARGER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Spot.VEHICLE_TYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Spot.PARKID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _SpotModelType extends amplify_core.ModelType<Spot> {
  const _SpotModelType();
  
  @override
  Spot fromJson(Map<String, dynamic> jsonData) {
    return Spot.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Spot';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Spot] in your schema.
 */
class SpotModelIdentifier implements amplify_core.ModelIdentifier<Spot> {
  final String id;

  /** Create an instance of SpotModelIdentifier using [id] the primary key. */
  const SpotModelIdentifier({
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
  String toString() => 'SpotModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SpotModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}