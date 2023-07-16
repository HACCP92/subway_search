import 'package:subway_search/domain/model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getArrivalInfo(String query);
}
