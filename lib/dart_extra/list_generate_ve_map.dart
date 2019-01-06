import 'dart:math';

void main(List<String> args) {

 // List<int> ogrenciNumaralari=List.generate(30, (index) => rastgeleOgrenciNoOlustur() ); 
   List<int> ogrenciNumaralari=List.generate(30, (index) => rastgeleOgrenciNoOlustur() );
  /* List<Ogrenci> tumOgrenciler= ogrenciNumaralari.map((ogrNo) {
     return Ogrenci("Ogrenci $ogrNo Adı", ogrNo);
   }).toList();

   */
  List<Ogrenci> tumOgrenciler= ogrenciNumaralari.map( (ogrNo) => Ogrenci("Ogrenci $ogrNo Adı", ogrNo)).toList();

   tumOgrenciler.forEach((oankiOgrenci) => print("Ogrenci adı : ${oankiOgrenci}"));
   

}

int rastgeleOgrenciNoOlustur(){
  int olusturuluanSayi = Random().nextInt(60);

  if(olusturuluanSayi != 0){
     return olusturuluanSayi;
  }else{
    int yeniSayi = rastgeleOgrenciNoOlustur();
    return yeniSayi;
  }
 
}

class Ogrenci{

  String ad;
  int no;

  Ogrenci(this.ad, this.no);

  @override
    String toString() {
      // TODO: implement toString
      return "$ad ve numarası $no";
    }


}

  