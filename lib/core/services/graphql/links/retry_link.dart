import 'dart:async';

import 'package:graphql/client.dart';

class RetryLink extends Link {
  final int maxRetries;
  final Duration delay;

  RetryLink({this.maxRetries = 3, this.delay = const Duration(seconds: 1)});

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    int attempt = 0;
    while (true) {
      try {
        // Pasamos la petición hacia adelante y esperamos la respuesta
        await for (final result in forward!(request)) {
          // Si GraphQL devuelve errores en el body que consideras "transitorios"
          // podrías evaluarlos aquí, pero usualmente el retry es para excepciones de transporte.
          yield result;
        }
        break; // Éxito, salimos del loop
      } catch (e) {
        // Aquí capturamos excepciones de red (ej: SocketException)
        if (attempt >= maxRetries) {
          rethrow;
        }
        attempt++;
        await Future.delayed(delay * attempt); // Backoff exponencial simple
        // El loop continúa y reintenta
      }
    }
  }
}
