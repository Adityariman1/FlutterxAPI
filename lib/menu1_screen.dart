import 'package:flutter/material.dart';
import 'package:pkl/data_kategori.dart';

class MenuScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataKategori()),
              );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.category,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Kategori", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.wallet_giftcard_sharp,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Barang", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people_alt,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Pembeli", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.wallet_membership,
                      size: 70,
                      color: Color.fromARGB(255, 57, 136, 135),
                    ),
                    Text("Transaksi", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
