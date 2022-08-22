import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_destiny/anasayfa.dart';
import 'package:my_destiny/burc_secimi.dart';

class dogaltas extends StatefulWidget {
  final String? cevap1;
  final String? cevap2;
  final String? cevap3;
  final String? tas_yorumu1;
  final String? tas_yorumu2;
  final String? tas_yorumu3;

  final String? dropdownValue;
  const dogaltas(
      {Key? key,
      this.dropdownValue,
      this.cevap1,
      this.cevap2,
      this.cevap3,
      this.tas_yorumu1,
      this.tas_yorumu2,
      this.tas_yorumu3})
      : super(key: key);

  @override
  State<dogaltas> createState() => _dogaltasState();
}

String? dropdownValue = 'Akrep';

class _dogaltasState extends State<dogaltas> {
  String? cevap1 = 'Opal';
  String? cevap2 = 'Turmalin';
  String? cevap3 = 'Sitrin';
  String? tas_yorumu1 = yorum('Opal');
  String? tas_yorumu2 = yorum('Turmalin');
  String? tas_yorumu3 = yorum('Sitrin');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo[400],
            centerTitle: true,
            title: Text(
              'Doğal Taşlar',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0,
                  color: Colors.blue[200]),
            )),
        backgroundColor: Colors.indigo[400],
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              DropdownButton<String>(
                underline: Container(
                  height: 3,
                  color: Colors.tealAccent, //<-- SEE HERE
                ),
                dropdownColor: Colors.indigo[400],
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.black,
                ),
                elevation: 16,
                style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Akrep',
                  'Aslan',
                  'Balık',
                  'Başak',
                  'Boğa',
                  'İkizler',
                  'Koç',
                  'Kova',
                  'Oğlak',
                  'Terazi',
                  'Yay',
                  'Yengeç'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  setState(() {
                    if (dropdownValue == 'Akrep') {
                      cevap1 = 'Opal';
                      cevap2 = 'Turmalin';
                      cevap3 = 'Sitrin';
                      tas_yorumu1 = yorum('Opal');
                      tas_yorumu2 = yorum('Turmalin');
                      tas_yorumu3 = yorum('Sitrin');
                    } else if (dropdownValue == 'Aslan') {
                      cevap1 = 'Yakut';
                      cevap2 = 'Kuvars';
                      cevap3 = 'Oniks';
                      tas_yorumu1 = yorum('Yakut');
                      tas_yorumu2 = yorum('Kuvars');
                      tas_yorumu3 = yorum('Oniks');
                    } else if (dropdownValue == 'Balık') {
                      cevap1 = 'Ametist';
                      cevap2 = 'Akuamarin';
                      cevap3 = 'Kan_Taşı';
                      tas_yorumu1 = yorum('Ametist');
                      tas_yorumu2 = yorum('Akuamarin');
                      tas_yorumu3 = yorum('Kan_Taşı');
                    } else if (dropdownValue == 'Başak') {
                      cevap1 = 'Oniks';
                      cevap2 = 'Peridot';
                      cevap3 = 'Lapis_Lazuli';
                      tas_yorumu1 = yorum('Oniks');
                      tas_yorumu2 = yorum('Peridot');
                      tas_yorumu3 = yorum('Lapis_Lazuli');
                    } else if (dropdownValue == 'Boğa') {
                      cevap1 = 'Akik';
                      cevap2 = 'Kristal_Kuvars';
                      cevap3 = 'Zümrüt';
                      tas_yorumu1 = yorum('Akik');
                      tas_yorumu2 = yorum('Kristal_Kuvars');
                      tas_yorumu3 = yorum('Zümrüt');
                    } else if (dropdownValue == 'İkizler') {
                      cevap1 = 'Zümrüt';
                      cevap2 = 'İnci';
                      cevap3 = 'Ay_Taşı';
                      tas_yorumu1 = yorum('Zümrüt');
                      tas_yorumu2 = yorum('İnci');
                      tas_yorumu3 = yorum('Ay_Taşı');
                    } else if (dropdownValue == 'Koç') {
                      cevap1 = 'Akuamarin';
                      cevap2 = 'Kan_Taşı';
                      cevap3 = 'Kristal_Kuvars';
                      tas_yorumu1 = yorum('Akuamarin');
                      tas_yorumu2 = yorum('Kan_Taşı');
                      tas_yorumu3 = yorum('Kristal_Kuvars');
                    } else if (dropdownValue == 'Kova') {
                      cevap1 = 'Lal_Taşı';
                      cevap2 = 'Ametist';
                      cevap3 = 'Akuamarin';
                      tas_yorumu1 = yorum('Lal_Taşı');
                      tas_yorumu2 = yorum('Ametist');
                      tas_yorumu3 = yorum('Akuamarin');
                    } else if (dropdownValue == 'Oğlak') {
                      cevap1 = 'Turkuaz';
                      cevap2 = 'Mavi_Topaz';
                      cevap3 = 'Lal_Taşı';
                      tas_yorumu1 = yorum('Turkuaz');
                      tas_yorumu2 = yorum('Mavi_Topaz');
                      tas_yorumu3 = yorum('Lal_Taşı');
                    } else if (dropdownValue == 'Terazi') {
                      cevap1 = 'Opal';
                      cevap2 = 'Lapis_Lazuli';
                      cevap3 = 'Turmalin';
                      tas_yorumu1 = yorum('Opal');
                      tas_yorumu2 = yorum('Lapis_Lazuli');
                      tas_yorumu3 = yorum('Turmalin');
                    } else if (dropdownValue == 'Yay') {
                      cevap1 = 'Mavi_Topaz';
                      cevap2 = 'Sitrin';
                      cevap3 = 'Turkuaz';
                      tas_yorumu1 = yorum('Mavi_Topaz');
                      tas_yorumu2 = yorum('Sitrin');
                      tas_yorumu3 = yorum('Turkuaz');
                    } else if (dropdownValue == 'Yengeç') {
                      cevap1 = 'İnci';
                      cevap2 = 'Ay_Taşı';
                      cevap3 = 'karnelyan';
                      tas_yorumu1 = yorum('İnci');
                      tas_yorumu2 = yorum('Ay_Taşı');
                      tas_yorumu3 = yorum('Karnelyan');
                    } else {
                      cevap1 = 'Akik';
                      cevap2 = 'Kristal_Kuvars';
                      cevap3 = 'Zümrüt';
                      tas_yorumu1 = yorum('Akik');
                      tas_yorumu2 = yorum('Kristal_Kuvars');
                      tas_yorumu3 = yorum('Zümrüt');
                    }
                  });
                },
                child: Text(
                  'TAŞLARI GÖR',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              Column(
                children: [
                  Image.asset('assets/images/${cevap1}.jpg'),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '${cevap1} Taşı Özellikleri:  ',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[700]),
                        ),
                        Text('${tas_yorumu1}',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Image.asset('assets/images/${cevap2}.jpg'),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '${cevap2} Taşı Özellikleri:  ',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[700]),
                        ),
                        Text('${tas_yorumu2}',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Image.asset('assets/images/${cevap3}.jpg'),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '${cevap3} Taşı Özellikleri:  ',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[700]),
                        ),
                        Text('${tas_yorumu3}',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

String? yorum(tas) {
  if (tas == 'Akik') {
    return 'Zihnin, bedenin ve ruhun dengelenerek uyum içerisine girmesini sağladığına inanılan bir taştır. Akik taşı vücuttaki negatif enerjinin atılarak, auranın temizlenip stabilize olunmasını sağlar. Konsantrasyon, algı, analitik yeteneklerin ve zihinsel işlevlerin gelişmesine yardımcı olur. İçsel yaşanan öfke ve gerginliğin iyileşerek, emniyet ve güven duygusunun yaratılmasını mümkün kılar.';
  } else if (tas == 'Akuamarin') {
    return 'Akuamarin taşı cesaret taşı olarak bilinmektedir. En çok bilinen ve güzel çeşitleri Rusyada bulunmaktadır. Latince "deniz suyu" anlamına gelir ve taşın denizkızlarının bir hazinesi olduğuna inanılmaktadır. Ayrıca geçmiş zamanlardan beri akuamarin denizcilerin güvenli bir şekilde yolculuk yapmasının sırrı olarak bilinir. Yani denizciler yola çıkarken mutlaka yanına akuamarin taşı alırlardı. Temizlenme, İç Huzur, Meditasyon, Barış, Kehanet, İlham, Güç, Yatıştırıcı, Sakinleştirici, Suda Güvenli Yolculuk ,Olumsuz enerji ve stresin azalmasını sağlayarak zihni sakinleştirir. Kafa karışıklığını gidererek, algıda netlik yaratır ve zekânın keskinleşmesini sağlar. Kendini rahatça ifade etmeni sağlar. Hassasiyeti artırır ve korkuyu yatıştırır.';
  } else if (tas == 'Ametist') {
    return 'İç Huzur/Şifa, Beden, Zihin ve Ruh İyileşmesi, Meditasyon, Manevi Farkındalık, Psişik Yetenekler, Olumlu Dönüşüm. Psişik saldırılara karşı korur. Yüksek enerjiyi seviye dönüştürür ve kullanan kişiyi stres ve başkalarının kötü dilekli zararlarından korur. Stres ve gerginliği alır. Siniri yatıştırarak ruh hali değişimlerini dengeler. Doğal bir sakinleştirici olduğu düşünülmektedir. Rahat uyu için önerilmektedir, başucunuzda ametist taşı varsa uykusuzluğun giderildiği düşünülmektedir. Rüyayı hatırlamaya ve anlamaya yardım eder.';
  } else if (tas == 'Ay_Taşı') {
    return 'Ay taşının duygusal karmaşalar yaşanmasının önüne geçtiğine inanılmaktadır. Kişilerin duygu dünyalarının düzenlenmesine ve daha net düşüncelere sahip olmalarına yardımcı olmaktadır. Ayrıca sezgi ve iletişimde de güçlendirmektedir. Lenf sistemini güçlendirmekte ay taşının faydaları arasında gösterilmektedir. Ayrıca nazara karşı da çok etkili doğal taş çeşitlerindendir. Kişiye tokluk hissi verdiği için diyet yapanların ve obezite ile mücadele edenlerin sıkça tercih ettiği bir taş çeşididir. Ayrıca vücuttan toksinlerin atılmasına ve cilt sağlığına faydalar sunmaktadır. Karşı tarafı anlamak ve empati kurmak hususlarında sorun yaşayanlar için en ideal doğal taşlardan birisidir. Ayrıca ay taşı beyin fonksiyonlarına da iyi gelmekte ve zeka gelişimine katkıda bulunmaktadır.';
  } else if (tas == 'İnci') {
    return 'Cilt hastalıklarının tedavisinde yardımcı olur. Doğurganlığı ve anne sütünü artırır. Akciğer ve böbrekler için faydalıdır. Kemik ağrılarına, migrene, mide, dalak, bağırsaklar hastalıklarına karşı etkilidir. Depresyon eğilimli kişiler üzerinde yatıştırıcı bir etkisi olduğu düşünülür. Duygu bozukluğu gibi kişiyi üzen hastalıkların tedavisinde iyileştirici etkisi vardır. İnsanlarla yakınlık kurmaya yardımcı olur. Şefkat, anlayış ve fedakarlık duygularını harekete geçirdiğine inanılır. Sanata yönelik zeka ve sezgi gücünü harekete geçirir.';
  } else if (tas == 'Kan_Taşı') {
    return 'Sezgileri kuvvetlendirir, Psikolojik olarak cesaret verir,  Zihinsel olarak sakinleştirir, Zihni canlandırır, Rahat bir uyku için idealdir, Rüya görülmesini tetikler, Kabusları engeller, Bedeni yeniler, Kan dolaşımını ve kan akışını düzenler, Kanı temizler, Dalak ve safra kesesini toksinlerden temizler, Pıhtılaşma sorununu tedavi edicidir, kanı durdurur, Bedendeki elektrik yükünü topraklar, Stresi azaltır, Gözleri hastalıklardan korur, Bağışıklık sistemini güçlendirir, bulaşıcı hastalıklardan korur, Gribin önlenmesinde ve tedavisinde etkilidir, İsilik, döküntü gibi deri hastalıklarına karşı iyileştiricidir, Hamilelikte faydalıdır, Doğumu kolaylaştırır, Bebek için faydalıdır,';
  } else if (tas == 'Karnelyan') {
    return 'Akik taşı faydalarına ek olarak, Tembelliği giderir, Güçlü bir enerjiye sahiptir. Düşük Tansiyonu dengeler (yüksek tansiyonu olanlar kullanırken çok dikkatli kullanmalıdırlar), kan dolaşımını düzenler, Cinsel güç verir, Üreme sistemi için faydalıdır, Böbrekler üzerinde olumlu faydaları vardır, Pankreası temizler, Maneviyatı güçlendirir.';
  } else if (tas == 'Kristal_Kuvars') {
    return 'Duygusal dengeleyicidir. Beyin fonksiyonlarını uyarır. Güç ve canlılık kaybına karşı koruma sağlar. Özellikle Cep telefonu, telsiz gibi cihazlardan yayılan radyasyonu toplar. Zihinsel konsantrasyonu kuvvetlendirir. Tene temas ettirerek kıyafet altında taşındığı taktirde, kişiyi diğer insanların negatif enerjisinden korur. Pozitif insanlar içindeyseniz taşınızı görünür şekilde takın. Böylece çevrenizdeki insanların pozitif enerjisini toplar. Baş ağrısını hafifletici özelliği vardır. Sindirim ve kan dolaşımı sistemini sağlıklı tutar, hastalanırsa iyileştirir. Göz için sağlıklıdır..';
  } else if (tas == 'Kuvars') {
    return 'Beyin fonksiyonlarını uyararak, duygusal dengeyi sağlar. Pozitif enerjiyi depolar ve kuvvetlendirerek ortama yayar. Zihinsel formları düzenler. Bedeni zinde tutar, güç ve canlılık verir. Öfke, korku, suçluluk ve kıskançlık gibi olumsuz durumlardan korur. Kuvars taşları bulunduğu ortamdaki negatif enerjiyi ve elektronik cihazların yaydığı radyasyonu yok eder.';
  } else if (tas == 'Lal_Taşı') {
    return 'Unutkanlık için birebirdir. Anlayış ve kurnazlık verir. Üzerinde taşıyan, bedensel zayıflığa ve acımasızlıklara karşı koruduğu bilinir. Cinsel enerjiyi ve duyarlılığı arttırır. Cinsel dengesizliğe karşı koruma sağladığı bilinir. Bedeni kuvvetlendirir, temizler, canlandırır. Bilhassa kan damarları için çok yararlı bir taş olan lal, hayal gücünü harekete geçirir, sevgi ve şefkati sembolize eder. Akciğer ve kalp hastalıklarına karşı koruyucu ve iyileştiricidir.';
  } else if (tas == 'Lapis_Lazuli') {
    return 'Fiziksel yetenekleri ve iletişim yeteneğini kuvvetlendirir. Kemikleri kuvvetlendirir. İskeleti sağlamlaştırır. Küçük çocukların solunum yolu hastalıklarından korunmasını sağlar. Tansiyonu düzenler. Tiroid bezlerini harekete geçirir. Akılcı olmayan düşünceleri netleştirir ve düşüncelerinize yoğunluk kazandırır. Dikkatli kullanılması gereken bir taştır. Yaydığı enerji, hassas kişilerde baş dönmesine neden olabilir. Kararlı ve etkili enerjisiyle, görmezden geldiğiniz olaylara bakmanızı sağlar. Ruhunuzun hakikate ulaşma arzusunu kuvvetlendirir. Anksiyete ve Kaygıyı azaltır ve kişiye canlılık verir.';
  } else if (tas == 'Mavi_Topaz') {
    return 'Kullanan kişiye neşe verir. Cesaret ve hoşnutluk duygularını kuvvetlendirir. Mavi Topaz, boğaz rahatsızlıklarına ve fazla çalışan tiroidler üzerinde etkilidir. Ruhsal gelişim ve büyümeye büyük fayda sağladığı bilinir. Sezgisel kuvvet, algı ve cesareti destekler. Kötü niyetlerden ve olaylardan koruduğuna inanılır. Yetenekleri, zekayı arttırır, bağışıklık sisteminin güçlenmesine yardımcı olur. Mavi topaz iletişim ve muhakeme gücünü katlar. ';
  } else if (tas == 'Oniks') {
    return 'Konsantrasyonu sağlar. Zihin bulanıklığını giderir. Cinsel dürtüleri azaltır. Duyulan kaygılara karşı etkilidir. Gelecek kaygısını yok eder. Kadın-erkek kutuplaşmasını dengeler ve ilişkileri kuvvetlendirir. Kişiyi, ihtiyaç duyduğu her konuda enerjisiyle destekler. Kontrol ve denge sağlar. Kişinin bağımlılıklarından kurtulmasına yardım eder. Nazara karşı kullanılır. Topraklama taşıdır, stresi azaltır. Göz tansiyonu rahatsızlıklarında iyi geldiği söylenir. Kemik yapısını ve ilik sistemini güçlendirir. Obezite tedavisinde faydalıdır.';
  } else if (tas == 'Opal') {
    return 'Sevgi, umut ve şefkat taşıdır. Kızgınlık halini yatıştırır. Göz sağlığına iyi geldiği bilinir. Duygular ve akıl konusunda bütünlük sağladığı söylenir. Kişide özgüveni artırır ve kötü huylardan koruduğu bilinir. Kendini ifade etme özgürlüğü verir. Bağımsızlık ve Özgürlük taşıdır. Eklem ağrılarına iyi gelir. Böbrek hastalıklarında faydalıdır. Kan hastalıkları için iyileştirme etkisi vardır. Parkinson tedavisinde yardımcıdır. Kişiye pozitif enerji verir, negatif enerjiyi alır.';
  } else if (tas == 'Peridot') {
    return 'Tüm toksinlerin atılmasına yardımcı olur, nötralize eder, bedeni ve zihni arındırır. Kalp ve karın çakralarını açar, temizler ve harekete geçirir. Vücudu tüm eski yüklerden arındırır. Suçluluk duygularını ve takıntıların giderilmesini sağlar. Peridot insanlara geçmişe takılmanın olumsuz etkilerini gösterir. Bu taş negatif kalıpları, eski titreşimleri ortadan kaldırır. Eğer psikolojik çalışmalar yapılıyorsa bu taş hızla ilerleme adına etkili olur. Önsezili bir taştır ve önsezileri güçlendirir.';
  } else if (tas == 'Sitrin') {
    return 'Ametist gibi, bir ortamdaki istenmeyen enerjilerin engellenmesi için kullanılabilir. Başarı getirici olduğuna inanılan bir taştır. Kendisini taşıyan kişiye neşe ve mutluluk duyguları verir. Kişinin depresyona neden olan duygularından kurtulmasına yardım eder. Kendine güvenme duygusunu güçlendirir ve sinirlilik durumlarında rahatlatıcı ve güven vericidir. Negatif enerjiyi yok eder. Ancak kuvars kristali gibi negatif enerjiyi bünyesinde toplamaz. Bu sayede negatif enerjilerden arındırma işlemine de ihtiyaç duymaz. (Temizlemeye gerek yoktur.) Zihinsel berraklığı artırır. Böbrek, kolon, ciğerler, hazım organları ve kalp için yararlı olduğuna inanılmaktadır. Bolluk, bereket ve şans taşıdır. Eski çağlarda adı tüccar taşı olarak geçer.';
  } else if (tas == 'Turkuaz') {
    return 'Kaygıyı teskin eder. Sakinlik verir. Kederli insanların kederlerini gidermede, ya da bir olayın şokunu yaşayan kişileri o halden kurtarmada faydalıdır. Onlara, bu durumdaki kişilerin ihtiyacı olan huzur duygusunu verir. Kendisini taşıyan kişilerin iyileştirici güçlerini artırır ve bilgeliklerini artırmalarına yardımcı olur. Nazara karşı etkilidir. Şans ve Uğur taşı olduğuna inanılır, Başarı getirir, Takı olarak, her gün kullanılabilecek bir taştır. Özellikle gümüş içine gömüldüğünde etkisi artar ve dengeyi sağlar. Sindirim sorunları için; kemer tokası, bileklik ya da yüzük olarak kullanılabilir. Tansiyonu düzenler ve kalp hastalıklarına iyi gelir. Çakraları hizaya sokar ve dengeler.';
  } else if (tas == 'Turmalin') {
    return 'Denge ve uyum sağlar. '
        'Kişinin amaçlarına odaklanmasını sağlar. '
        'Kişinin bağımlılıklarından ve kendisini içsel olarak yıpratmasına neden olan beklentilerinden kurtulmasına destek olur. '
        'Böylece kişi kendini olayları yargılamaktan uzak tutarak içsel dinginliği koruyabilir. '
        'Kişiye dinginlik vererek daha geniş görüşlü olmasını sağlar ve böylece duygusal iniş çıkışları dengeler. '
        'Hormon salgılama sistemini dengeleyici özelliği bulunur. '
        'Uyku düzenini sağlar, Zihni güçlendirir ve arındırır. '
        'Sezgisel yanınızı güçlendirir yani sezgileriniz oldukça doğru çıkmaya başlayabilir. '
        'Kişinin kendisi ile barışını sağlar iç dünyanızı kötülüklerden arındırır. '
        'Hangi renk olursa olsun nazarları sizden uzak tutucu özelliği bulunur.';
  } else if (tas == 'Yakut') {
    return 'Bağışıklık sistemini güçlendirir. '
        'Cinsel aşırılıklara karşı iyi gelir. '
        'Kan dolaşımına pozitif yönde canlandırıcı etkisi vardır. '
        'Kendisini taşıyan kişiyi dürüst olmaya yönlendirir. '
        'Kişinin gerçek doğasını, kişiliğini özgürce ifade edebilmesine yardımcı olur. '
        'Kişinin özgüvenini ve cesaretini kuvvetlendirir. '
        'Kişiyi kendi sınırlamalarından kurtarır, ruhsal gelişim ve mutluluk duygularını artırır. '
        'Kişiyi kendisi hakkında hissettiği olumsuz duygulardan kurtarır. '
        'Koşulsuz sevmeyi sağlar. '
        'Diğer insanlara karşı duyulan anlayış ve hoşgörü duygularını artırır. '
        'Sezgileri kuvvetlendirerek, kötülüklerden uzak durulmasını sağlar.';
  } else if (tas == 'Zümrüt') {
    return 'Bağışıklık sistemini, sinir sistemini, kalbi, ciğerleri ve böbreği kuvvetlendirir.'
        ' Arkadaşlık, evlilik ve aile bağlarını güçlendirir. '
        'Zümrüt sadakat taşıdır, sadakat duygusunu arttırır. '
        'Başarı ve doyum duygularını belirginleştirir. '
        'Yetersizlik duygusundan kurtarır ve yaşama karşı duyulan minnet duygusunu güçlendirir.'
        ' Kişiye sevgi duygusu verir. Yaşama sevincini artırır.';
  } else {
    return 'Zümrüt';
  }
}
