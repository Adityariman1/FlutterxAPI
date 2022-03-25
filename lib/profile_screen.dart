import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
              child: ClipOval(
                child: Image.asset(
                  'assets/img/g.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 30, right: 30),
              padding: const EdgeInsets.all(10),
              child: DataTable(
                dataTextStyle: TextStyle(color: Colors.white),
                columns: const <DataColumn>[
                  DataColumn(
                      label:
                          Text("Nama", style: TextStyle(color: Colors.white))),
                  DataColumn(
                      label: Text("Aditya Riman Sanjaya",
                          style: TextStyle(color: Colors.white))),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text("Tempat, tanggal lahir")),
                      DataCell(Text("Garut, 9 Juni 2004")),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text("Jenis Kelamin")),
                      DataCell(Text("Laki-laki")),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text("Sekolah")),
                      DataCell(Text("SMK Assalaam Bandung")),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text("Kelas")),
                      DataCell(Text("XII RPL 1")),
                    ],
                  ),
                ],
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}