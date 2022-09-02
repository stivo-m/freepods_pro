import 'package:flutter_blue_plus/flutter_blue_plus.dart';

abstract class IControlsFacade {
  /// [connectDevice] is a function that will assist in scanning for bluetooth
  /// devices, and will return a [BluetoothDevice] item that can be connected
  /// to. This, by default, should be an Oraimo device.
  Future<BluetoothDevice> connectDevice();

  /// [sendCommand] is a function that will assist in sending a command to the
  /// connected bluetooth device. This, by default, should be an Oraimo device.
  Future<dynamic> sendCommand(dynamic payload);

  /// [disconnect] will be called whenever there is need to disconnect the
  /// bluetooth device from the phone
  Future<void> disconnect(BluetoothDevice device);
}
