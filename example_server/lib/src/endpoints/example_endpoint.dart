import 'package:serverpod/serverpod.dart';
import '../generated/example.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class ExampleEndpoint extends Endpoint {
  /// Create new example on the database
  Future<bool> createExample(Session session, Example example) async {
    await Example.insert(session, example);
    return true;
  }

  /// Delete example from database
  Future<bool> deleteExample(Session session, int id) async {
    final response =
        await Example.delete(session, where: (example) => example.id.equals(id));
    return response == 1;
  }

  /// Update an existing example with the given example object
  Future<bool> updateExample(Session session, Example example) async {
    final response = await Example.update(session, example);
    return response;
  }

  /// Retrieve all saved examples from the database
  Future<List<Example>> getExamples(Session session) async {
    final examples = Example.find(session);
    return examples;
  }
}
