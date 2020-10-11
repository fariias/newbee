import 'package:dio/dio.dart';
import 'package:newbee/models/feed.model.dart';

class NextCloudNewRepository {
  final Dio dio = Dio();

  String url = "https://example.nexcloud.com/index.php/apps/news/api/v1-2/";

  Future<List<Feeds>> getFeeds() async {
    dio.options.headers["authorization"] =
        "Basic base64(nextcloud_user:nextcloud_pass)";

    Response response = await dio.get('$url/feeds');

    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return FeedResponse.fromJson(response.data).feeds;
    }
  }
}
