import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  // Constructor default
  Mahasiswa() {
    nama = '';
    jurusan = '';
    angkatan = 0;
  }

  // Constructor parameterized
  Mahasiswa.parameterized(this.nama, this.jurusan, this.angkatan);

  // Constructor fromJson
  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> data = jsonDecode(jsonString);
    nama = data['nama'];
    jurusan = data['jurusan'];
    angkatan = data['angkatan'];
  }
}
