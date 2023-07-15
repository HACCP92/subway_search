import 'package:subway_search/data/dto/swopen_result_dto.dart';

extension ToSwopen on RealtimeArrivalList {
  Swopen toSwopen() {
    return Swopen(
      updnLine: updnLine ?? '데이터가 없습니다.',
      trainLineNm: trainLineNm ?? '데이터가 없습니다.',
      statnNm: statnNm ?? '데이터가 없습니다.',
      bstatnNm: bstatnNm ?? '데이터가 없습니다.',
      arvlMsg2: arvlMsg2 ?? '데이터가 없습니다.',
      arvlMsg3: arvlMsg3 ?? '데이터가 없습니다.',
      arvlCd: arvlCd ?? '데이터가 없습니다.',
      btrainSttus: btrainSttus ?? '데이터가 없습니다.',
    );
  }
}
