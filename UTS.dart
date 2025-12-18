// 1.
String namaKarakter = "Ksatria";
int healthPoints = 100;
int level = 1;

// 6. 
List<String> inventaris = [];

// 14. 
List<Skill> daftarSkill = [];

// 18. 
int manaPoints = 50;

// 2. 
void tampilkanStatus() {
  print("\n===== STATUS KARAKTER =====");
  print("Nama  : $namaKarakter");
  print("Level : $level");
  print("HP    : $healthPoints");
  print("MP    : $manaPoints");

  // 10. 
  tampilkanInventaris();

  // 16.
  tampilkanSemuaSkill();
}

// 3. 
void terimaKerusakan(int jumlahKerusakan) {
  healthPoints -= jumlahKerusakan;
  if (healthPoints < 0) {
    healthPoints = 0;
  }
}

// 4. 
bool apakahHidup() {
  return healthPoints > 0;
}

// 7. 
void tambahItem(String namaItem) {
  inventaris.add(namaItem);
}

// 9. 
void tampilkanInventaris() {
  print("\n--- Inventaris ---");
  if (inventaris.isEmpty) {
    print("(Kosong)");
  } else {
    for (var item in inventaris) {
      print("- $item");
    }
  }
}

// 11. 
class Skill {
  String nama;
  int damage;

  // 12. 
  Skill(this.nama, this.damage);

  void info() {
    print("Skill: $nama (Damage: $damage)");
  }
}

// 15. 
void pelajariSkillBaru(Skill skillBaru) {
  daftarSkill.add(skillBaru);
}

// 16. 
void tampilkanSemuaSkill() {
  print("\n--- Daftar Skill ---");
  if (daftarSkill.isEmpty) {
    print("(Belum ada skill)");
  } else {
    for (var skill in daftarSkill) {
      skill.info();
    }
  }
  print("====================");
}


// 17. 
void gunakanSkill(Skill skillDigunakan) {
  print("\n--- Pertarungan Final ---");
  print("Ksatria menggunakan skill '${skillDigunakan.nama}'!");
  manaPoints -= 15;
  if (manaPoints < 0) {
    manaPoints = 0;
  }
}

// 5. 
void main() {
  print('--- Petualangan Dimulai ---');

  // 5. 
  tampilkanStatus();

  // 3. 
  terimaKerusakan(25);
  print("\nKsatria menerima 25 kerusakan!");

  // 8.
  tambahItem("Peta");
  print("Item 'Peta' ditambahkan ke inventaris.");

  tambahItem("Obat");
  print("Item 'Obat' ditambahkan ke inventaris.");

  // 13. 
  Skill skill1 = Skill("Tebasan Api", 20);

  // 15. 
  pelajariSkillBaru(skill1);
  print("Karakter mempelajari skill baru!");

  // 19. 
  gunakanSkill(skill1);

  // 20.
  tampilkanStatus();
}
