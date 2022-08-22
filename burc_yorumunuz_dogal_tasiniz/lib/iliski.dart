import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_destiny/anasayfa.dart';
import 'package:my_destiny/anasayfa.dart';
import 'dart:math';

class iliski extends StatefulWidget {
  final String? burc;
  final String? dropdownValue;
  final String? anlikVeri;

  const iliski({Key? key, this.burc, this.dropdownValue, this.anlikVeri})
      : super(key: key);

  @override
  State<iliski> createState() => _iliskiState();
}

String? dropdownValue = 'İLİŞKİM VAR';
String kullanici_secimi = "";

class _iliskiState extends State<iliski> {
  TextEditingController isim1 = TextEditingController();
  TextEditingController isim2 = TextEditingController();

  String? toplam = 'LÜTFEN İSİMLERİ GİRİN';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            title: Text(
              'İlişki',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28.0,
                  color: Colors.blue[300]),
            )),
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 80,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20.0),
                ),
                Column(children: [
                  Container(
                    width: 196,
                    margin: EdgeInsets.only(left: 49.0),
                    child: DropdownButton<String>(
                      underline: Container(
                        height: 3,
                        color: Colors.blue, //<-- SEE HERE
                      ),
                      dropdownColor: Colors.deepPurple,
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
                        'İLİŞKİM VAR',
                        'İLİŞKİM YOK',
                        'FLÖRT HALİNDEYİM',
                        'YENİ AYRILDIM'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 151.0,
                      height: 70,
                      child: TextField(
                        controller: isim1,
                        style: TextStyle(
                            fontSize: 19.0, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'SENİN İSMİN'),
                        onSubmitted: (String? anlikVeri) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Container(
                      width: 151.0,
                      height: 70,
                      child: TextField(
                        controller: isim2,
                        style: TextStyle(
                            fontSize: 19.0, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'ONUN İSMİ'),
                        onSubmitted: (String? anlikVeri) {},
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      setState(() {
                        toplam = yorumlar();
                      });
                    },
                    child: Text(
                      'İLİŞKİ DURUMUNU GÖR',
                      style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Center(
                    child: Container(
                      height: 600,
                      width: 380,
                      child: Text(" $toplam",
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          gradient: RadialGradient(colors: [
                            Colors.blue,
                            Colors.purple,
                            Colors.black54,
                          ], center: Alignment.center, radius: 0.5),
                          border: Border.all(
                              color: Colors.black,
                              width: 5.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            //topRight: Radius.circular(20),
                            //bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            // right: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent,
                              offset: Offset(10.0, 5.0),
                              blurRadius: 20,
                              spreadRadius: 40,
                            ),
                            BoxShadow(
                              color: Colors.purpleAccent,
                              offset: Offset(20.0, 10.0),
                              blurRadius: 20,
                              spreadRadius: 20,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: Offset(30.0, 15.0),
                              blurRadius: 20,
                              spreadRadius: 1,
                            ),
                          ]),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String yorumlar() {
  int index = 0;

  List<String> dizi = [
    'Karşınızdaki insan size ait değil ve siz de onun sahibi değilsiniz. Sizinle evlenmesi için ona bunu sorduğunuzda, onun kalbinin sahibi olmak ve bunu korumak için; istediği insan olmaya söz vermiş oluyorsunuz. Kalp, emanet edilecek en önemli, en kutsal hazineyken; o sizi seçti. Bu yüzden aşkınızda asla tembel olmayın.',
    'Onun kalbinin koruyucusu olmaya kararlı olduğunuz gibi, aynı uyanıklıkla kendi kalbinizi de koruyun. Kendinizi tam anlamıyla sevin, dünyayı da öyle. Ama onun sizin hayatında özel bir yeri olduğunu ve oraya o hariç kimsenin girmemesi gerektiğini unutmayın.',
    'Sürekli değişeceksiniz, onunla birlikte olduğunuz süre boyunca aynı insan olarak kalmanız mümkün değil. Hatta bir kaç sene sonra ikiniz de aynı insan olmayacaksınız. Değişim kapınızda; ikinizin de her gün birbirinizi yeniden seçmeniz için nedenleriniz olmalı. Ama unuımayın; o daima sizinle kalmak zorunda değil. Eğer onun kalbine dikkat etmezseniz, kalbinin mührünü bir başkasına verebilir ve bunu geri almanız bir daha mümkün olmayabilir. Bu yüzden onun aşkını kazanmak için, her zaman mücadele edin.',
    'Sadece onu neden sevdiğinize odaklanın. Odaklandıkça sevginiz de büyüyecektir. Eğer hatalara odaklanırsanız, gördüğünüz her şey, size hata yapmak için bir neden olacaktır. Aşkınıza odaklanmanız, size tam anlamıyla yardımcı olmaz elbette ama en azından bu sayede, aşkınızla, birçok sorunu aşabilirsiniz.',
    'Hayatınızdaki insanın işi, sizi “mutlu biri” haline getirmek değil; dolayısıyla “mutsuz biri” de yapamaz. Kendi mutluluğunuzu, kendiniz bulmak zorundasınız. Böyle olduğu zaman, ilişkiniz de zaten mutlu bir ilişki olacaktır.',
    'O sadece bir neden ve sizin içinizde bir duygunun harekete geçmesine sebep oldu. Duygularsa tamamen size ait, yani hepsi sizin sorumluluğunuzda. Hissettiklerinizi irdelemek için kendinize zaman tanıyın ve tüm soruları kendinize sorun. Bu insan size iyi geliyor, unutmayın.',
    'O mutsuz ya da üzgün olduğunda, bunu değiştirmek sizin işiniz değil. Ama bunu bilmek ve onu kaldırmak sizin işiniz. Onu duyduğunuzu ve sizin için ne kadar değerli olduğunu bilmesini sağlayın. Uzaklaşmak istiyorsa bile ona “Kaçma benden” diyebilirsiniz. En azından sizin burada olduğunuzu ve hiçbir yere gitmediğinizi; yanınızdayken güçlü görünmek zorunda olmadığını söyleyebilirsiniz. Bu şekilde size güvenecek ve kalbini açacaktır.',
    'Gerekirse aptal olun; kendinizi fazla ciddiye almayın. Bol bol gülün ve onu güldürün. Gülmek, her şeyi kolaylaştırır. Onunla olduğunuzda zihninizdekileri tamamen silmek için ne gerekiyorsa yapın. Sizin en önemli hastalığınız da, en iyi tedavi biçiminizde o, unutmayın.',
    'Eğer aranızda güven varsa, onunla her şeyinizi paylaşmak istemeniz gerekir. Özellikle de paylaşmak istemediğiniz şeyleri. Bunu yapmak gerçekten cesaret ister, çünkü siz ona tamamen kalbinizi açtığınızda ve o gerçek sizle karşılaştığında; onun sizde ne bulacağını bilemezsiniz. Cesaret, her şeyinizle sizi sevmesi için ona izin vermekte. Ama denerseniz, karanlık yönleriniz size ışık olabilir. Bu yüzden maskenizi çıkarın. Eğer onunlayken maske takmak zorunda hissediyorsanız ve her zaman mükemmel gözükürseniz, aşkın ne olduğunu asla tam olarak öğrenemezsiniz.',
    'Durgun su, mikrop biriktirir; ancak akan su her zaman tazeler ve ferahlatır. Ya da yıllarca spor yapıp kaslarınızı çalıştırsanız bile, bıraktığınız anda bedeniniz ilk günden daha kötü olur. İlişkiler de tıpkı bunun gibidir; ilişkiniz üzerine düşünmeyi asla bırakmamanız gerekir. Bu yüzden birlikte düşünüp ortak hedeflerinizi ve hayallerinizi bulun.',
    'İlişkide önemli olan nedir, beklentileriniz neler, yaratıcı olun. Ancak karşınızdakinden her zaman açık davranmasını isteyin. Çevresel faktörleri düşünmeyin, karşılaştırma yapmayın, sadece sahip olduklarınızı düşünün',
    'eye odaklanmanız gerektiğini bilmelisiniz. Problem ya da çözüm. Problemleri tespit edip çözüm geliştirmelisiniz. Aldığınız her karar bir seçimdir. Ne istediğinizle ilgili gerçekleri başkalarına değil, kendinize itiraf edin. Kimseye bişey anlatmak zorunda değilsiniz.',
    'Herkese ne istediğinize dair gerçek düşüncelerinizi söyleyin. Aşık olduğunuzu kişiyle korkmadan vizyonunuzu ve hayallerinizi paylaşın. Siz seçim yapmadıkça ilişkinizin adı konulamaz. Ruhunuzun derinliklerinde hissettiğiniz gibi karar verin.',
    'Doğrunun mahremiyetinden korkmayın. Gerçek başkalarının söylediklerinden daha önemlidir. Gerçeğin ne olduğunu bilirseniz onu anlatırsınız ve karşınızdaki kişi size her zaman güvenir.',
    'Partnerinizin işi sadece siz, sizin işiniz sadece partneriniz değildir. İlişkinize bu gerçeği gözeterek devam edin. Partneriniz birşey söylediğinde durup dinleyin ve ona ilgi gösterin. Çalışmak gereken gerçek bir dünyada yaşıyorsunuz. Gerçek olmayan beklentilerinizin ilişkinize zarar vermesini önleyin.',
    ' Kayıtsız şartsız aşk zordur. Şu sıralar çok fazla işiniz yoksa onunla yakından ilgilenin. Siz kayıtsız şartsız başkasına kendinizi verdiğinizde, o da size kendisini verecektir. İlginiz çok dağıldığında onun da ilgisi dağılacaktır. Onunla olduğunuzda sadece onunla olduğunuz anı keyifli yaşamaya çalışın.',
    'Tartıştığınızda kendinize bu bittiğinde sonuç ne olacak? testi yapın. Siz haklıysanız diğer kişi yanlış mı? Bunu ve hayatın ne kadar kısa olduğunu düşünün. Boş ve anlamsız tartışmalara girişmeyin. Sadece kabul edilmek ya da edilmemek mi istediğinize karar verin. Gülüp geçin ve önünüze bakın. Bu tür durumlarda tarışma yerine daha yapıcı yollara başvurmayı deneyin.',
    ' Partnerinizle konuşmamazlık etmeyin, ona anlamayacağı şeyler söylemeyin. Hiç bir anın garantisi yok. Yaşadığınız anları en iyi şekilde yaşamaya çalışın. Sevgi ve memnuniyetle sihirli bir dünya oluşturun. Birlikte olduğunuz ve size yaşattığı güzel anlar için ona her zaman teşekkür edin.',
    'Ona olan sevginiz kadar ona ne söylediğiniz, nasıl söylediğiniz, nasıl davrandığınız güvenip güvenmediği, gelecekle ilgili düşünceleriniz, hayatınızı onunla paylaşmak isteyip istememeniz hepsi önemlidir. Tüm bunları ve yukarıdaki 19 maddeyi tekrar gözden geçirerek yaşamınızı şekillendirin.',
    ''
  ];
  index = Random().nextInt(17);
  return dizi[index];
}
