// import 'package:event_hub/xcore.dart';

// abstract class IScanQrRepository {
//   Future<String?> checkEvent(String id);
// }

// class ScanQrRepository extends BaseRepository implements IScanQrRepository {
//   ScanQrRepository() : super(path: 'event');

//   @override
//   Future<String?> checkEvent(String code) async {
//     final response = await get('/Event/checkEvent?code=$code');
//     var result = await checkError(response);
//     if (result == null) return null;
//     return result;
//   }
// }
