import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_rooms_controller.dart';

class AllRoomsView extends GetView<AllRoomsController> {
  const AllRoomsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllRoomsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllRoomsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
