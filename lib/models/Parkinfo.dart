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


/** This is an auto generated class representing the Parkinfo type in your schema. */
class Parkinfo extends amplify_core.Model {
  static const classType = const _ParkinfoModelType();
  final String id;
  final int? _floors;
  final int? _no_spots;
  final int? _capacity;
  final String? _description;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ParkinfoModelIdentifier get modelIdentifier {
      return ParkinfoModelIdentifier(
        id: id
      );
  }
  
  int? get floors {
    return _floors;
  }
  
  int? get no_spots {
    return _no_spots;
  }
  
  int? get capacity {
    return _capacity;
  }
  
  String? get description {
    return _description;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Parkinfo._internal({required this.id, floors, no_spots, capacity, description, createdAt, updatedAt}): _floors = floors, _no_spots = no_spots, _capacity = capacity, _description = description, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Parkinfo({String? id, int? floors, int? no_spots, int? capacity, String? description}) {
    return Parkinfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      floors: floors,
      no_spots: no_spots,
      capacity: capacity,
      description: description);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Parkinfo &&
      id == other.id &&
      _floors == other._floors &&
      _no_spots == other._no_spots &&
      _capacity == other._capacity &&
      _description == other._description;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Parkinfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("floors=" + (_floors != null ? _floors!.toString() : "null") + ", ");
    buffer.write("no_spots=" + (_no_spots != null ? _no_spots!.toString() : "null") + ", ");
    buffer.write("capacity=" + (_capacity != null ? _capacity!.toString() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Parkinfo copyWith({int? floors, int? no_spots, int? capacity, String? description}) {
    return Parkinfo._internal(
      id: id,
      floors: floors ?? this.floors,
      no_spots: no_spots ?? this.no_spots,
      capacity: capacity ?? this.capacity,
      description: description ?? this.description);
  }
  
  Parkinfo copyWithModelFieldValues({
    ModelFieldValue<int?>? floors,
    ModelFieldValue<int?>? no_spots,
    ModelFieldValue<int?>? capacity,
    ModelFieldValue<String?>? description
  }) {
    return Parkinfo._internal(
      id: id,
      floors: floors == null ? this.floors : floors.value,
      no_spots: no_spots == null ? this.no_spots : no_spots.value,
      capacity: capacity == null ? this.capacity : capacity.value,
      description: description == null ? this.description : description.value
    );
  }
  
  Parkinfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _floors = (json['floors'] as num?)?.toInt(),
      _no_spots = (json['no_spots'] as num?)?.toInt(),
      _capacity = (json['capacity'] as num?)?.toInt(),
      _description = json['description'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'floors': _floors, 'no_spots': _no_spots, 'capacity': _capacity, 'description': _description, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'floors': _floors,
    'no_spots': _no_spots,
    'capacity': _capacity,
    'description': _description,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ParkinfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ParkinfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FLOORS = amplify_core.QueryField(fieldName: "floors");
  static final NO_SPOTS = amplify_core.QueryField(fieldName: "no_spots");
  static final CAPACITY = amplify_core.QueryField(fieldName: "capacity");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Parkinfo";
    modelSchemaDefinition.pluralName = "Parkinfos";
    
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
      key: Parkinfo.FLOORS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Parkinfo.NO_SPOTS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Parkinfo.CAPACITY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Parkinfo.DESCRIPTION,
      isRequired: false,
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

class _ParkinfoModelType extends amplify_core.ModelType<Parkinfo> {
  const _ParkinfoModelType();
  
  @override
  Parkinfo fromJson(Map<String, dynamic> jsonData) {
    return Parkinfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Parkinfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Parkinfo] in your schema.
 */
class ParkinfoModelIdentifier implements amplify_core.ModelIdentifier<Parkinfo> {
  final String id;

  /** Create an instance of ParkinfoModelIdentifier using [id] the primary key. */
  const ParkinfoModelIdentifier({
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
  String toString() => 'ParkinfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ParkinfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}