class Kucing {
  String? nama;
  int? umur;

  Kucing(this.nama, this.umur);
}

void main() {
  Kucing kucing1 = Kucing('Meong', 30);

  print(kucing1.nama);
  print(kucing1.umur);
}
