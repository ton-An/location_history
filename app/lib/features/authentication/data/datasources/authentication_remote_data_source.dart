import 'package:location_history/core/data/datasources/server_remote_handler.dart';
import 'package:location_history/core/misc/url_path_constants.dart';

/*
  To-Do:
    - [ ] Write unit tests
    - [ ] Standardize error handling and server calls
*/

abstract class AuthenticationRemoteDataSource {
  const AuthenticationRemoteDataSource();

  /// Checks if the server is reachable.
  ///
  /// Parameters:
  /// - [Uri] serverUrl: The URL of the server to check.
  ///
  /// Throws:
  /// - {@macro server_remote_handler_exceptions}
  Future<void> isServerReachable({required Uri serverUrl});

  /// Checks if the server is set up.
  ///
  /// Parameters:
  /// - [Uri] serverUrl: The URL of the server to check.
  ///
  /// Returns:
  /// - a [bool] indicating if the server is set up.
  ///
  /// Throws:
  /// - {@macro server_remote_handler_exceptions}
  Future<bool> isServerSetUp({required Uri serverUrl});
}

class AuthRemoteDataSourceImpl extends AuthenticationRemoteDataSource {
  const AuthRemoteDataSourceImpl({required this.serverRemoteHandler});

  final ServerRemoteHandler serverRemoteHandler;

  @override
  Future<bool> isServerSetUp({required Uri serverUrl}) async {
    final Uri fullUrl = serverUrl.replace(
      path: UrlPathConstants.isServerSetUpPath,
    );

    final Map<String, dynamic>? responseData = await serverRemoteHandler.get(
      url: fullUrl,
    );

    return responseData?["data"]?["is_server_set_up"]!;
  }

  @override
  Future<void> isServerReachable({required Uri serverUrl}) async {
    final Uri fullUrl = serverUrl.replace(
      path: UrlPathConstants.healthCheckPath,
    );

    await serverRemoteHandler.get(url: fullUrl);
  }
}
