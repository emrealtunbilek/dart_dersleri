/**
 * Polimorfizm, nesneye yönelik programlamanın önemli kavramlarından biridir ve sözlük anlamı olarak "bir çok şekil" anlamına gelmektedir. 
 * Polimorfizm ile kalıtım konusu iç içedir. 
 * Kalıtım konusunu geçen bölüm incelenmişti; kalıtım konusunda iki taraf bulunmaktadır, 
 * ana sınıf ve bu sınıftan türeyen alt sınıf/sınıflar. 
 * 
 * Alt sınıf, türetildiği ana sınıfa ait tüm özellikleri alır; 
 * yani, ana sınıf ne yapıyorsa türetilen alt sınıfta bu işlemlerin aynısını yapabilir 
 * ama türetilen alt sınıfların kendilerine ait bir çok yeni özelliği de olabilir. 
 * Ayrıca türetilen alt sınıfa ait nesnenin, ana sınıf tipindeki referansa bağlamanın yukarı doğru (upcasting) işlemi denir.
 * 
 * Aşağıdaki örnekte üç  kavram mevcuttur, 
 *    bunlardan biri yukarı çevirim (upcasting) 
 *    diğeri polimorfizm 
 *    ve son olarak da geç bağlama (late binding). 
 * 
 * Şimdi yukarı çevirim ve polimorfizm kavramlarını açıklayalım. 
 * Bu örneğimizde ana sınıf Asker sınıfıdır; bu sınıfdan türeyen sınıflar ise Er ve Yuzbasi sınıflarıdır. Bu ilişki "bir" ilişkisidir ;
·       Er bir Askerdir, veya 
·       Yüzbası bir Askerdir, diyebiliriz. 

Yani Askersınıfının yaptığı her işi Er sınıfı veya Yuzbasi sınıfı da yapabilir 
artı türetilen bu iki sınıf kendisine has özellikler taşıyabilir,
 Asker sınıfı ile Er ve Yuzbasi sınıflarının arasında kalıtımsal bir ilişki bulunmasından dolayı, 
 Asker tipinde parametre kabul eden hazirOl()yordamına Er ve Yuzbasi tipindeki referansları paslayabildik, 
 bu özelliğinde yukarı çevirim (upcasting) olduğunu söyleyebilir. 

Polimorfizm ise hazirOl()yordamının içerisinde gizlidir. 
Bu yordamın (method) içerisinde Asker tipinde olan a referansı kendisine gelen 2 değişik nesneye (Er ve Yuzbasi) bağlanabildi; 
bunlardan biri Er diğeri ise Yuzbasi’dır. Peki bu yordamın içerisinde neler olmaktadır? 

Sırası ile açıklarsak; ilk önce Asker nesnesine bağlı Asker tipindeki referansı, 
hazirOl()yordamına parametre olarak gönderiyoruz, burada herhangi bir terslik yoktur çünkü 
hazirOl()yordamı zaten Asker tipinde parametre kabul etmektedir.
Burada dikkat edilmesi gereken husus, hazirOl() yordamının içerisinde Asker tipindeki yerel a değişkenimizin, 
kendi tipinden başka nesnelere de (Er ve Yuzbasi) bağlanabilmesidir; 
yani, Asker tipindeki yerel a değişkeni bir çok şekle girmiş bulunmaktadır. Aşağıdaki ifadelerin hepsi doğrudur:
·       Asker a = new Asker() ;
·       Asker a = new Er();
·       Asker a = new Yuzbasi();
Yukarıdaki ifadelere, Asker tipindeki adeğişkenin açısından bakarsak, 
bu değişkenin bir çok nesneye bağlanabildiğini görürüz, 
bu özellik polimorfizm 'dir -ki bu özelliğin temelinde kalıtım (inheritance) yatar.
 */
main(List<String> args) {
  
  Er emre=new Er();
  Er hasan=Er();

  Asker asker=Asker();
  Yuzbasi ali=Yuzbasi();

  hazirOl(asker);
  hazirOl(emre); // yukarı cevrim upcasting
  hazirOl(ali);  // yukari çevrim upcasting

  Asker yeni=Er();

  hazirOl(yeni);






}

void hazirOl(Asker asker){
  asker.selamVer();
}



class Asker{

  void selamVer(){
    print("Asker selam verdi");
  }

}

class Er extends Asker{

  @override
    void selamVer() {
      print("Er selam verdi");
    }

}

class Yuzbasi extends Asker{
  @override
    void selamVer() {
      print("Yüzbaşı selam verdi");
    }
}