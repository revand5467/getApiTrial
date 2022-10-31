import 'package:get/get.dart';
import 'package:http/http.dart ' as http;

class DataController extends GetxController {
  var isDataLoading = false.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}
  getApi() async {
    try {
      isDataLoading(true);
      var client = http.Client();
      var url = Uri.https('ttps://jsonplaceholder.typicode.com/posts');
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        print('success');
      }
    } catch (e) {
      print(e);
    }
  }
}
