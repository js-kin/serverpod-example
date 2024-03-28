/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Test extends _i1.TableRow {
  Test._({
    int? id,
    required this.data1,
    required this.data2,
    required this.data3,
    required this.date,
  }) : super(id);

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

  static final t = TestTable();

  static const db = TestRepository._();

  String data1;

  String data2;

  String data3;

  DateTime date;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'data1': data1,
      'data2': data2,
      'data3': data3,
      'date': date,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'data1': data1,
      'data2': data2,
      'data3': data3,
      'date': date.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'data1':
        data1 = value;
        return;
      case 'data2':
        data2 = value;
        return;
      case 'data3':
        data3 = value;
        return;
      case 'date':
        date = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Test>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Test>(
      where: where != null ? where(Test.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Test?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Test>(
      where: where != null ? where(Test.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Test?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Test>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Test>(
      where: where(Test.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Test row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Test row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Test row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Test>(
      where: where != null ? where(Test.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TestInclude include() {
    return TestInclude._();
  }

  static TestIncludeList includeList({
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TestTable>? orderByList,
    TestInclude? include,
  }) {
    return TestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Test.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Test.t),
      include: include,
    );
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

class TestTable extends _i1.Table {
  TestTable({super.tableRelation}) : super(tableName: 'test') {
    data1 = _i1.ColumnString(
      'data1',
      this,
    );
    data2 = _i1.ColumnString(
      'data2',
      this,
    );
    data3 = _i1.ColumnString(
      'data3',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
  }

  late final _i1.ColumnString data1;

  late final _i1.ColumnString data2;

  late final _i1.ColumnString data3;

  late final _i1.ColumnDateTime date;

  @override
  List<_i1.Column> get columns => [
        id,
        data1,
        data2,
        data3,
        date,
      ];
}

@Deprecated('Use TestTable.t instead.')
TestTable tTest = TestTable();

class TestInclude extends _i1.IncludeObject {
  TestInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Test.t;
}

class TestIncludeList extends _i1.IncludeList {
  TestIncludeList._({
    _i1.WhereExpressionBuilder<TestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Test.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Test.t;
}

class TestRepository {
  const TestRepository._();

  Future<List<Test>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Test>(
      where: where?.call(Test.t),
      orderBy: orderBy?.call(Test.t),
      orderByList: orderByList?.call(Test.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Test?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? offset,
    _i1.OrderByBuilder<TestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Test>(
      where: where?.call(Test.t),
      orderBy: orderBy?.call(Test.t),
      orderByList: orderByList?.call(Test.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Test?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Test>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Test>> insert(
    _i1.Session session,
    List<Test> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Test>(
      rows,
      transaction: transaction,
    );
  }

  Future<Test> insertRow(
    _i1.Session session,
    Test row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Test>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Test>> update(
    _i1.Session session,
    List<Test> rows, {
    _i1.ColumnSelections<TestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Test>(
      rows,
      columns: columns?.call(Test.t),
      transaction: transaction,
    );
  }

  Future<Test> updateRow(
    _i1.Session session,
    Test row, {
    _i1.ColumnSelections<TestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Test>(
      row,
      columns: columns?.call(Test.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Test> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Test>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Test row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Test>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Test>(
      where: where(Test.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Test>(
      where: where?.call(Test.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
