import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:newbee/models/feed.model.dart';

import 'package:newbee/repositories/nextcloud.api.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final api = Modular.get<NextCloudNewRepository>();

  _HomeControllerBase() {
    getFeeds();
  }

  @observable
  ObservableList<Feeds> feeds;

  @action
  getFeeds() async {
    // feeds = await api.getFeeds();
  }
}
