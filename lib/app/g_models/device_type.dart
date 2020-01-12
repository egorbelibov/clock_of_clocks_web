enum DeviceType {
  desktopBig,
  desktop,
  mobile,
  mobileMini,
}

extension AptDeviceType on DeviceType {
  bool isDesktopBased() {
    return this == DeviceType.desktopBig || this == DeviceType.desktop;
  }
}
