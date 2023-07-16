import 'package:subway_search/data/api/swopen_api.dart';
import 'package:subway_search/domain/model/subway.dart';
import 'package:subway_search/domain/repository/subway_repository.dart';

abstract class SwopenRepositoryImpl implements SubwayRepository {
  final _api = SwopenApi();

  @override
  Future<List<Subway>> getSubways(String query) async {
    final resultDto = await _api.getSwopenResult(query);

    if (resultDto.ealtimeArrivalList == null) {
      return [];
    }
    return resultDto.ealtimeArrivalList!.map((e) => e.toSubway()).toList();
  }
}
