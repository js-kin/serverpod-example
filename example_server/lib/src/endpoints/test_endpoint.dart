import 'package:serverpod/serverpod.dart';
import '../generated/test.dart';

// This is an test endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.test` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class TestEndpoint extends Endpoint {
  /// Create new test on the database
  Future<bool> createTest(Session session, Test test) async {
    await Test.insert(session, test);
    return true;
  }

  /// Delete test from database
  Future<bool> deleteTest(Session session, int id) async {
    final response =
        await Test.delete(session, where: (test) => test.id.equals(id));
    return response == 1;
  }

  /// Update an existing test with the given test object
  Future<bool> updateTest(Session session, Test test) async {
    final response = await Test.update(session, test);
    return response;
  }

  /// Retrieve all saved tests from the database
  Future<List<Test>> getTests(Session session) async {
    final tests = Test.find(session);
    return tests;
  }

  /// Retrieve a saved tests from the database
  Future<Test?> getTest(Session session, int id) async {
    final _test = Test.findById(session, id);
    return _test;
  }
}
