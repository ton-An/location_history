import 'package:dartz/dartz.dart';
import 'package:location_history/core/failures/failure.dart';
import 'package:location_history/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:location_history/features/authentication/domain/usecases/initialize_server_connection.dart';

/// {@template initialize_saved_server_connection}
/// Initializes the server connection saved by the app
///
/// Failures:
/// - TBD
/// {@endtemplate}
class InitializeSavedServerConnection {
  /// {@macro initialize_saved_server_connection}
  const InitializeSavedServerConnection({
    required this.authenticationRepository,
    required this.initializeServerConnection,
  });

  final AuthenticationRepository authenticationRepository;
  final InitializeServerConnection initializeServerConnection;

  /// {@macro initialize_saved_server_connection}
  Future<Either<Failure, None>> call() {
    return _getSavedServerUrl();
  }

  Future<Either<Failure, None>> _getSavedServerUrl() async {
    final Either<Failure, String> savedUrlEither =
        await authenticationRepository.getSavedServerUrl();

    return savedUrlEither.fold(Left.new, (String serverUrl) {
      return _initializeServerConnection(serverUrl: serverUrl);
    });
  }

  Future<Either<Failure, None>> _initializeServerConnection({
    required String serverUrl,
  }) {
    return initializeServerConnection(serverUrl: serverUrl);
  }
}
