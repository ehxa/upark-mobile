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


/** This is an auto generated class representing the Ticket type in your schema. */
class Ticket extends amplify_core.Model {
  static const classType = const _TicketModelType();
  final String id;
  final String? _title;
  final String? _description;
  final String? _value;
  final amplify_core.TemporalDate? _date;
  final amplify_core.TemporalTime? _time;
  final Park? _park;
  final Spot? _spot;
  final Vehicle? _vehicle;
  final List<Photos>? _photos;
  final String? _userID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _ticketParkId;
  final String? _ticketSpotId;
  final String? _ticketVehicleId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TicketModelIdentifier get modelIdentifier {
      return TicketModelIdentifier(
        id: id
      );
  }
  
  String? get title {
    return _title;
  }
  
  String? get description {
    return _description;
  }
  
  String? get value {
    return _value;
  }
  
  amplify_core.TemporalDate? get date {
    return _date;
  }
  
  amplify_core.TemporalTime? get time {
    return _time;
  }
  
  Park? get park {
    return _park;
  }
  
  Spot? get spot {
    return _spot;
  }
  
  Vehicle? get vehicle {
    return _vehicle;
  }
  
  List<Photos>? get photos {
    return _photos;
  }
  
  String get userID {
    try {
      return _userID!;
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
  
  String? get ticketParkId {
    return _ticketParkId;
  }
  
  String? get ticketSpotId {
    return _ticketSpotId;
  }
  
  String? get ticketVehicleId {
    return _ticketVehicleId;
  }
  
  const Ticket._internal({required this.id, title, description, value, date, time, park, spot, vehicle, photos, required userID, createdAt, updatedAt, ticketParkId, ticketSpotId, ticketVehicleId}): _title = title, _description = description, _value = value, _date = date, _time = time, _park = park, _spot = spot, _vehicle = vehicle, _photos = photos, _userID = userID, _createdAt = createdAt, _updatedAt = updatedAt, _ticketParkId = ticketParkId, _ticketSpotId = ticketSpotId, _ticketVehicleId = ticketVehicleId;
  
  factory Ticket({String? id, String? title, String? description, String? value, amplify_core.TemporalDate? date, amplify_core.TemporalTime? time, Park? park, Spot? spot, Vehicle? vehicle, List<Photos>? photos, required String userID, String? ticketParkId, String? ticketSpotId, String? ticketVehicleId}) {
    return Ticket._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      value: value,
      date: date,
      time: time,
      park: park,
      spot: spot,
      vehicle: vehicle,
      photos: photos != null ? List<Photos>.unmodifiable(photos) : photos,
      userID: userID,
      ticketParkId: ticketParkId,
      ticketSpotId: ticketSpotId,
      ticketVehicleId: ticketVehicleId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ticket &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _value == other._value &&
      _date == other._date &&
      _time == other._time &&
      _park == other._park &&
      _spot == other._spot &&
      _vehicle == other._vehicle &&
      DeepCollectionEquality().equals(_photos, other._photos) &&
      _userID == other._userID &&
      _ticketParkId == other._ticketParkId &&
      _ticketSpotId == other._ticketSpotId &&
      _ticketVehicleId == other._ticketVehicleId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Ticket {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("value=" + "$_value" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("ticketParkId=" + "$_ticketParkId" + ", ");
    buffer.write("ticketSpotId=" + "$_ticketSpotId" + ", ");
    buffer.write("ticketVehicleId=" + "$_ticketVehicleId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Ticket copyWith({String? title, String? description, String? value, amplify_core.TemporalDate? date, amplify_core.TemporalTime? time, Park? park, Spot? spot, Vehicle? vehicle, List<Photos>? photos, String? userID, String? ticketParkId, String? ticketSpotId, String? ticketVehicleId}) {
    return Ticket._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      value: value ?? this.value,
      date: date ?? this.date,
      time: time ?? this.time,
      park: park ?? this.park,
      spot: spot ?? this.spot,
      vehicle: vehicle ?? this.vehicle,
      photos: photos ?? this.photos,
      userID: userID ?? this.userID,
      ticketParkId: ticketParkId ?? this.ticketParkId,
      ticketSpotId: ticketSpotId ?? this.ticketSpotId,
      ticketVehicleId: ticketVehicleId ?? this.ticketVehicleId);
  }
  
  Ticket copyWithModelFieldValues({
    ModelFieldValue<String?>? title,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? value,
    ModelFieldValue<amplify_core.TemporalDate?>? date,
    ModelFieldValue<amplify_core.TemporalTime?>? time,
    ModelFieldValue<Park?>? park,
    ModelFieldValue<Spot?>? spot,
    ModelFieldValue<Vehicle?>? vehicle,
    ModelFieldValue<List<Photos>?>? photos,
    ModelFieldValue<String>? userID,
    ModelFieldValue<String?>? ticketParkId,
    ModelFieldValue<String?>? ticketSpotId,
    ModelFieldValue<String?>? ticketVehicleId
  }) {
    return Ticket._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      value: value == null ? this.value : value.value,
      date: date == null ? this.date : date.value,
      time: time == null ? this.time : time.value,
      park: park == null ? this.park : park.value,
      spot: spot == null ? this.spot : spot.value,
      vehicle: vehicle == null ? this.vehicle : vehicle.value,
      photos: photos == null ? this.photos : photos.value,
      userID: userID == null ? this.userID : userID.value,
      ticketParkId: ticketParkId == null ? this.ticketParkId : ticketParkId.value,
      ticketSpotId: ticketSpotId == null ? this.ticketSpotId : ticketSpotId.value,
      ticketVehicleId: ticketVehicleId == null ? this.ticketVehicleId : ticketVehicleId.value
    );
  }
  
  Ticket.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description'],
      _value = json['value'],
      _date = json['date'] != null ? amplify_core.TemporalDate.fromString(json['date']) : null,
      _time = json['time'] != null ? amplify_core.TemporalTime.fromString(json['time']) : null,
      _park = json['park'] != null
        ? json['park']['serializedData'] != null
          ? Park.fromJson(new Map<String, dynamic>.from(json['park']['serializedData']))
          : Park.fromJson(new Map<String, dynamic>.from(json['park']))
        : null,
      _spot = json['spot'] != null
        ? json['spot']['serializedData'] != null
          ? Spot.fromJson(new Map<String, dynamic>.from(json['spot']['serializedData']))
          : Spot.fromJson(new Map<String, dynamic>.from(json['spot']))
        : null,
      _vehicle = json['vehicle'] != null
        ? json['vehicle']['serializedData'] != null
          ? Vehicle.fromJson(new Map<String, dynamic>.from(json['vehicle']['serializedData']))
          : Vehicle.fromJson(new Map<String, dynamic>.from(json['vehicle']))
        : null,
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
      _userID = json['userID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _ticketParkId = json['ticketParkId'],
      _ticketSpotId = json['ticketSpotId'],
      _ticketVehicleId = json['ticketVehicleId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description, 'value': _value, 'date': _date?.format(), 'time': _time?.format(), 'park': _park?.toJson(), 'spot': _spot?.toJson(), 'vehicle': _vehicle?.toJson(), 'photos': _photos?.map((Photos? e) => e?.toJson()).toList(), 'userID': _userID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'ticketParkId': _ticketParkId, 'ticketSpotId': _ticketSpotId, 'ticketVehicleId': _ticketVehicleId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'value': _value,
    'date': _date,
    'time': _time,
    'park': _park,
    'spot': _spot,
    'vehicle': _vehicle,
    'photos': _photos,
    'userID': _userID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'ticketParkId': _ticketParkId,
    'ticketSpotId': _ticketSpotId,
    'ticketVehicleId': _ticketVehicleId
  };

  static final amplify_core.QueryModelIdentifier<TicketModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TicketModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final VALUE = amplify_core.QueryField(fieldName: "value");
  static final DATE = amplify_core.QueryField(fieldName: "date");
  static final TIME = amplify_core.QueryField(fieldName: "time");
  static final PARK = amplify_core.QueryField(
    fieldName: "park",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Park'));
  static final SPOT = amplify_core.QueryField(
    fieldName: "spot",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Spot'));
  static final VEHICLE = amplify_core.QueryField(
    fieldName: "vehicle",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Vehicle'));
  static final PHOTOS = amplify_core.QueryField(
    fieldName: "photos",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Photos'));
  static final USERID = amplify_core.QueryField(fieldName: "userID");
  static final TICKETPARKID = amplify_core.QueryField(fieldName: "ticketParkId");
  static final TICKETSPOTID = amplify_core.QueryField(fieldName: "ticketSpotId");
  static final TICKETVEHICLEID = amplify_core.QueryField(fieldName: "ticketVehicleId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ticket";
    modelSchemaDefinition.pluralName = "Tickets";
    
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
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.VALUE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.DATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.TIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Ticket.PARK,
      isRequired: false,
      ofModelName: 'Park',
      associatedKey: Park.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Ticket.SPOT,
      isRequired: false,
      ofModelName: 'Spot',
      associatedKey: Spot.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Ticket.VEHICLE,
      isRequired: false,
      ofModelName: 'Vehicle',
      associatedKey: Vehicle.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Ticket.PHOTOS,
      isRequired: false,
      ofModelName: 'Photos',
      associatedKey: Photos.TICKETID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.USERID,
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.TICKETPARKID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.TICKETSPOTID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Ticket.TICKETVEHICLEID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _TicketModelType extends amplify_core.ModelType<Ticket> {
  const _TicketModelType();
  
  @override
  Ticket fromJson(Map<String, dynamic> jsonData) {
    return Ticket.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Ticket';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Ticket] in your schema.
 */
class TicketModelIdentifier implements amplify_core.ModelIdentifier<Ticket> {
  final String id;

  /** Create an instance of TicketModelIdentifier using [id] the primary key. */
  const TicketModelIdentifier({
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
  String toString() => 'TicketModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TicketModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}