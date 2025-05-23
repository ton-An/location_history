import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:location_history/core/data/datasources/supabase_handler.dart';
import 'package:location_history/features/authentication/domain/models/device.model.dart';

abstract class DeviceRemoteDataSource {
  /// Saves the device's information to the database
  ///
  /// Parameters:
  /// - [Device] device: The device object to save.
  Future<void> saveDeviceInfoToDB({required Device device});
}

class DeviceRemoteDataSourceImpl implements DeviceRemoteDataSource {
  const DeviceRemoteDataSourceImpl({required this.supabaseHandler});

  final SupabaseHandler supabaseHandler;

  @override
  Future<void> saveDeviceInfoToDB({required Device device}) async {
    final OfflineFirstWithSupabaseRepository supabaseOfflineFirst =
        await supabaseHandler.supabaseOfflineFirst;

    await supabaseOfflineFirst.upsert(device);
  }
}
