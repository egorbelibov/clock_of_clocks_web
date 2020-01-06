import 'package:flutter/material.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart' show subscribeToDeviceType;
import 'components/action_button/action_button.dart';
import 'components/project_sub_title/project_sub_title.dart';
import 'components/project_title/project_title.dart';

class ProjectInfo extends StatefulWidget {
  @override
  _ProjectInfoState createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  Widget desktopProjectInfo;
  Widget mobileProjectInfo;
  Widget mobileMiniProjectInfo;

  @override
  Widget build(BuildContext context) {
    final DeviceType deviceType = subscribeToDeviceType(context);
    switch (deviceType) {
      case DeviceType.desktop:
        desktopProjectInfo ??= _renderProjectInfo(DeviceType.desktop);
        return desktopProjectInfo;
      case DeviceType.mobile:
        mobileProjectInfo ??= _renderProjectInfo(DeviceType.mobile);
        return mobileProjectInfo;
      case DeviceType.mobileMini:
        mobileMiniProjectInfo ??= _renderProjectInfo(DeviceType.mobileMini);
        return mobileMiniProjectInfo;
      default:
        assert(true); // Should never get into default.
        return null;
    }
  }

  Widget _renderProjectInfo(DeviceType deviceType) {
    return Stack(
      children: [
        _deviceTypeBasedPositioned(
          deviceType: deviceType,
          child: Column(
            crossAxisAlignment: deviceType == DeviceType.desktop
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              deviceType == DeviceType.desktop
                  ? ProjectSubTitle(deviceType: deviceType)
                  : ProjectTitle(deviceType: deviceType),
              deviceType == DeviceType.desktop
                  ? ProjectTitle(deviceType: deviceType)
                  : ProjectSubTitle(deviceType: deviceType),
              ActionButton('Project Source Code', deviceType: deviceType),
            ],
          ),
        ),
      ],
    );
  }

  Widget _deviceTypeBasedPositioned({
    @required DeviceType deviceType,
    @required Widget child,
  }) {
    switch (deviceType) {
      case DeviceType.desktop:
        return Positioned(bottom: 90, right: 0, child: child);
      case DeviceType.mobile:
        return Positioned(bottom: 30, right: 0, left: 0, child: child);
      case DeviceType.mobileMini:
        return Positioned(bottom: 20, right: 0, left: 0, child: child);
      default:
        return Positioned(bottom: 90, right: 0, child: child);
    }
  }
}
