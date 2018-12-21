/**
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak ozelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
 * 
 */



main(List<String> args) {

var tv=Televizyon();
nesneleriCalistir(tv);

var sesSistemi = SesSistemi();
nesneleriCalistir(sesSistemi);

List<Kumanda> sss=List();

sss.add(tv);
sss.add(sesSistemi);

  
}

void nesneleriCalistir(Kumanda k){
  k.sesAc();
  k.sesAzalt();
}

class Kumanda{

  void sesAc(){
    print("Kumanda sınıfı ses aç metodu");
  }

  void sesAzalt(){
    print("Kumanda sınıfı ses azalt metodu");
  }

}

class BirDigerSinif{
  void herhangiBirMethot(){
    print("Herhangi bir metot tetiklendi");
  }
}

class Televizyon  implements Kumanda, BirDigerSinif{
  
   @override
  void sesAc(){
    print("Televizyon sınıfı ses aç metodu");
  }

  @override
   void herhangiBirMethot(){
    print("Herhangi bir metot tetiklendi");
  }

  @override
  void sesAzalt(){
    print("Televisyon sınıfı ses azalt metodu");
  }

 
 
}

 class SesSistemi implements Kumanda{
    @override
  void sesAc(){
    print("Ses sistemi sınıfı ses aç metodu");
  }

  @override
  void sesAzalt(){
    print("Ses sistemi sınıfı ses azalt metodu");
  }

 }