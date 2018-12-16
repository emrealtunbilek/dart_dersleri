void main(List<String> args) {
  cevreHesapla();
  int hesaplananAlanDegeri = alanHesapla(); 
  print("Alan değeri : $hesaplananAlanDegeri");
  print("Alan değeri :"+ alanHesapla().toString());

  int hesaplananHacim = hacimHesapla(8,10,12);

  print("hesaplanan hacim : $hesaplananHacim");
}

void cevreHesapla() {
  int en = 8, boy = 12, cevre = 0;
  cevre = (en + boy) * 2;
  print("Çevre : $cevre");
}

int alanHesapla() {
  int en = 8, boy = 12, alan = 0;
  alan = en * boy ;

  return alan;
}

int hacimHesapla(int en, int boy, int yukseklik){

  return en * boy * yukseklik;
}

/*
//geriDonusTipi methodAdi(){
  //method içeriği

}
*/