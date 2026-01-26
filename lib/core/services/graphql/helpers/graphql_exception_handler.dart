import 'package:graphql/client.dart';
import 'package:sunnylon/core/common/helpers/app_failure.dart';

/// Helper class to handle GraphQL exceptions.
class GraphQLExceptionHandler {
  static AppFailure fromOperationException(OperationException exception) {
    if (exception.linkException != null) {
      final linkException = exception.linkException;
      if (linkException is NetworkException) {
        return AppFailure.network(message: 'Network error');
      } else if (linkException is ServerException) {
        return AppFailure.server(
          message: linkException.parsedResponse.toString(),
          statusCode: linkException.statusCode,
        );
      } else {
        return const AppFailure.common(message: 'Something went wrong');
      }
    }

    if (exception.graphqlErrors.isNotEmpty) {
      final firstError = exception.graphqlErrors.first;
      return AppFailure.server(message: firstError.message);
    }

    return const AppFailure.common(message: 'Something went wrong');
  }
}
