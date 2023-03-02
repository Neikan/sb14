// Package imports:
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:weather/ui/const/common.dart';
import 'package:weather/ui/utils/common.dart';

part 'state_app_observable.g.dart';

class StateApp = DataState with _$StateApp;

abstract class DataState with Store {
  @observable
  double cloudiness = 0.0;

  @action
  void up() {
    if (cloudiness < maxCloudiness) {
      cloudiness = getCloudiness(cloudiness, true);
    }
  }

  @action
  void down() {
    if (cloudiness > minSunny) {
      cloudiness = getCloudiness(cloudiness, false);
    }
  }
}
