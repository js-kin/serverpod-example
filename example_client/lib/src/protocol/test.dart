/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Test extends _i1.SerializableEntity {
  Test._({
    this.id,
    required this.data1,
    required this.data2,
    required this.data3,
    required this.date,
  });

  factory Test({
    int? id,
    required String data1,
    required String data2,
    required String data3,
    required DateTime date,
  }) = _TestImpl;

  factory Test.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Test(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      data1:
          serializationManager.deserialize<String>(jsonSerialization['data1']),
      data2:
          serializationManager.deserialize<String>(jsonSerialization['data2']),
      data3:
          serializationManager.deserialize<String>(jsonSerialization['data3']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String data1;

  String data2;

  String data3;

  DateTime date;

  Test copyWith({
    int? id,
    String? data1,
    String? data2,
    String? data3,
    DateTime? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'data1': data1,
      'data2': data2,
      'data3': data3,
      'date': date.toJson(),
    };
  }
}

class _Undefined {}

class _TestImpl extends Test {
  _TestImpl({
    int? id,
    required String data1,
    required String data2,
    required String data3,
    required DateTime date,
  }) : super._(
          id: id,
          data1: data1,
          data2: data2,
          data3: data3,
          date: date,
        );

  @override
  Test copyWith({
    Object? id = _Undefined,
    String? data1,
    String? data2,
    String? data3,
    DateTime? date,
  }) {
    return Test(
      id: id is int? ? id : this.id,
      data1: data1 ?? this.data1,
      data2: data2 ?? this.data2,
      data3: data3 ?? this.data3,
      date: date ?? this.date,
    );
  }
}
