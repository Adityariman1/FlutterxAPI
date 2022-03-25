import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/buku_controller.dart';

class BukuScreen extends StatelessWidget {
  const BukuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BukuController bukucontroller = Get.put(BukuController());
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
        title: Text("BUKU"),
        centerTitle: true,
      ),
      body: Obx(
        () => bukucontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: bukucontroller.bukuList.length,
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
                            Image.network(
                                "http://penjualan-buku.herokuapp.com/image/buku/" +
                                    bukucontroller.bukuList[index].cover
                                        .toString(),
                                fit: BoxFit.fitWidth),
                            Text(
                              "Judul : " +
                                  bukucontroller.bukuList[index].judulBuku
                                      .toString(),
                              style: TextStyle(backgroundColor: Colors.amber),
                            ),
                            Text(
                                "Keterangan : " +
                                    bukucontroller
                                        .bukuList[index].keterangan
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
