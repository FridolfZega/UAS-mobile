void main() {
  // Ganti dengan nama dan NIM kamu
  String nama = "Fridolf Berlin Torotodo Zega";
  String nim = "20235520003";

  print("Bilangan prima dari 0 sampai 201:\n");

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima - $nama ($nim)");
    }
  }
}

// Fungsi untuk mengecek apakah sebuah bilangan adalah bilangan prima
bool isPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}
