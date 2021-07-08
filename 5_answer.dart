main(List<String> args) {
  Map nilai = {
    "Indonesia": 0,
    "Malaysia": 0,
    "Jepang": 0,
    "Cina": 0,
  };

  Map hasilPertandingan = {
    "NamaTeam1": [
      "Indonesia",
      "Malaysia",
      "Cina",
      "Cina",
      "Indonesia",
      "Jepang"
    ],
    "NamaTeam2": [
      "Malaysia",
      "Jepang",
      "Malaysia",
      "Indonesia",
      "Jepang",
      "Cina"
    ],
    "SkorTeam1": [5, 1, 3, 0, 0, 1],
    "SkorTeam2": [2, 3, 0, 2, 0, 3],
  };

  for (var i = 0; i < hasilPertandingan["NamaTeam1"].length; i++) {
    if (hasilPertandingan["SkorTeam1"][i] > hasilPertandingan["SkorTeam2"][i]) {
      nilai[hasilPertandingan["NamaTeam1"][i]] += 3;
    } else if (hasilPertandingan["SkorTeam1"][i] <
        hasilPertandingan["SkorTeam2"][i]) {
      nilai[hasilPertandingan["NamaTeam2"][i]] += 3;
    } else {
      nilai[hasilPertandingan["NamaTeam1"][i]] += 1;
      nilai[hasilPertandingan["NamaTeam2"][i]] += 1;
    }
  }

  // print nilai yang didapat setiap negara
  nilai.forEach((negara, value) {
    print("$negara : $value");
  });
}
