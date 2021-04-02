import 'package:mobile_corporate_portal/data/api/model/api_difficulty.dart';
import 'package:mobile_corporate_portal/domain/model/difficulty.dart';

class DifficultyMapper {
  static Difficulty fromApi(ApiDifficulty apiDifficulty) => Difficulty(
        id: apiDifficulty.id,
        name: apiDifficulty.name,
        description: apiDifficulty.description,
      );
}
