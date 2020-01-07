import 'package:flutter/material.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import '../../g_state/device.dart';
import 'containers/content/content.dart';
import 'containers/footer/footer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Device _device;
  Widget _homeScreenWidget;

  @override
  void initState() {
    super.initState();
    _device = PropertyChangeProvider.of<Device>(context, listen: false).value;
    assert(_device != null);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Execute assynchronously at the end of frame.
    var deviceSize = MediaQuery.of(context).size;
    Future.microtask(() {
      _device?.deviceWidth = deviceSize.width;
      _device?.deviceHeight = deviceSize.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    _homeScreenWidget ??= _renderWidget(context);
    return _homeScreenWidget;
  }

  Widget _renderWidget(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Content(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
