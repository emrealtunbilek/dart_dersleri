/**
 * Lambda : ismi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir.
 */

main(List<String> args) {
    Function f1 = (int s1, int s2) {
            int toplam = s1 + s2;
            print(toplam);
          };

    var f2=(int no){
        return no * 2;
    };

    f1(5,7);
    print(f2(9));

    var f3=(int s1, int s2) => print(s1 + s2);
    var f4 = (int s1) => s1 * 2;

    f3(9,7);
    print(f4(7));


}

//Normal bir fonksiyon
void sayilariTopla(int a, int b){
  int toplam = a + b;
  print(toplam);
}