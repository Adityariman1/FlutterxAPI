class BukuModel {
  bool? succes;
  String? message;
  List<Data>? data;

  BukuModel({this.succes, this.message, this.data});

  BukuModel.fromJson(Map<String, dynamic> json) {
    succes = json['succes'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['succes'] = this.succes;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? idKategori;
  String? judulBuku;
  int? harga;
  String? cover;
  String? keterangan;
  String? pengarangBuku;
  int? stok;
  int? tahunTerbit;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.idKategori,
      this.judulBuku,
      this.harga,
      this.cover,
      this.keterangan,
      this.pengarangBuku,
      this.stok,
      this.tahunTerbit,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idKategori = json['id_kategori'];
    judulBuku = json['judul_buku'];
    harga = json['harga'];
    cover = json['cover'];
    keterangan = json['keterangan'];
    pengarangBuku = json['pengarang_buku'];
    stok = json['stok'];
    tahunTerbit = json['tahun_terbit'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_kategori'] = this.idKategori;
    data['judul_buku'] = this.judulBuku;
    data['harga'] = this.harga;
    data['cover'] = this.cover;
    data['keterangan'] = this.keterangan;
    data['pengarang_buku'] = this.pengarangBuku;
    data['stok'] = this.stok;
    data['tahun_terbit'] = this.tahunTerbit;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
