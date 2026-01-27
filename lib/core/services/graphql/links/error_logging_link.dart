import 'package:graphql/client.dart';

// Un Link simple para loguear errores
class ErrorLoggingLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return forward!(request)
        .map((response) {
          if (response.errors != null && response.errors!.isNotEmpty) {
            // Errores de GraphQL (devueltos por el backend)
            print('🔴 GraphQL Errors: ${response.errors}');
          }
          return response;
        })
        .handleError((error) {
          // Errores de Red / Excepciones (Network, Parsing)
          print('☠️ Network/System Error: $error');
          throw error;
        });
  }
}
