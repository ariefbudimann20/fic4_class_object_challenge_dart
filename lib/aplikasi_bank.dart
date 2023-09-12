class Nasabah {
  String? nama;
  String? alamat;
  int? saldo;

  Nasabah(this.nama, this.alamat, this.saldo);

  int? simpan(int? jumlah) {
    saldo = saldo! + jumlah!;
    return jumlah;
  }

  int? ambil(int? jumlah) {
    if (saldo! >= jumlah!) {
      saldo = saldo! - jumlah;
      return jumlah;
    } else {
      print("Saldo tidak mencukupi.");
    }
  }
}

void main() {
  var nasabah1 = Nasabah("ARIEF", "Jl. Raya 123", 0);
  var nasabah2 = Nasabah("BUDI", "Jl. Merdeka 456", 0);

  nasabah1.simpan(1000);
  nasabah1.ambil(500);

  nasabah2.simpan(1500);
  nasabah2.ambil(2000);

  print("Saldo terakhir ${nasabah1.nama}: ${nasabah1.saldo}");
  print("Saldo terakhir ${nasabah2.nama}: ${nasabah2.saldo}");
}
