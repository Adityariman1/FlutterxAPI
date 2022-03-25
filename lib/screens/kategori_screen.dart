import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/kategori_controller.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KategoriController kategoricontroller = Get.put(KategoriController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("kategori"),
        centerTitle: true,
      ),
      body: Obx(
        () => kategoricontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: kategoricontroller.kategoriList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 400,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.redAccent]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "id : " +
                                  kategoricontroller.kategoriList[index].id
                                      .toString(),
                              style: TextStyle(backgroundColor: Colors.amber),
                            ),
                            Text(
                                "Keterangan : " +
                                    kategoricontroller
                                        .kategoriList[index].keterangan
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                            Text(
                                "nama_kategori : " +
                                    kategoricontroller
                                        .kategoriList[index].namaKategori
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
