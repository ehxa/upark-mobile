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


/** This is an auto generated class representing the Payment type in your schema. */
class Payment extends amplify_core.Model {
  static const classType = const _PaymentModelType();
  final String id;
  final int? _card_number;
  final String? _first_name;
  final String? _surname;
  final int? _cvc;
  final String? _phone;
  final amplify_core.TemporalDate? _exp_date;
  final String? _userID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PaymentModelIdentifier get modelIdentifier {
      return PaymentModelIdentifier(
        id: id
      );
  }
  
  int? get card_number {
    return _card_number;
  }
  
  String? get first_name {
    return _first_name;
  }
  
  String? get surname {
    return _surname;
  }
  
  int? get cvc {
    return _cvc;
  }
  
  String? get phone {
    return _phone;
  }
  
  amplify_core.TemporalDate? get exp_date {
    return _exp_date;
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
  
  const Payment._internal({required this.id, card_number, first_name, surname, cvc, phone, exp_date, required userID, createdAt, updatedAt}): _card_number = card_number, _first_name = first_name, _surname = surname, _cvc = cvc, _phone = phone, _exp_date = exp_date, _userID = userID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Payment({String? id, int? card_number, String? first_name, String? surname, int? cvc, String? phone, amplify_core.TemporalDate? exp_date, required String userID}) {
    return Payment._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      card_number: card_number,
      first_name: first_name,
      surname: surname,
      cvc: cvc,
      phone: phone,
      exp_date: exp_date,
      userID: userID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
      id == other.id &&
      _card_number == other._card_number &&
      _first_name == other._first_name &&
      _surname == other._surname &&
      _cvc == other._cvc &&
      _phone == other._phone &&
      _exp_date == other._exp_date &&
      _userID == other._userID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Payment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("card_number=" + (_card_number != null ? _card_number!.toString() : "null") + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("surname=" + "$_surname" + ", ");
    buffer.write("cvc=" + (_cvc != null ? _cvc!.toString() : "null") + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("exp_date=" + (_exp_date != null ? _exp_date!.format() : "null") + ", ");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Payment copyWith({int? card_number, String? first_name, String? surname, int? cvc, String? phone, amplify_core.TemporalDate? exp_date, String? userID}) {
    return Payment._internal(
      id: id,
      card_number: card_number ?? this.card_number,
      first_name: first_name ?? this.first_name,
      surname: surname ?? this.surname,
      cvc: cvc ?? this.cvc,
      phone: phone ?? this.phone,
      exp_date: exp_date ?? this.exp_date,
      userID: userID ?? this.userID);
  }
  
  Payment copyWithModelFieldValues({
    ModelFieldValue<int?>? card_number,
    ModelFieldValue<String?>? first_name,
    ModelFieldValue<String?>? surname,
    ModelFieldValue<int?>? cvc,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<amplify_core.TemporalDate?>? exp_date,
    ModelFieldValue<String>? userID
  }) {
    return Payment._internal(
      id: id,
      card_number: card_number == null ? this.card_number : card_number.value,
      first_name: first_name == null ? this.first_name : first_name.value,
      surname: surname == null ? this.surname : surname.value,
      cvc: cvc == null ? this.cvc : cvc.value,
      phone: phone == null ? this.phone : phone.value,
      exp_date: exp_date == null ? this.exp_date : exp_date.value,
      userID: userID == null ? this.userID : userID.value
    );
  }
  
  Payment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _card_number = (json['card_number'] as num?)?.toInt(),
      _first_name = json['first_name'],
      _surname = json['surname'],
      _cvc = (json['cvc'] as num?)?.toInt(),
      _phone = json['phone'],
      _exp_date = json['exp_date'] != null ? amplify_core.TemporalDate.fromString(json['exp_date']) : null,
      _userID = json['userID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'card_number': _card_number, 'first_name': _first_name, 'surname': _surname, 'cvc': _cvc, 'phone': _phone, 'exp_date': _exp_date?.format(), 'userID': _userID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'card_number': _card_number,
    'first_name': _first_name,
    'surname': _surname,
    'cvc': _cvc,
    'phone': _phone,
    'exp_date': _exp_date,
    'userID': _userID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PaymentModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PaymentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CARD_NUMBER = amplify_core.QueryField(fieldName: "card_number");
  static final FIRST_NAME = amplify_core.QueryField(fieldName: "first_name");
  static final SURNAME = amplify_core.QueryField(fieldName: "surname");
  static final CVC = amplify_core.QueryField(fieldName: "cvc");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final EXP_DATE = amplify_core.QueryField(fieldName: "exp_date");
  static final USERID = amplify_core.QueryField(fieldName: "userID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Payment";
    modelSchemaDefinition.pluralName = "Payments";
    
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
      key: Payment.CARD_NUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.FIRST_NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.SURNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.CVC,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.EXP_DATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Payment.USERID,
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

class _PaymentModelType extends amplify_core.ModelType<Payment> {
  const _PaymentModelType();
  
  @override
  Payment fromJson(Map<String, dynamic> jsonData) {
    return Payment.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Payment';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Payment] in your schema.
 */
class PaymentModelIdentifier implements amplify_core.ModelIdentifier<Payment> {
  final String id;

  /** Create an instance of PaymentModelIdentifier using [id] the primary key. */
  const PaymentModelIdentifier({
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
  String toString() => 'PaymentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PaymentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}