import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/usage_controller.dart';

class UsageView extends GetView<UsageController> {
  const UsageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UsageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UsageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
