// Typedef ile karmaşık tipleri tanımlayarak kullanabiliriz. "var" varken
// ne kadar mantıklı bilemedim.
typedef IsimliParametreFunc = String Function({required String konu,String eylem});
void main() {
  Ders_Collections().GetFoldedList();
}

void Ders_Fonksiyonlar(){
  OpsiyonelFonksiyon("Selam"," kanka");
  IsimliParametre(konu: "Selam",eylem: " isimli parametre");
  // Fonksiyonu başka bir isime atamak mümkündür ve aşağıdaki gibi yapılır.
  IsimliParametreFunc f = IsimliParametre;
  f(konu: "1",eylem: "2");
  // Expression Fonksiyon
  expF(String a,int b)=> a + b.toString();
  String x = expF("Selam",1);
}

//Köşeli parantezler opsiyonel parametreler anlamına gelmektedir, default value almalıdır.
String OpsiyonelFonksiyon(String konu, [String eylem=""]){
  var donus = konu + eylem;
  print(donus);
  return donus;
}
//Ya required ya da default value olmak zorundadır.
//Parametreleri isimle vermeyi sağlar.
String IsimliParametre({required String konu, String eylem=""}){
  return konu + eylem;
}

void Ders_Degiskenler(){
  var a;
  a = 1; // Eğer başlangıçta değer atanmadıysa birden farklı tipte değer alabileceğinden hataya neden olabilir.
  a = "1"; // Sonradan değiştirilebilen değişken türüdür.
  final f = "1" + a; // Sonradan değeri değiştirilemeyen, atama esnasında başka değişkeni kullanabilen değerlerdir. JS Deki const gibi
  const c = "1"; //Atama esnasında sabit değer almak zorunda olan, sonradan değiştirilemeyen tür. C# taki const gibi

  int i = 1;
  double d = 1.1;
  num n1= i;
  num n2= d;

  String s = "se\"lam $i ${n1.isFinite}";
  final l= [1,2,3]; //list -> Array
  final set={1,2,3}; //set -> Object
  final map={'a' :1,'b' : 2}; //map -> Dictionary
}

void Ders_List(){
  final strList = <String>[];
  final mesajlar = ["a","b","c"];
  mesajlar.add("d");
  mesajlar.addAll(["e","f"]);
  final ilkMesaj = mesajlar[0];
  mesajlar.contains("d");
  var len = mesajlar.length;
  mesajlar.removeAt(1);
  mesajlar.remove("a");
  var f = mesajlar.first;
  var l = mesajlar.last;
  for (final item in mesajlar){
    print(item);
  }
}

void Ders_Set(){
  final Set<String> arkadaslar = {"kaan","umay","cagatay"};
  // arkadaslar[0] burada çalışmayacaktır.
}

void Ders_Map(){
  final Map<String,String> items = {'a' : "1", 'b': "1"};

}

List<E> Ders_Referanslar<E>(E item){
  List<E> variable = [];
  variable.add(item);
  return variable;
}

void Ders_Class(){
  Ogrenci ali = Ogrenci("Ali", "Yilmaz", 18, "Erkek", 100,11);
  Ogrenci veli = Ogrenci("Veli", "Yilmaz", 19, "Erkek", 80,12);
  print(ali.fullName);
  ali.fullName = "kaan sali";
  print(ali.fullName);
  Ogrenci kaan= Ogrenci.male("Kaan", "Salı", 26, 100, 16); // Ders 4.4
}

class Ogrenci{
  String firstName;
  String lastName;
  int age;
  String sex;
  int degree;
  final int yearsInSchool; // bunun değeri gelecekte değiştirilemez olur. Ders 4.3

  // late final olduğunda değerini şimdi vermesekte oluyor, ama daha sonra sadece tek bir kere verilip değiştirilemez oluyor.
  // Fakat tekrar değer atamaya çalışırsak runtime'da hata veriyor, compile time da yakalanamıyor. Ders 4.3
  late final int unsuccessfulGradeCount;


  Ogrenci(this.firstName, this.lastName, this.age, this.sex, this.degree, int yis) : yearsInSchool = yis { // Parantez içinde veya noktalı virgülden sonra liste halinde parametreler alınabilir.
    age = 10; // Final veya const olmadığı için hata vermeyecektir ve çalışacaktır. Ders 4.4
    // yearsInSchool = 10;// final olduğu için hata verecektir, çünkü ctor ataması çalışmış olup, artık fonksiyon olarak çalışmaktadır.
  }
  Ogrenci.male(String fn,String ln,int age,int degree,int yis) : this(fn,ln,age,"Erkek",degree,yis); // Named Ctor Ders 4.4
  String get fullName => '$firstName $lastName';
  set fullName(String value){
    firstName = value.split(' ')[0];
    lastName = value.split(' ')[1];
  }
  @override
  String toString() {
    return "My name is $firstName $lastName, I am $age years old and I am $sex";
  }
}
const Ogretmen ogr = Ogretmen("Ali Veli","Türkçe"); // const ctor'lar const değer olarak tanımlanabilir. Ders 4.4
class Ogretmen{
  final String adSoyad;
  final String ders;
  const Ogretmen(this.adSoyad,this.ders);
  factory Ogretmen.sgtn(){
    return ogr; //Singleton patterni gibi referansı döndüren tanımdır. Factory ile bellekten veya alt türün objesi çekliebilir.
  }
}

class Ders_Collections{
  void GetFoldedList(){
    final list = [
      for(int i=0;i<10;i++)
        i
    ];
    print(list);
    print(list.fold<int>(0, (previousValue, element) => previousValue + element));
    print(list.map((e) => e*e));
  }
}
