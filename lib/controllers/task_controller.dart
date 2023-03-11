import 'package:get/get.dart';

import '../db/db_helper.dart';
import '../models/task.dart';

class TaskController extends GetxController {
  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task!);
  }
}
