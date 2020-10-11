import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:newbee/pages/home/home.page.dart';
import 'package:newbee/repositories/nextcloud.api.dart';

import 'app.widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NextCloudNewRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
