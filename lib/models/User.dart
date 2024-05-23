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


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _username;
  final String? _password;
  final String? _email;
  final String? _phone;
  final String? _first_name;
  final String? _surname;
  final int? _age;
  final String? _country;
  final List<Payment>? _payments;
  final List<UserVehicle>? _vehicles;
  final List<Review>? _reviews;
  final List<Ticket>? _tickets;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String? get username {
    return _username;
  }
  
  String? get password {
    return _password;
  }
  
  String? get email {
    return _email;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get surname {
    return _surname;
  }
  
  int? get age {
    return _age;
  }
  
  String? get country {
    return _country;
  }
  
  List<Payment>? get payments {
    return _payments;
  }
  
  List<UserVehicle>? get vehicles {
    return _vehicles;
  }
  
  List<Review>? get reviews {
    return _reviews;
  }
  
  List<Ticket>? get tickets {
    return _tickets;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const User._internal({required this.id, username, password, email, phone, first_name, surname, age, country, payments, vehicles, reviews, tickets, createdAt, updatedAt}): _username = username, _password = password, _email = email, _phone = phone, _first_name = first_name, _surname = surname, _age = age, _country = country, _payments = payments, _vehicles = vehicles, _reviews = reviews, _tickets = tickets, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, String? username, String? password, String? email, String? phone, String? first_name, String? surname, int? age, String? country, List<Payment>? payments, List<UserVehicle>? vehicles, List<Review>? reviews, List<Ticket>? tickets}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      username: username,
      password: password,
      email: email,
      phone: phone,
      first_name: first_name,
      surname: surname,
      age: age,
      country: country,
      payments: payments != null ? List<Payment>.unmodifiable(payments) : payments,
      vehicles: vehicles != null ? List<UserVehicle>.unmodifiable(vehicles) : vehicles,
      reviews: reviews != null ? List<Review>.unmodifiable(reviews) : reviews,
      tickets: tickets != null ? List<Ticket>.unmodifiable(tickets) : tickets);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _username == other._username &&
      _password == other._password &&
      _email == other._email &&
      _phone == other._phone &&
      _first_name == other._first_name &&
      _surname == other._surname &&
      _age == other._age &&
      _country == other._country &&
      DeepCollectionEquality().equals(_payments, other._payments) &&
      DeepCollectionEquality().equals(_vehicles, other._vehicles) &&
      DeepCollectionEquality().equals(_reviews, other._reviews) &&
      DeepCollectionEquality().equals(_tickets, other._tickets);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("password=" + "$_password" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("surname=" + "$_surname" + ", ");
    buffer.write("age=" + (_age != null ? _age!.toString() : "null") + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? username, String? password, String? email, String? phone, String? first_name, String? surname, int? age, String? country, List<Payment>? payments, List<UserVehicle>? vehicles, List<Review>? reviews, List<Ticket>? tickets}) {
    return User._internal(
      id: id,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      first_name: first_name ?? this.first_name,
      surname: surname ?? this.surname,
      age: age ?? this.age,
      country: country ?? this.country,
      payments: payments ?? this.payments,
      vehicles: vehicles ?? this.vehicles,
      reviews: reviews ?? this.reviews,
      tickets: tickets ?? this.tickets);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String?>? username,
    ModelFieldValue<String?>? password,
    ModelFieldValue<String?>? email,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<String?>? first_name,
    ModelFieldValue<String?>? surname,
    ModelFieldValue<int?>? age,
    ModelFieldValue<String?>? country,
    ModelFieldValue<List<Payment>?>? payments,
    ModelFieldValue<List<UserVehicle>?>? vehicles,
    ModelFieldValue<List<Review>?>? reviews,
    ModelFieldValue<List<Ticket>?>? tickets
  }) {
    return User._internal(
      id: id,
      username: username == null ? this.username : username.value,
      password: password == null ? this.password : password.value,
      email: email == null ? this.email : email.value,
      phone: phone == null ? this.phone : phone.value,
      first_name: first_name == null ? this.first_name : first_name.value,
      surname: surname == null ? this.surname : surname.value,
      age: age == null ? this.age : age.value,
      country: country == null ? this.country : country.value,
      payments: payments == null ? this.payments : payments.value,
      vehicles: vehicles == null ? this.vehicles : vehicles.value,
      reviews: reviews == null ? this.reviews : reviews.value,
      tickets: tickets == null ? this.tickets : tickets.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _username = json['username'],
      _password = json['password'],
      _email = json['email'],
      _phone = json['phone'],
      _first_name = json['first_name'],
      _surname = json['surname'],
      _age = (json['age'] as num?)?.toInt(),
      _country = json['country'],
      _payments = json['payments']  is Map
        ? (json['payments']['items'] is List
          ? (json['payments']['items'] as List)
              .where((e) => e != null)
              .map((e) => Payment.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['payments'] is List
          ? (json['payments'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Payment.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _vehicles = json['vehicles']  is Map
        ? (json['vehicles']['items'] is List
          ? (json['vehicles']['items'] as List)
              .where((e) => e != null)
              .map((e) => UserVehicle.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['vehicles'] is List
          ? (json['vehicles'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => UserVehicle.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
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
      _tickets = json['tickets']  is Map
        ? (json['tickets']['items'] is List
          ? (json['tickets']['items'] as List)
              .where((e) => e != null)
              .map((e) => Ticket.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['tickets'] is List
          ? (json['tickets'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Ticket.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'username': _username, 'password': _password, 'email': _email, 'phone': _phone, 'first_name': _first_name, 'surname': _surname, 'age': _age, 'country': _country, 'payments': _payments?.map((Payment? e) => e?.toJson()).toList(), 'vehicles': _vehicles?.map((UserVehicle? e) => e?.toJson()).toList(), 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'tickets': _tickets?.map((Ticket? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'username': _username,
    'password': _password,
    'email': _email,
    'phone': _phone,
    'first_name': _first_name,
    'surname': _surname,
    'age': _age,
    'country': _country,
    'payments': _payments,
    'vehicles': _vehicles,
    'reviews': _reviews,
    'tickets': _tickets,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final USERNAME = amplify_core.QueryField(fieldName: "username");
  static final PASSWORD = amplify_core.QueryField(fieldName: "password");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final FIRST_NAME = amplify_core.QueryField(fieldName: "first_name");
  static final SURNAME = amplify_core.QueryField(fieldName: "surname");
  static final AGE = amplify_core.QueryField(fieldName: "age");
  static final COUNTRY = amplify_core.QueryField(fieldName: "country");
  static final PAYMENTS = amplify_core.QueryField(
    fieldName: "payments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Payment'));
  static final VEHICLES = amplify_core.QueryField(
    fieldName: "vehicles",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserVehicle'));
  static final REVIEWS = amplify_core.QueryField(
    fieldName: "reviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final TICKETS = amplify_core.QueryField(
    fieldName: "tickets",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Ticket'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
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
      key: User.USERNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PASSWORD,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.FIRST_NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.SURNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.AGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.COUNTRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.PAYMENTS,
      isRequired: false,
      ofModelName: 'Payment',
      associatedKey: Payment.USERID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.VEHICLES,
      isRequired: false,
      ofModelName: 'UserVehicle',
      associatedKey: UserVehicle.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.USERID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.TICKETS,
      isRequired: false,
      ofModelName: 'Ticket',
      associatedKey: Ticket.USERID
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

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}