/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:example_client/src/protocol/example.dart' as _i3;
import 'package:example_client/src/protocol/test.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  /// Create new example on the database
  _i2.Future<bool> createExample(_i3.Example example) =>
      caller.callServerEndpoint<bool>(
        'example',
        'createExample',
        {'example': example},
      );

  /// Delete example from database
  _i2.Future<bool> deleteExample(int id) => caller.callServerEndpoint<bool>(
        'example',
        'deleteExample',
        {'id': id},
      );

  /// Update an existing example with the given example object
  _i2.Future<bool> updateExample(_i3.Example example) =>
      caller.callServerEndpoint<bool>(
        'example',
        'updateExample',
        {'example': example},
      );

  /// Retrieve all saved examples from the database
  _i2.Future<List<_i3.Example>> getExamples() =>
      caller.callServerEndpoint<List<_i3.Example>>(
        'example',
        'getExamples',
        {},
      );
}

/// {@category Endpoint}
class EndpointTest extends _i1.EndpointRef {
  EndpointTest(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'test';

  /// Create new test on the database
  _i2.Future<bool> createTest(_i4.Test test) => caller.callServerEndpoint<bool>(
        'test',
        'createTest',
        {'test': test},
      );

  /// Delete test from database
  _i2.Future<bool> deleteTest(int id) => caller.callServerEndpoint<bool>(
        'test',
        'deleteTest',
        {'id': id},
      );

  /// Update an existing test with the given test object
  _i2.Future<bool> updateTest(_i4.Test test) => caller.callServerEndpoint<bool>(
        'test',
        'updateTest',
        {'test': test},
      );

  /// Retrieve all saved tests from the database
  _i2.Future<List<_i4.Test>> getTests() =>
      caller.callServerEndpoint<List<_i4.Test>>(
        'test',
        'getTests',
        {},
      );

  /// Retrieve a saved tests from the database
  _i2.Future<_i4.Test?> getTest(int id) => caller.callServerEndpoint<_i4.Test?>(
        'test',
        'getTest',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    test = EndpointTest(this);
  }

  late final EndpointExample example;

  late final EndpointTest test;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'test': test,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
