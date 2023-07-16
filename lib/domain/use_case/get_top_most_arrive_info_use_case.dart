import 'package:subway_search/core/router/result.dart';
import 'package:subway_search/domain/model/subway.dart';
import 'package:subway_search/domain/repository/subway_repository.dart';

class GetTopMostArriveInfoUseCase {
  final SubwayRepository _subwayRepository;

  GetTopMostArriveInfoUseCase(this._subwayRepository);

  Future<Result<List<Subway>>> execute(String query) async {
    try {
      final subways = await _subwayRepository.getArrivalInfo(query);
      return Result.success(subways.toList());
    } catch (error) {
      return const Result.error('에러가 발생했습니다.');
    }
  }
}
