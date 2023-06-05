import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/device_active_controller.dart';

class DeviceActiveView extends GetView<DeviceActiveController> {
  const DeviceActiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeviceActiveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeviceActiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
