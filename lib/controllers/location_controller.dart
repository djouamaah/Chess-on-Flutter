import 'package:get/get.dart';
import '../util/localizer.dart';

class LocationController extends GetxController {
  var location = "".obs;

  void setLocation(String newLocation) {
    location = newLocation.obs;
  }

  void updateLocation() {
    determinePosition()
        .then((value) => location = value.toString().obs)
        .then((value) => print(location));
  }
}
