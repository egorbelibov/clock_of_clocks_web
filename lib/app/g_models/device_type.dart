// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
