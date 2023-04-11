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
          textAlign: TextAlign.center,
          task.title.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
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
          height: 700,
          width: 500,
          color: Get.isDarkMode
              ? const Color.fromARGB(255, 26, 37, 41)
              : const Color.fromARGB(255, 219, 239, 250),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text('Hello',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 30),
                child: const Text('You have a new reminder',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    )),
              ),
              Container(
                height: 500,
                width: 350,
                // icon : const Icon(Icons.download, size : 24.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Get.isDarkMode
                      ? Color.fromARGB(255, 1, 19, 21)
                      : const Color.fromARGB(255, 95, 156, 227),
                ),
                child: Column(
                  children: [
                    Container(
                      //Title
                      padding:
                          const EdgeInsets.only(left: 20, top: 50, bottom: 30),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.upcoming_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '  Title',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    //tieu de
                    Container(
                        //T
                        padding: const EdgeInsets.only(left: 0, bottom: 5),
                        child: Text(
                          task.title.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                    Container(
                      //time
                      padding:
                          const EdgeInsets.only(left: 20, top: 50, bottom: 30),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.alarm,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '  Time',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    //thoi gian
                    Container(
                        //T
                        padding: const EdgeInsets.only(left: 0, bottom: 5),
                        child: Text(
                          task.startTime.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                    Container(
                      // Description
                      padding:
                          const EdgeInsets.only(left: 20, top: 50, bottom: 30),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.description_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '  Description',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    //mo ta cong viec
                    Container(
                        //T
                        padding: const EdgeInsets.only(left: 0, bottom: 5),
                        child: Text(
                          task.note.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
