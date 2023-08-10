// Typedef ile karmaşık tipleri tanımlayarak kullanabiliriz. "var" varken
// ne kadar mantıklı bilemedim.
typedef IsimliParametreFunc = String Function({required String konu,String eylem});
void main() {

Ders_Degiskenler();

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