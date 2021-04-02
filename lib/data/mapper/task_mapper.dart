import 'package:mobile_corporate_portal/data/api/model/api_task.dart';
import 'package:mobile_corporate_portal/data/mapper/difficulty_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/priority_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/status_mapper.dart';
import 'package:mobile_corporate_portal/data/mapper/worker_mapper.dart';
import 'package:mobile_corporate_portal/domain/model/task.dart';

class TaskMapper {
  static Task fromApi(ApiTask apiTask) => Task(
        id: apiTask.id,
        title: apiTask.title,
        description: apiTask.description,
        expirationDate: apiTask.expirationDate,
        shortExpirationDate: apiTask.shortExpirationDate,
        rewardCoins: apiTask.rewardCoins,
        rewardXp: apiTask.rewardXp,
        isExpired: apiTask.isExpired,
        attachedFileUrl: apiTask.attachedFileUrl,
        difficulty: apiTask.difficulty != null ? DifficultyMapper.fromApi(apiTask.difficulty) : null,
        status: apiTask.status != null ? StatusMapper.fromApi(apiTask.status) : null,
        priority: apiTask.priority != null ? PriorityMapper.fromApi(apiTask.priority) : null,
        worker: apiTask.worker != null ? WorkerMapper.fromApi(apiTask.worker) : null,
        author: apiTask.author != null ? WorkerMapper.fromApi(apiTask.author) : null,
      );
}
