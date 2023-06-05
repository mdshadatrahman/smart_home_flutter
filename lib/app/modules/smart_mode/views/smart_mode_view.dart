import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/smart_mode_controller.dart';

class SmartModeView extends GetView<SmartModeController> {
  const SmartModeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartModeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SmartModeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
