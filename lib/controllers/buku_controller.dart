import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pkl/services/buku_service.dart';

import '../models/buku_model.dart';

class BukuController extends GetxController {
  var bukuList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBukuData();
  }

  void fetchBukuData() async {
    try {
      isLoading(true);
      var buku = await BukuService.fetchBukuData();
      bukuList.value = buku.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
