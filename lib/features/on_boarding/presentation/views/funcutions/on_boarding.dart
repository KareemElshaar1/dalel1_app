import '../../../../../core/database/cache/cahche_helper.dart';
import '../../../../../core/services/sevice_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingIsVisited", value: true);
}
