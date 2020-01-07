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
  Widget _desktopBigProjectInfo;
  Widget _desktopProjectInfo;
  Widget _mobileProjectInfo;
  Widget _mobileMiniProjectInfo;

  @override
  Widget build(BuildContext context) {
    final DeviceType deviceType = subscribeToDeviceType(context);
    switch (deviceType) {
      case DeviceType.desktopBig:
        _desktopBigProjectInfo ??= _renderProjectInfo(DeviceType.desktopBig);
        return _desktopBigProjectInfo;
      case DeviceType.desktop:
        _desktopProjectInfo ??= _renderProjectInfo(DeviceType.desktop);
        return _desktopProjectInfo;
      case DeviceType.mobile:
        _mobileProjectInfo ??= _renderProjectInfo(DeviceType.mobile);
        return _mobileProjectInfo;
      case DeviceType.mobileMini:
        _mobileMiniProjectInfo ??= _renderProjectInfo(DeviceType.mobileMini);
        return _mobileMiniProjectInfo;
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
            crossAxisAlignment: isDesktopBased(deviceType)
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isDesktopBased(deviceType)
                  ? ProjectSubTitle(deviceType: deviceType)
                  : ProjectTitle(deviceType: deviceType),
              isDesktopBased(deviceType)
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
      case DeviceType.desktopBig:
        return Positioned(bottom: 50, right: 0, child: child);
      case DeviceType.desktop:
        return Positioned(bottom: 40, right: 0, child: child);
      case DeviceType.mobile:
        return Positioned(bottom: 30, right: 0, left: 0, child: child);
      case DeviceType.mobileMini:
        return Positioned(bottom: 20, right: 0, left: 0, child: child);
      default:
        return null;
    }
  }
}
