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


/** This is an auto generated class representing the Photos type in your schema. */
class Photos extends amplify_core.Model {
  static const classType = const _PhotosModelType();
  final String id;
  final String? _image;
  final String? _parkID;
  final String? _ticketID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PhotosModelIdentifier get modelIdentifier {
      return PhotosModelIdentifier(
        id: id
      );
  }
  
  String? get image {
    return _image;
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
  
  String get ticketID {
    try {
      return _ticketID!;
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
  
  const Photos._internal({required this.id, image, required parkID, required ticketID, createdAt, updatedAt}): _image = image, _parkID = parkID, _ticketID = ticketID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Photos({String? id, String? image, required String parkID, required String ticketID}) {
    return Photos._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      image: image,
      parkID: parkID,
      ticketID: ticketID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photos &&
      id == other.id &&
      _image == other._image &&
      _parkID == other._parkID &&
      _ticketID == other._ticketID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Photos {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("image=" + "$_image" + ", ");
    buffer.write("parkID=" + "$_parkID" + ", ");
    buffer.write("ticketID=" + "$_ticketID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Photos copyWith({String? image, String? parkID, String? ticketID}) {
    return Photos._internal(
      id: id,
      image: image ?? this.image,
      parkID: parkID ?? this.parkID,
      ticketID: ticketID ?? this.ticketID);
  }
  
  Photos copyWithModelFieldValues({
    ModelFieldValue<String?>? image,
    ModelFieldValue<String>? parkID,
    ModelFieldValue<String>? ticketID
  }) {
    return Photos._internal(
      id: id,
      image: image == null ? this.image : image.value,
      parkID: parkID == null ? this.parkID : parkID.value,
      ticketID: ticketID == null ? this.ticketID : ticketID.value
    );
  }
  
  Photos.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _image = json['image'],
      _parkID = json['parkID'],
      _ticketID = json['ticketID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'image': _image, 'parkID': _parkID, 'ticketID': _ticketID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'image': _image,
    'parkID': _parkID,
    'ticketID': _ticketID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PhotosModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PhotosModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final IMAGE = amplify_core.QueryField(fieldName: "image");
  static final PARKID = amplify_core.QueryField(fieldName: "parkID");
  static final TICKETID = amplify_core.QueryField(fieldName: "ticketID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Photos";
    modelSchemaDefinition.pluralName = "Photos";
    
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
      amplify_core.ModelIndex(fields: const ["parkID"], name: "byPark"),
      amplify_core.ModelIndex(fields: const ["ticketID"], name: "byTicket")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Photos.IMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Photos.PARKID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Photos.TICKETID,
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

class _PhotosModelType extends amplify_core.ModelType<Photos> {
  const _PhotosModelType();
  
  @override
  Photos fromJson(Map<String, dynamic> jsonData) {
    return Photos.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Photos';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Photos] in your schema.
 */
class PhotosModelIdentifier implements amplify_core.ModelIdentifier<Photos> {
  final String id;

  /** Create an instance of PhotosModelIdentifier using [id] the primary key. */
  const PhotosModelIdentifier({
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
  String toString() => 'PhotosModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PhotosModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}