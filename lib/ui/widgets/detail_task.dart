import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/task.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  const DetailPage({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        title: Text(
          task.title.toString(),
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Get.isDarkMode ? Colors.grey[600] : Colors.grey[300]),
          child: Text(task.note.toString()),
        ),
      ),
    );
  }
}
