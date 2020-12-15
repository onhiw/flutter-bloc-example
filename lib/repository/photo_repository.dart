import 'package:http/http.dart' as http;
import 'package:latihan_bloc/model/photos_model.dart';

class PhotoRepository {
  Future<List<PhotosModel>> getPhotos({int start, int limit}) async {
    final response = await http.get(
        "http://jsonplaceholder.typicode.com/photos?_star=$start&_limit=$limit");
    if (response.statusCode == 200) {
      return photosModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
