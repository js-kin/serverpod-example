/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/test_endpoint.dart' as _i3;
import 'package:example_server/src/generated/example.dart' as _i4;
import 'package:example_server/src/generated/test.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'test': _i3.TestEndpoint()
        ..initialize(
          server,
          'test',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'createExample': _i1.MethodConnector(
          name: 'createExample',
          params: {
            'example': _i1.ParameterDescription(
              name: 'example',
              type: _i1.getType<_i4.Example>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).createExample(
            session,
            params['example'],
          ),
        ),
        'deleteExample': _i1.MethodConnector(
          name: 'deleteExample',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).deleteExample(
            session,
            params['id'],
          ),
        ),
        'updateExample': _i1.MethodConnector(
          name: 'updateExample',
          params: {
            'example': _i1.ParameterDescription(
              name: 'example',
              type: _i1.getType<_i4.Example>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).updateExample(
            session,
            params['example'],
          ),
        ),
        'getExamples': _i1.MethodConnector(
          name: 'getExamples',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint)
                  .getExamples(session),
        ),
      },
    );
    connectors['test'] = _i1.EndpointConnector(
      name: 'test',
      endpoint: endpoints['test']!,
      methodConnectors: {
        'createTest': _i1.MethodConnector(
          name: 'createTest',
          params: {
            'test': _i1.ParameterDescription(
              name: 'test',
              type: _i1.getType<_i5.Test>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['test'] as _i3.TestEndpoint).createTest(
            session,
            params['test'],
          ),
        ),
        'deleteTest': _i1.MethodConnector(
          name: 'deleteTest',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['test'] as _i3.TestEndpoint).deleteTest(
            session,
            params['id'],
          ),
        ),
        'updateTest': _i1.MethodConnector(
          name: 'updateTest',
          params: {
            'test': _i1.ParameterDescription(
              name: 'test',
              type: _i1.getType<_i5.Test>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['test'] as _i3.TestEndpoint).updateTest(
            session,
            params['test'],
          ),
        ),
        'getTests': _i1.MethodConnector(
          name: 'getTests',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['test'] as _i3.TestEndpoint).getTests(session),
        ),
        'getTest': _i1.MethodConnector(
          name: 'getTest',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['test'] as _i3.TestEndpoint).getTest(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
