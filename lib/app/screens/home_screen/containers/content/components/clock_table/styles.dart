import '../../../../../../g_models/device_type.dart';

double clockTableHeight(DeviceType deviceType, double deviceHeight) {
  assert(deviceType != null);
  assert(deviceHeight != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
      return deviceHeight / 1.55;
    case DeviceType.desktop:
      return deviceHeight / 1.70;
    case DeviceType.mobile:
    case DeviceType.mobileMini:
      return deviceHeight / 1.80;
    default:
      return null;
  }
}
