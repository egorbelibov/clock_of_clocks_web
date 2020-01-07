enum DeviceType {
  desktopBig,
  desktop,
  mobile,
  mobileMini,
}

bool isDesktopBased(DeviceType deviceType) {
  return (deviceType == DeviceType.desktopBig ||
      deviceType == DeviceType.desktop);
}
