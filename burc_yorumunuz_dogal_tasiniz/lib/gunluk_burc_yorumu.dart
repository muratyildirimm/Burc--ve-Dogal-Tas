import 'package:flutter/material.dart';
import 'package:my_destiny/burc_secimi.dart';
import 'dart:math';

class gunluk_burc_yorumu extends StatefulWidget {
  final String? burc;
  const gunluk_burc_yorumu({Key? key, this.burc}) : super(key: key);

  @override
  State<gunluk_burc_yorumu> createState() => _gunluk_burc_yorumuState();
}

class _gunluk_burc_yorumuState extends State<gunluk_burc_yorumu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("BURÇ YORUMUNUZ"),
            centerTitle: true),
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 85.0,
                    backgroundImage: AssetImage('assets/images/lamp.png'),
                  ),
                  SizedBox(
                    width: 71.0,
                  ),
                  CircleAvatar(
                    radius: 85.0,
                    backgroundImage: AssetImage('assets/images/lamp2.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 45.0,
              ),
              Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 600,
                      width: 360,
                      child: Text(yorumlar(widget.burc),
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 22.0,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String yorumlar(burc3) {
  int index = 0;
  if (burc3 == 'akrep') {
    List<String> dizi = [
      'Sevgili Akrepler ve yükselen burcu Akrep olanlar, yönetici gezegeniniz Mars’ın Boğa burcunda Uranüs ile kavuşmasıyla sonuçlar elde ediyor, ilişkilerinize düzen getiriyorsunuz. Ani olaylara karşı dürtüsel tepkiler vermekten kaçının. Daha sakin davranışlar sergilemeye önem verin. Gerçek ihtiyaçlarınıza yöneliyorsunuz.',
      'Merkür’ün Başak burcuna geçişi iş süreçlerini hızlandırıyor. Hedefleriniz için çalışıyorsunuz. Yeni bir çevreye girebilirsiniz. Göz önündesiniz ve organizasyonlara açıksınız.',
      'Venüs’ün Aslan burcuna geçişi kariyerinizde şans yaratıyor. Yükselen özgüveninizle dikkat çekiyor, duygusal ve parasal anlamda kazandığınız bir döneme giriyorsunuz. Yöneticilerinizin takdirini kazanıyorsunuz ve yeni tekliflerle ilgileniyorsunuz. Evlilik gündeminize gelebilir.',
      'Kova burcunda 12 Ağustos’ta gerçekleşecek Dolunay ile aile meseleleri gündeminiz olabilir. Kendinize ait bir düzen kurmak isteyebilirsiniz. Empatik ve yapıcı olmanız süreci kolaylaştırabilir.',
      'Yönetici gezegeniniz Mars yıl sonuna kadar İkizler burcunda hareket ediyor. Kendi çabanızla veya ailenizin desteğiyle, maddi anlamda rahatlıyorsunuz. Ek gelir getiren işlere odaklanabilirsiniz. Yoğun temponuz hayatınızı olumlu etkileyecektir. Sonradan üzülmemek için emin olmadan konuşmayın.',
      'Neptün Plüton üçgeniyle hayalleriniz için adım atabilirsiniz. Yeniliklere açıksınız; teslim olun, özgürleşin ve yetenekleriniz fark edin.',
      'Güneş’in Başak burcuna geçmesiyle çevreniz tarafından destek gördüğünüz sosyal bir tempoya giriyorsunuz. Sosyal sorumluluk projelerinde ekip çalışması yapabilirsiniz. Aynı yolda olduğunuz insanlar bakış açınızı geliştirebilir ve arkadaşlıkta yeni kriterler belirleyebilirsiniz. 27 Ağustos’ta gerçekleşecek Başak Yeni Ay’ı ile ihtiyacınız olan motivasyonu bulabilir, çalışmaya başlayabilirsiniz. Kaliteli arkadaşlıklara yöneliyor, barış sağlıyorsunuz.',
      'Uranüs’ün Boğa burcundaki retrosuyla, özel hayatınızda ani gelişmeler olabilir, konulara bakışınız netleşebilir. Fırsatları görmeye çalışın. Maddi anlamda bazı iniş çıkışlar söz konusu olabilir.',
      'Terazi burcuna geçen Merkür ile kendinizi ılımlı bir şekilde ifade ettiğiniz bir dönemdesiniz. Kullanıldığınızı fark ettiğiniz noktada tavrınız değiştirip daha net davranışlar sergileyebilirsiniz. Planlarınızı kendinize saklıyorsunuz. Gizli bilgilere ulaşabilirsiniz. Eski aşklar gündeme gelebilir. İlişkilerde öğrendiklerinizle yeni bir tavır geliştiriyorsunuz.',
      'Gökyüzü size, kendinizi ve bıraktığınız izlenimleri önemsemenizi söylüyor. Dolayısıyla bu dönem en önemli uğraşınız fikirleriniz, gardrobunuz ve hayata bakış açınızı iyileştirme gayretiniz oluyor. Bu noktada birçok radikal karar almanın eşiğindesiniz. O eşikten bir adım daha attığınızda, sizin için asıl gerekli olanın ne olduğuna şahit olabilirsiniz. Geçmişte sizi yoran, boğan, durduran ve bir şeylerin önüne set çeken her şeyin önünü açıyorsunuz. Artık bazı hesapların üzerinde durmamak gerektiğini düşünmeye başladıysanız ve buna yönelik planlarınız varsa, bunları uygulamaktan korkmayın. Korkularınızı bir yana, önyargılarınızı diğer yana atın ve artık kendi yolunuzu açın.'
          'Ağustos ayında iş, kariyer, görev ve sorumluluklarınıza odaklanabilirsiniz. 12 Ağustos’ta Venüs’ün de Aslan burcuna ilerlemesiyle üstlerinizden, yaşlı ve olgun kimselerden, otorite konumunda kişilerden bolca destek görebilirsiniz. Aynı tarihte gerçekleşen Kova burcundaki dolunay ev ve aileye ilişkin konularda dikkat çekici olabilir. Neredeyse ay boyunca Başak burcunda ilerleyen Merkür sizi sosyal yaşama ve sosyal ilişkilerinize odaklayabilir.',
      'Bu dönemde işinizi, hedeflerinizi ilgilendiren konulara daha odaklı olabilirsiniz. Aynı zamanda evde, ailevi konularda da sizi sorumlu kılan konular ve bazı kısıtlamalar da olabilir. Bu hafta ilişkilerinizde, evlilikte ve ortaklı konularda bazı sürprizler, beklenmeyen değişiklikler gündeme gelebilir. Tartışmalara dikkat etmelisiniz. 1’i civarında gruplar ve iş içinde daha etkin davranmak gerekiyor. 4’ü sonrasında hedefleriniz yönünde daha hızlı ve etkin olabileceksiniz. 5’i civarında ise kişisel bir konuda daha planlı olmaya bakmalısınız.',
      'Yönetici gezegeniniz Mars, 2022 yılının yaklaşık 5 ayını İkizler burcunda geçirecek. Bu da kendi içinizde dönen, dönmekle kalmayıp sizi de başka bir yöne eviren bir etki barındırıyor. Her anlamda çok çalışacağınız, çok yönlü olacağınız ve aklınızdan geçenlerin ruhunuza işleyeceği bir süreçten bahsediyoruz. Mevcut gelirlerinize ek olarak yeni gelir kaynakları üretebilir, kendi el emeğinizle ortaya koyacağınız ürünler ya da çalışmalar gündeminize gelebilir, uyuyacak vakit bile bulamayacağınız ama bundan mutluluk duyacağınız günler yaşayabilirsiniz.',
      'Ekonomik anlamda kendinizi fazlasıyla ve yoğun bir şekilde destekliyor olmanız, psikolojik olarak da rahatlamanızı sağlayacaktır. Bugüne kadar yapmak istediğiniz ya da bırakmak istediğiniz her şey için gereken gücü kendinizde bulabilirsiniz. Hayatınız hep bir dönüşüm hikayesi yazmakla geçmiş olabilir. Bu defa, her şeyi yaşayarak göstereceksiniz. Kendinize de, ailenize de…',
      'Duygusal etkileşimde bulunacağınız insanlarla bir araya gelmek, paylaşımlarda bulunmak kendinizi mutlu hissetmenizi sağlayacaktır. Şans vermenin, kalbini açmanın dayanılmaz özgüveni sizi sosyal çevrenizde de görünür hale getireceği için hedefinize giden yolları da genişletebilirsiniz. Çocuk sahibi bir Akrep burcuysanız, onların yaşantısına ve gelecek hedeflerine yönelik çalışmalarınız olabilir. Kendilerini bulmalarını ve yeteneklerini keşfetmelerini sağlayacağınız fikirler ortaya koyabilirsiniz.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'aslan') {
    List<String> dizi = [
      'İki uzun vadeli ve güçlü gezegen yaşamınızı tam anlamıyla değiştirmek için büyük gayret gösterecek.Ama bu sefer sizlerde onlarla işbirliği yapıyor olacaksınız. Yani özellikle 2018 Mayıs ve 2019 Eylül arasında yaşanılanlara bir dönelim. Burada kırmaya çalıştığınız bazı kurallar hakkında yeniden şekilleniyorsunuz. Bu yıl sağlık ve sorumluluklarınıza dikkat edilmesi gerekiyor.',
      'Yeterince dinlendiğinizden emin olun. İlişkilerde kendinizi hayalet gibi hissediyor olabilirsiniz. Aşk ve ilişkiler geçen olduğundan daha iyi bir noktaya gidecek. Ama maalesef bu yılda partneriniz gereğinden fazla anlayış istediğini sizlere söyleyebilir. Duygusal dünyanızda yaşadığını türbülanslar bu yıl artık şekil alma noktasına gidiyor.Yeni bir ilişki başlatabilirsiniz.Bu iş ortamınız ya da işbirlikleriniz noktasında olabilir.Yeni bir iş dünyası yaratıyorsunuz. Son 3 yıldır iş hayatınızda uğradığınız hakszılıklar ve başarısızlıklar sizede alıp başınızı gitme isteği verdi.Ama şimdi işler değişiyor.',
      'Yıl içinde gökyüzünde yaşanacak Güneş Tutulmalarının Boğa ve Akrep burçlarında olması sizleri kariyeriniz ve kazanımlarınızla ilgili büyük değişimlere sürükleyebilir. Bu sene maddi kazanımlarınızı ve yatırımlarınızı kendinizi geliştirmek için kullanacaksınız. Ya da elinizde olan bir malınızı ortaklaşa bir işe girmek için kullanabilirsiniz. Finansal hukuki süreçlerinizle ilgili de yeni bir durum meydana gelebilir.',
      'Bu seneki kariyer hedeflerinizi gerçekleştirmek isterken maddi durumunuzun size sağladığı güvenlik alanını da göz ardı etmemelisiniz. Örneğin; bir kurumda düzenli geliri olan bir iş içindeyken dışardan herhangi bir ortaklık yapma kararı aldığınızda düzenli olan işi bırakmak yerine her ikisini de sabır ve çalışkanlıkla devam ettirmelisiniz. Bu sene sahip olduğunuz kişisel yeteneklerinizden para kazanmak adına kendi işinizi kurmak ve buna yatırım yapmak doğru bir karar olurken asıl güvende olduğunuz alanlarınızı da hemen terk etmemelisiniz.',
      ' Sürpriz şanslar ve fırsatlar artık önünüze kariyer alanında gelmeye başlayacak. İhtiyaçlarınızı ve hayallerinizi bir araya getiren muhteşem sonuçlar sizlerle olacak. Uzun zamandır hayallerini kurmuş olduğunuz mutluluklara ulaşmaya açık olduğunuz bu yılı çok iyi değerlendirmelisiniz. Sizi mutluluğa götüren yeni deneyimlere heyecanla atılırken kesinlikle adım adım ve dikkatli ilerlemelisiniz.',
      'Satürn gezegenin 2020 Mart ayından beri kova burcunda olması sizleri bir çok konuda özellikle ilişkilerde oldukça zorladı ve bir takım engellerle karşılaştırdı. Bu seneki sınavları size maddi konularda olabilir. Bu sene elde etmiş olduğunuz şans ve fırsatları korumak için maddi önlemler almak ve maddi bir sorumluluğu dikkatli üstlenmeniz gerekmektedir. Otorite figürlerle verdiğiniz mücadelenin sonuna geliyorsunuz. Yılın ortasında kazandığınızı görmek size mutluluk verecek.'
          'Maddi projelerinizde uzun vadeli istikrarlı oluşumları genişletme zamanıdır. Borç ve alacak ilişkilerinizde geleceğe yönelik yeni planlamalar yaparken geçmiş maddi sorunları bitirebilir ve üstesinden gelebilirsiniz. Evliliğiniz ya da eşinizin işi ile ilgili konularda özellikle Satürn geri hareket yaptığı zamanlarda daha temkinli olmalısınız. 5 Haziran ve 23 Ekim zamanları özellikle daha farkındalıklı olmanız gereken bir zaman olarak öngörülebilir.',
      'Özellikle yurt dışı ve ticari kaynaklı projeleriniz var ise bununla ilgili önemli fikir alışverişleri yapabilir, projeniz üzerinde daha istikrar sağlayan oynamalar yapabilirsiniz. Bu sizin için bol kazanç getiren bir kapı olabilir. Doğru insanlarla kuracağınız ilişkiler çok önemli. Kariyerde oluşturmanız gereken güvenli alanın ilk halkasını başlatabilirsiniz.',
      'Tek ihtiyacınız olan, size inanan insanlara ulaşıyor olmanız ve kendinizi doğru ifade etmenizdir. Bazı noktalarda sabrınız gerilse de politik dengeleri sağlamak adına biraz daha ılımlı davranmak zorundasınız. Unutmayın bazı şeylere kavuşmak sabır isteyen bir süreçtir. Uzun zamandır sabrınız denendi ama burasına son düzlük diyebiliriz.',
      'Hayatınızın belkide en güzel dönemlerinden birinde olabilirsiniz. Hayal kırıklıklarınızı ya da bazı başarısızlıklarınızı lütfen unutun.Yeni bir iş kurmak ya da hayallerinize ulaşmak için belkide muhteşem bir döngünün ilk başlangıcı olacak.Uzun yıllar süren ama bir türlü kısmet olmayan şeylerin önünüze geldiğini görürseniz bunların peşinden gitmeyi ihmal etmeyin.',
      'Çalışma hayatındaki yer değişikliği ile yeni maratona başlıyorsun. Gururun okşanacak ve terfi alacaksın. Duygularını ifade edemiyorsun, fakat son noktaya geldin. Yeni bir döngü için kurallarından ödün vermen gerekiyor.',
      'Aşk kapını çalıyor ve belki de bu yıla damganı vuracak hamleyi yapıyorsun. Yalnızlığın son buluyor. Tanışacağın kişi her şeyin yerli yerine oturmasını sağlayacak. Hızlı adımlar atabilir, kimbilir belki bir yıldırım nikahı bile söz konusu olabilir.',
      'Bedenini ve ruhunu aynı yerlere götürebilir, kendine güzel bir ziyaret planı hazırlayabilirsin. Sadece kişisel ihtiyaçlarını karşılamak ve ruhsal doygunluğa ulaşmanın düşüncesi içerisindesin. İzin ver, bahar sana destek olacak.',
      'Direndiğin değişim son noktaya gelerek seni büyük bir galibiyet noktasına taşıyor. Kariyerinde önemli bir ivme yakalayabilirsin. Karşılaştığın her zorluğa gerdiğin göğsünde şimdi haklı gururunu ve zaferini taşıyabilirsin. Kazanan sen oluyorsun.',
      'Yuva kurmak ve küçük bir çekirdek ailen olmasını istiyorsun. Kendini beğendirmek, kabullendirmek için çalışacaksın. Aşk hayatında artık uslandığını ve eski “sen” olmadığını kanıtlamalısın. Şimdiden kolaylıklar ve mutluluklar…',
      'Vaktini çalışma hayatını düzenlemekle geçirebilirsin. İyi bir zaman yönetimi yapman, sağlığını ihmal etmene neden olmayacaktır. Eklem ve diş problemlerin için gerekli kontrolleri yaptırmanda var. Kendin geri plana atma.',
    ];
    index = Random().nextInt(16);

    return dizi[index];
  } else if (burc3 == 'balik') {
    List<String> dizi = [
      'Sevgili Balıklar ve yükselen burcu Balık olanlar, Boğa burcundaki Mars Uranüs kavuşumuyla kendinize yeni bir sayfa açıyorsunuz. Kendinizi daha iyi ifade ediyorsunuz. Sürpriz gelişmeler size avantaj sağlayabilir. Elektronik aletler gündeminize gelebilir.',
      'Merkür’ün Başak burcuna geçmesiyle ilişkileriniz ön plana geçiyor. Yeni teklifler söz konusu olabilir. Enerjiniz artıyor. Ayrıntılarda kaybolmamaya çalışın. Şanslısınız ve evlilikte bir karara varıyorsunuz.',
      'Aslan burcuna geçen Venüs ile aşk hayatınız hareketleniyor. İş yerinde duygusal yakınlaşmalar olabilir. Günlük rutinlerinizde değişiklik yapmak isteyebilir ve kendinize iş çıkartabilirsiniz. Yöneticilerinizle ilişkilerinizi iyi tutmanız gereken bir dönemdesiniz. Belki bu dönem evcil hayvan edinebilirsiniz.',
      '12 Ağustos’taki Kova Dolunay’ı ile hayatınızda net olan konuları seçiyorsunuz. Size iyi gelmeyenle vedalaşıyorsunuz. Bu süreçte yüzleşmeler yaşayabilirsiniz. Kendinizi geliştirmeli ve değişime olan direncinizi kırmalısınız.',
      'İkizler burcuna geçen Mars, aile hayatınızı hareketlendiriyor. Evden keyif aldığınız süre artabilir. Zamanı iyi değerlendirmelisiniz. İş hayatınızda yaşananları aile içerisine taşımamalısınız ki ilişkilerinizi iyileştirebilesiniz. Gayrimenkul alma düşünceniz varsa almadan önce iyi bir araştırma yapmaya özen göstermelisiniz.',
      'Ay Neptün üçgeniyle sezgileriniz artıyor. Etkileyici konuşmalar yapabilirsiniz. Trafikte dalgınlıklara karşı dikkatli olun.',
      'Güneş’in Başak burcuna geçmesiyle yaşam düzeniniz değişiyor. Gerçeklere odaklanın. İşin ciddiyetine varın. Olaylar sırasında karşı tarafa yapıcı sözler sarf edin. 27 Ağustos’ta Başak burcundaki Yeni Ay ile birlikte evlilik süreci içindeyseniz bu süreçleri daha da hızlandırabilirsiniz. Enerjiksiniz. Bu enerjinizi doğru yerlere kanalize edin.',
      'Uranüs’ün Boğa burcundaki retrosu, hayattan ve insanlardan beklentilerinizi değiştiriyor. Kardeşlerinizle olan ilişkileriniz gündeme gelebilir. Esnek olmalısınız.',
      'Merkür’ün Terazi burcuna geçmesiyle ek iş konuları gündeme gelebilir. Yeni görüşmeler yapabilirsiniz. Bu konu da ailenizin desteğini almak sizi rahatlatabilir. Maddi anlamda hak ettiğinizi aldığınız bir süreç içine giriyorsunuz. Sorumluluklarınızı paylaşmayı öğrenin.'
          'Alacak davalarınız yeniden açılıyor. Ödenmesi gereken miktarlar gününde ödenmediğinden sizlere başka çare kalmıyor. Maddi güven oluşturmak ana hedef noktanız haline gelebilir. Kardeşleriniz ile yeni bir ticari faaliyetleriniz olacaktır.',
      'Eğitim hayatınız için önemli olacak. Para kazanacağınız bir ay içindesiniz. Tamamlamak ve ertelemek arasında duygusal karışıklık yaşayabilirsiniz. Mayıs ayı ikinci haftası taşınma ihtimaliniz yükseliyor. Yeniden başlamak için büyük bir değişime ihtiyaç duyuyorsunuz.',
      'Gelecek hedeflerinizi yeniden değerlendirdiğini bir dönem. Sizlerin etik kuralların ne kadar önemli olduğunu çevrenizinde anlaması için girişimleriniz olacaktır. Partneriniz ile kurduğunu ruhsal bağ da güven aramak yerine anı yaşamanın keyfine varacaksınız.',
      'Bu ay sıkışık aylardan biri olabilir. Mümkün oldukça kendinizi gerçekler üzerinde ilerletin. Yalnız kalmak en büyük tercihiniz olacak. Aile baskısı, ruhsal yorgunluk hepsi üst üste gelmesi fiziki enerjinizi de etkileyecektir.',
      'Maddi anlamda bazı riskler içeren bir ay olabilir. Hızlı hareket etmek isterken ayrıntıları fark edemeyebilirsiniz. Ekim ayı ikinci haftası tutkularınızı yönetemiyorsunuz. Duygusal boşluğunuz hata yapmaya itebilir.Sabırlı olun.',
      'Aile sorumluluklarınız ön planda. Kendinizi arka plana atmanız gerekebilir. Dost ve arkadaşlarınız sizlerin yanında yer almak için sıraya giriyorlar. Yılı ilişkilerinizin olumlu yöne gitmeyi ile kapatacaksınız.'
    ];

    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'basak') {
    List<String> dizi = [
      'Müjdeli haberlerle yeni serüvenine başlıyorsun. Bebek özlemin varsa, ilk müjdelerden biri bu olabilir. Sosyal çevrene yardımcı olmak için herkesi seferber edeceksin. Bir akımın öncüsü olabilirsin.',
      ' Bazı sırların ortaya çıktığı, çalışma koşullarının değişime uğradığı bir aydasın. Stresten kaynaklanan sağlık sorunlarına karşı dikkatli olmanda fayda var. Takıntılarının seni kontrol etmesine izin vermemelisin.',
      'Tazeleniyor ve arınıyorsun. İkili ilişkilerinde duygusal yönün ağır basabilir. Bunları içinde tutmak da seni yorabilir. Buna izin verme, her şeyi tüm açıklığıyla görmenin iyi taraflarına odaklan. Hayatın sana yaktığı ışığı takip et.',
      'Başına gelenlere iyi yanından bakmak zor olabilir. Ama değişiyor, değiştikçe de ilerliyorsun. Bunu bir kere fark etmek, tüm korkularını atmanı sağlayacaktır. Bildiğin ve mutlu olduğun alandan çıkmak istemediğinde, bilmediğin yerlerin sana katacaklarını düşünmeyi denemelisin.',
      ' İyi niyetinin ve doğru duruşunun ödülünü bu ay alıyorsun. Suçlandığın her konuda gerçeklerin ortaya çıkacak. İşte o zaman sende gerçekten yanında olan ve olmayanların farkına vararak gereken elemeyi yapacaksın.'
          'Çözülsün, tamamlansın dediğin ne varsa hepsinin birer birer gerçekleştiğini görebilirsin. Ailenin desteğini hissetmek, bu şekilde ilerlemek seni güçlü kılıyor. Neye sahip olduğunu anlamak, seni daha iyilerine kavuşturacaktır.',
      'Hobilerin, hobi olmaktan çıkabilir ve bundan bir kazanç elde edebilirsin. Tüm çalışmalarını buna göre yapabilirsin. Ticari girişimler yaz aylarına renk katabilir. Becerilerini ve kendini sakladığın yerden çıkarıyorsun.',
      'Sağlığınla ilgilenmen gerekebilir. Eklem ve dolaşım problemlerine odaklanmalısın. Çalışma koşullarının ağırlığı seni zorluyor olacaktır. Biraz dinlenmeyi, yeni başlangıçlar için güç toplamayı denemelisin. Korkma, senin isteyip de başaramadığın bir şey yoktur.',
      'Aşka kollarını açmaya hazır ol, bu sefer boşluklar dolabilir. Güven ve inanmak senin iki önemli parametren ve şimdi onlarla birlikte hareket edecek olmanın zamanındasın. Biri var ki, “işte” diyeceksin “işte el ele yürüyebileceğim, mutlu olacağım kişi”...',
      'Hareketli bir aya hazır mısın? Ekonomik koşulların için oldukça yüksek efor sarfetmen gerekecek. Bunun için yeni bir eğitim alman bile söz konusu olabilir. Farklı ve sana uymadığını düşündüğün bir yerden, hayatında yeni bir başlangıç yapabilirsin.',
      'Uzakları yakın edeceğin bir aydasın. Bu yakınlık kendine doğru bir yakınlık olacaktır. Bulunduğun çevreyi hatta ülkeyi bile değiştirebilirsin. Hayat seni hızlandırıyor. Kendine senin bile inanmayacağın şeyleri başarıyorsun. Ailen ve yeni kazandığın dostlukların manevi gücünü oluşturuyor.',
      'Şanslı zamanlardasın. Kariyerinde bir son yaşayabilir, bu sayede önemli bir başlangıç yapabilirsin. Planlarının ve beklentilerinin dışında bir iş tekliği sana farklı bir umut getirebilir. 2023 öncesinde, her şeyi ve herkesi en çok da kendini yeniliyorsun.',
      'Bu sene hedeflerinize ulaşmak için gökyüzünden sağlam bir destek alıyorsunuz. Yönetici gezegeniniz Merkür bu yıl içinde 4 kez hava burçlarında gerileme yapacak. Özellikle hayatınızla ilgili yapacağınız konuşmalar ve iş birlikleri bu yıla damgasını vuracak. Sağlam kazançlar ve yeni iş kolları sizi çok heyecanlandıracak.',
      'Özellikle Akrep ve Boğa Güneş Tutulmaları sizlerin kendinizi bazı gerçekleşebilecek önemli başarılara hazırlamanız gerektiğini söylemektedir. Bu durumda, daha önceki bir çalışmayı tamamladığınızda veya becerilerinizi zamanında geliştirdiğinizde yılın ikinci yarısına oldukça hazırlıklı ilerlemiş olacaksınız.',
      'Yıl içinde 10. Eviniz (Kariyer) bu yıl önemli değişiklikler sizlere vaat ediyor. Geçen sene başlangıçlarını hissettiğiniz ama şimdi değişimine tüm hızıyla şahit olduğunuz konular söz konusu olabilir. Kariyeriniz daha fazla yaratıcılık içerecek. “Sezgisel ve özgür” yollarla ilerlemek özgürlüğünü içinizde yavaş yavaş hissetmeye başlıyor olabilirsiniz. Artık bütün gün masanın arkasında kilitlenmek ya da rutin olan şeylere takılmak isteyemeyeceksiniz.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'boga') {
    List<String> dizi = [
      'Kariyerinde neyi değiştireceğini düşündüğün ve buna göre hareket edeceğin bir aydasın. Yeni bir sözleşme, bir sosyal çevre seni yeni bir konfor alanına götürüyor. Adım atmanın güzelliğine odaklan.',
      ' Bazı planlar yaptın ve artık bu planlarla ilgili ilerleme kat etmeye başlıyorsun. Ailen ve içinde bulunduğun toplum ana gündemini oluşturuyorsun. Kendine ve özgürlüğünden taviz vermemek, senin en önemli kazancın olacaktır.',
      'Sürprizlere hazır mısın? Beklenmedik olaylar karşısında beklenmedik aksiyonlar alabilirsin. Bir şeylere mecbur olduğunu hissedebilirsin. Öfken değil, umudun devreye girerse süreç içerisinde her şey senin lehine ilerleyecektir.',
      'Yaptıklarının ve yapmak istediklerinin hayatına somut bir şekilde dahil olduğunu görebilirsin. İkili ilişkiler ön planda, bu plan sana yeni bir ilişki de getirebilir. Evli bir Boğa burcu isen içinde biriktirdiğin duygularını baskılamak yerine konuşmayı denemelisin. Yıkım birikimden gelir ve sen bunu kendi ellerinle inşa eden olma!',
      ' Birlikte iş yaptığın insanlar ve ortaklıkların bu ayın gündemini oluşturuyor. Sosyal ilişkilerin vasıtasıyla kariyerinde önemli ilerlemeler kaydedebilirsin. Aşk hayatında seni hayal kırıklığına uğratan durumlar olabilir ama kendini bırakma, kısa sürede toparlanacaksın.',
      'Endişelerinden kurtuluyorsun. Kendine psikolojik olarak yük edindiğin ne varsa güvendiğin kişilerle ve güvendiğin ilişkilerle aşabileceksin. Yakın çevren olan ilişkilerin iyileşebilir, daha samimi paylaşımlar yapabilirsin. Bazı sorumlulukları üstüne alabilirsin, evde senin hakimiyetin kendini belli edebilir.',
      'Hayatınla ilgili radikal kararlara gidebilirsin. Emeklilik planlarını ailenin de desteği ile yürürlüğe koyabilir, artık sakin huzurlu bir sahil kasabasında yaşamın tadını çıkarmak isteyebilirsin.',
      'Çalışma koşulların ve geleceğin zihnini oldukça meşgul ediyor. Bağımsız çalışmak ve sorgulanmamayı beklerken, üzerinde hissettiğin baskı seni ani kararlara itebilir. Yenilikler istiyorsun ama beklentilerin fazla titiz olabilir. Ama önce kendini hazırlamalısın.',
      'Sorunlar son buluyor, ödüllerini almaya başlıyorsun. Kaybettiğin herkesin ve her şeyin yerine yenilerini koyuyorsun. İş hayatında bir karar aşamasında olabilirsin. Ama bunu tek başına yaşamak zorunda değilsin, istişarenin önemine sığınmalısın',
      ' Bazı sırların açığa çıkması mümkün olabilir. Beklenmedik bir yerden kırılabilir, öfkene yenik düşebilirsin. Kendine bunu yapma, soğukkanlılığın senin kurtarıcın olacaktır. Aradığın güveni buluyorsun, intikamdan uzaklaşırsan mutlu bir hikaye yazmaya başlıyorsun.',
      'Duygularını çok yoğun yaşayabilirsin. Kendini ifade etmek bu yüzden zor olabilir. Seni bu stresin içine sokan her şeyden sıyrılmayı seçmelisin. Bitmesi gereken ilişkileri bitir. Bir kapıyı kapatman, başka bir kapıyı açmanın ön koşuludur. Koşulları daha iyi anlıyorsun.',
      'Kendini keşfediyorsun, yeteneklerini fark ediyor ve ortaya koyuyorsun. Bunları sözcüklerin ve tavırlarınla birleştirdiğinde önemli ortaklıklar kurabilirsin. Davaların varsa, kazananı sensin. Eğitim hayatın varsa, en iyi öğrenen sensin. 2022’ye en güzel halinde veda edeceksin.',
      '2018 Mayıs ayından bu yana gerçekten değişimin gücünü her türlü hissetmeye başladınız. Satürn bu yıl sizin için hala değişim adına ne yaptığınızı test etmek için bazı zorlayıcı sorular soracaktır. Şayet artık 2021 yılından dersler aldıysanız bu yıl en kolay yıllardan biri olacaktır. Uzun yıllardır güçlü bir kariyer döngüsü içindesiniz ve bu yıl bununla ilgili gerçek bir başarı elde ediyorsunuz.',
      'Satürn 10.evinizde hareket etmesi kariyerinizin en iyi şekle gelmesi için veya en iyi başarıyı yakalayabilmeniz için sizi zorluyor denilebilir. Bir işte en iyisi olarak başarılı olmanız gerektiğini öne sürüyor. Ne olursa olsun 2022 yılının sonunda sistem size neyi üretebildiğinizi ya da başarınızın başkalarına bağlı olarak mı sürdürüp sürdürmediğinizi gösterecek.',
      'Aşk konusunda oldukça akıllandınız. Bu yıl temkinli görünüyorsunuz daha tutucu bir hal içindesiniz. Eski kalıpları yıkıyorsunuz. Partnerinizin sizden olgun olması gerekir fikrine sahiptiniz belkide ama şimdi bu değişti. Belki sizden yaşça küçük birine duyacağınız bir ilgi ya da başka mezhep belki de başka bir ülkede yaşayan biri gibi düşünebilirsiniz. Bu 2023 yılının daha önemli bir konusu olacak. Ama 2022 bunun bir altyapısı gibi duruyor.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'ikizler') {
    List<String> dizi = [
      'Sabit kalmayı, karar kılmayı öğreneceksin. Maddi özgürlüğünün kısıtlandığını hissedebilirsin. Düşüncelerini güvenliğin için yeniliyorsun. Önemli gelişmelere açık olacağın bir dönemdesin, bağımsızlığın ve güven duygun birbirini desteklerse kazanan sen olabilirsin.',
      'Eğitim hayatında yeni bir sayfa açabilirsin. Beklettiğin, ertelemek zorunda kaldığın her şeyi tamamlamak için hazırsın. Bu sayede hem kendini motive edecek hem de çalışmalarına hız katacaksın. Artık ileriye bakıyorsun.',
      ' Kariyerinde rekorlara imza atabilirsin.  Duygusallığı kenara bırakarak mantığınla hareket etmeyi denemelisin. Aile hayatını güçlü kelimelerin ile şekillendiriyorsun.',
      'Nisan seni sürprizlerle karşılıyor. Hızlı olmanın ve harekete geçmenin olumlu etkisi ile ön sıralarda yerini alacaksın. Yeteneklerini ortaya çıkarmak için sabırsızlan, böyle hissetmek seni ileriye taşıyacaktır. Yeni projelerle kendinden söz ettireceksin.',
      'Bütün sorunlarından arınıyorsun. İçine attığın, tek başına mücadele ettiğin her şey miadını dolduruyor. Duygularını yenileyerek hayata çok farklı bir pencereden bakmaya başlıyorsun. Kendinin bu yeni hali, verimli ve güzel sonuçlar getirecektir.',
      ' İkili ilişkilerin ay aya damga vurabilir. Duygularını açıkça ifade edeceksin. Sevgin paylaştıkça büyüyor. Ama gözüne bir perde inmesine izin vermemelisin, yanılgılara karşı dikkatli ol. Geçmişi sadece ders almak için kullan, kendine acı çektirmek için değil! Güzelliklere odaklanmak seni mutlu edecektir.',
      'Liderliğinde günlere, aylara yön veriyorsun. Kıvrak zekan çalışma ortamında söz sahibi olmana yardımcı olacak. Kişisel düzeyde ve yakın çevrenin çağrılarına göre ticari girişimlere açık olabilirsin. Hem kendine hem sevdiklerine tüm yardımseverliğinle koşmak yeniliklerin ve bereketin önünü açıyor.',
      'Huzursuz hissettiren konular bazı öfke patlamalarına neden olabilir. Yeni tanıştığın insanlara, yeni dahil olduğun ortamlara uyum sağlaman ve onlara tahammül etmen zorlaşabilir. Otokontrolünü yitirmediğinde ve özgürlüğünün kısıtlandığını düşünmediğinde, süreci en az hasarla atlatacaksın. Uyumlu olmayı seçmelisin.',
      'Kabına sığmayan bir enerjiyle dolup taşabilirsin. Düşünmeden hareket etmek en büyük hobin olacaktır. Ama kırıcı olmadan kendini ifade etmenin bir yolunu da bulmalısın. İkili ilişkilerin ve sosyal çevren hızına yetişemezken, tartışmalar ve sorunlar da kaçınılmaz olabilir.',
      'İş hayatınla ilgili önemli gelişmeler yaşayacağın bir aydasın. Bir değişikliğe gidebilir ya da önceki başvurularından olumlu dönüşler alarak iş sahibi olabilirsin. Detaylara takılmadan ihtiyacın olan şartları konuşmak sana artı puan kazandıracaktır.',
      'Gizli kalan ne varsa ortaya çıkabilir, duygularını ifade edecek gücü kendinde hissederek yeni bir ilişkiye başlayabilirsin. Bağışıklığa ve soğuk algınlığına dikkat etmelisin. Sadece fiziksel olarak değil, mental olarak da kendini koruman gereken bir zamandasın.',
      'Yıl biterken senin içinde de bazı şeylerin bittiğini görebilirsin. Hareket etmeye çalıştıkça köşeye sıkışan ruhun biraz da olsa rahatlamaya başlıyor. Umutların yeni başlangıçlarda en büyük destekçin olacaktır.',
      'Para eviniz çok büyük transitler almayacak. Bu belki de büyük parasal sorunlar yaşamayacağınız anlamı taşıyabilir. Finansal konularda özellikler her şeyi olduğu gibi kabul etmek ve önemli kariyer değişikliklerine ilerlemek size kazandırabilir. Mesela bir yerde ücret almadan ders vermeniz ya da para almadan yaptığınız işler daha fazla statükoya eğilim göstermeniz kazanç getirebilir.',
      'Bu yıl iş hayatına giriş yaptığınız ya da yeni bir alan seçtiğiniz yerde güçlü ve önde gelen insanlardan destek alacaksınız. Güç zehirlenmesi içine asla girmemelisiniz. Jüpiter Balıkta ve Neptün ile kavuşum gerçekleşecek. Yani ideal eşinizi yeni girdiğiniz bir işte yüksek statülü biri olabilir. Belki bir şirketin CEOsu ya da iş ortamınızda tanıştığınız yeni biri. ',
      'Bu yıl sizler için oldukça hareketli ve birçok yöne eğildiğiniz bir zaman. Adeta çok çalıştığınız hatta vakitsizlikten başınızı bile kaşıyamadığınız bir yıl olduğunu söyleyebiliriz. 2021 yılının sonlarına doğru kariyeriniz ile ilgili hak ettiklerinizi almaya başlamanız aslında 2022’nin daha iyi olacağının mesajını sizlere veriyordu. Kariyerinizde asıl sıçramalar yeni başlıyor ve sınırlarınız yeniden genişliyor. Mesleki durumunuz da bir statü kazanıyorsunuz.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'koc') {
    List<String> dizi = [
      'Geleceğin için yeni zirveleri hedefliyorsun. Ama kendini boşa kürek çekiyormuşsun gibi hissedeceksin. Geçmişte edindiğin tecrübelerinle artık hayatını daha güçlü temeller üzerine inşa edeceksin.',
      'Yeteneklerini özgürce ifade edebilecek güce sahip olacaksınız. Hayatında yön değişikliği yapacak planlarınızı hayata geçireceksiniz. Yeni bir başlangıcın eşiğinde olduğun ay içindesin.',
      'Kolektif olarak karşılıksız hizmet ettiğiniz ruhunuzu olumsuzluklardan arındıracaksınız. Kişisel varlığınızı düzenlemek adına rutinlerinizin dışına çıkıyorsunuz. Yurtdışı çalışmalarınız bu ay gündeminizde olacak.',
      ' Yeni başlangıçlara imza atacaksınız. Yanlışlık ve hatalarınızı geride bırakarak, kendinizi yeniden keşfedeceğiniz kanunlar yürürlüğe giriyor. Aşk’ın kanunu yeniden yazıyorsunuz.',
      'Yürüdüğünüz yollara set çekmek isteyenlere karşı zaferler kazanıyorsunuz. Dürüstlük ve ahlaklı yapınız ile ikili ilişkilerinizde söz sahibi olacaksınız. Şöhret veya tanınma bunun adına ne derseniz.',
      'Hayatınızda kendinizi köşeye sıkıştığınızı düşündüğünüz konularda çözümü keşfediyorsunuz. Evli olanlar için bir karar aşaması olabilir. Kendi kendinizi iyileştirecek gücü hissedeceksiniz.',
      'Liderlik ve hedef yeteneğinle üretkenliğinin zirvesine ulaşıyorsun. Mücadele gücün seni hayata bağlayan temel mihenk taşını oluşturur. Parasal kalıcı yatırımlar önüne geliyor.',
      'Öfkeni kontrol altında tutmalısın. Yıkıcı gücünü tamamlanma ve yeni başlangıçlara adım atmak için kullandığında ruhunun özgürleştiğini hissedeceksin. İletişim gücünü kaybetme.',
      'Mutluluğun kalıcı hale geliyor. Ruhsal yorgunluğun geride kalarak kendini yenilenmiş hissedeceksin. İletişim her şey olacak. Kendini tüketmeden bağlantılarını koru.',
      'Hızlı kararlar alabilecek bir dönemdesiniz. Bağımsız olmak isterken, yanlış kararlara imza atabilir, hatalı tamamlanmalar içerisine giriş yapabilirsiniz. Aydınlanan konular sizlerin korkularınızı yenmenizi sağlayacaktır.',
      ' Kendinizi güvende hissetmek için elinizden geleni yapacaksınız. Duygularınızı yaşamak adına cesur adımlarınız olacaktır. Sabit fikirlerini yıkıyorsun. Para kazandığınızı hissettiğiniz bir süreç başlıyor.',
      ' Popülerliğiniz artıyor. Sanat, ün, şan ve şöhret yeteneklerinizi sergilediğiniz ana alanları oluşturacaktır. Emin olmadığın hiçbir konu hakkında kesin hükümler içerisine girmemelisin.',
      'Yardım görmediğiniz, toksik olan tüm bağları kopartıyorsunuz. Sizin çabanız başkalarını motive ediyor. Siz değişirken çevrenizde güçlü bir etki yaratıyorsunuz. Bu bir katalizör olma anlamı taşıyabilir. O zaman değişim için bir araç olursunuz. Hayatın belki de dünyanın üzerindeki değişim için bu yıl yaptıklarınız hep önem taşıyacak. Yeni bir şeyin olmasını istiyorsunuz, bu yüzden değişimi başlatıyorsunuz ya da sıkılıyor ve kriz yaratıyorsunuz. Ne yaptığınıza dikkat edin.',
      'Ağustos ayında yüreğiniz sevdikleriniz için atıyor, aşka açık hatta âşık olabilirsiniz. 12 Ağustos’ta Venüs’ün de Aslan burcuna ilerlemesi yepyeni aşklara yol almanızı sağlayabilir. Aynı tarihte gerçekleşen Kova burcundaki dolunay başınızı aşktan ve sevdiklerinizden kaldırıp arkadaşlarınızı görmenizi sağlayabilir. Neredeyse ay boyunca Başak burcunda ilerleyen Merkür sayesinde gündelik yaşamınızı toparlayabilir, sağlık konularına zaman ayırabilirsiniz.',
      'Burcunuzdaki Mars ve Jüpiter ile enerji dolu bir aydasınız, çok kolay motive olabileceğiniz gibi bu iki gezegenin etkisiyle bu enerjiyi hızla tüketebilir ya da durmakta zorlanabilirsiniz, ani tepki vermemeye ve kontrollü davranmaya dikkat etmelisiniz. Merkür’ün düze dönmesiyle hızınız daha da artıyor ve iletişim, yolculuklar ve etkileşim ivme kazanıyor. Bu ay başlayan Satürn retrosu arkadaşlık ilişkilerinde uzun vadeli değerlendirmeler yapmanızı sağlayabilir. '
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'kova') {
    List<String> dizi = [
      'İş koşullarınız nedeniyle taşınıyorsunuz. Geçmiş ve modası geçmiş ne varsa geride bırakarak yeni bir hayata başlıyorsunuz',
      'Sizin ayınız olmaya aday. İkili ilişkileriniz canlanıyor. Aşk hayatınız renklenirken yüksek motivasyon ile hareket edeceksiniz.',
      'Finansal yoğunluğunuz olacaktır. Maddi yatırımlarınızı değerlendirmek için yeni kaynak araştırmasına başlıyorsunuz.',
      'İletişiminiz hız kazanıyor. İkili ilişkilerinizde yakın çevre desteğini alacaksınız. Eğitim hayatınıza yeni bir dal ekleniyor.',
      'Aile kuruyorsunuz. İlişkinizi ileriye taşıyarak geleceğinizi ortak paydada birleştireceksiniz. Hayatınızı yeniden şekillendirecek ve bazı nedenler bulacaksınız. Bu ay sizlerin bir dönüm noktası olacaktır.',
      'Yeni bir sosyal çevre ile tanışıyorsunuz. Kariyerinizdeki başarılarınız ile adınızdan söz ettireceksiniz. Günlük rutinlerinizi toplamak için kişisel verimliliği esas alacaksınız. ',
      'Bazı gizlilik içeren olayları yürütmek zorunda kalabilirsiniz. Gizli konular, sizleri yalnızlığa iten davranışlar, hayatınız hakkında arka planda dönen konuların öğrenildiği bir zaman dilimi olacaktır.',
      'Kişisel farkındalığınız damga vuracak. İkili ilişkileriniz, çevreye yansıttığınız karakteriniz, her konuda harekete geçerek yeni bir ben oluşturmak için çaba harcayacaksınız.',
      ' Maddi kazançlarınız artıyor. Güven sorunu yaşamamanız için sistemli ilerlemeyi seçmelisiniz. Uzak mesafeli dostluklar kurabilir, yüz yüze görüşmediğiniz ilişkilerinizden destek alabilirsiniz. Maddi kazançlarınız artıyor. Güven sorunu yaşamamanız için sistemli ilerlemeyi seçmelisiniz. Uzak mesafeli dostluklar kurabilir, yüz yüze görüşmediğiniz ilişkilerinizden destek alabilirsiniz.',
      'Yakın çevre iletişiminizde hareketli diyaloglarınız olacaktır. Düşünmeden harekete geçmeyin. Kariyer hayatınızda yeni bir standart kazanacaksınız. Hedeflerinizdeki değişiklik sizleri yeni bir kulvara hazırlıyor.',
      'Aile yakınlarınızın gerçek yüzlerini göreceksiniz. Aile bağı kurduğunuz kişiler hayal kırıklıkları oluşturabilir. Lütfen burada doğru ve açık davranın.',
      ' Aşk hayatınızda yaşanan gerginlikler son buluyor. Umut ve mutluluk sizinle olacak. Sakin bir iletişim diline özen göstererek diyaloglara girmelisiniz. Ekran önünde görünürlüğünüz artıyor.',
      'İlişkilerden yana şanslı olabilirsiniz. Ağustos ayında motivasyonunuzu ilişkilerden, karşınıza çıkan kişilerden, bire bir temas ve diyaloglardan alabilirsiniz. 12 Ağustosta Venüs’ün de Aslan burcuna ilerlemesi yeni bir aşk veya evlilik getirebilir. Aynı tarihte burcunuzda gerçekleşen dolunay kendinize odaklanmanızı sağlayabilir. Neredeyse ay boyunca Başak burcunda ilerleyen Merkür sizi ortak iş, girişim ve yatırımlara odaklayabilir. ',
      'Gündelik iş ve aktivitelerinize odaklı bir ay sizi beklerken kendinizi ruhen ve bedenen şifalandırabilir, şifa reçeteleriyle dolaşabilir, sağlık uzmanlarıyla, diyetisyenlerle zaman geçirebilir, kendinizi ruhen ve bedenen arındırabilirsiniz. Ev içi kazalara bu bir buçuk aylık dönemde daha fazla dikkat etmelisiniz. ',
      'Yönetici gezegeniniz Satürn burcunuzda retroya başlarken yaşamınızın temel taşlarını değerlendirme fırsatı sunabilir. Ev ve aileden aldığınız destekle kendinizi daha rahat ve huzurlu hissedebilirsiniz. Bekârsanız onların tanıştırdığı bir kimseyle bir ilişkiye başlayabilirsiniz. Merkür’ün düze dönmesiyle aşkta iletişim artıyor, sevdiklerinizle ilgilenme ve aşkınızla bol bol sohbet edip konuşma fırsatı bulabilirsiniz. '
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'oglak') {
    List<String> dizi = [
      'Sizler için yeni başlangıçlar ayı olacaktır. Hayatınızda zorluk yaşadığınız bütün alanlar da özgürleşiyorsunuz.Çok kolay bir ay olmayacak ama zor olması demek sizlere daha güzel şeylerin geldiğini gösterecek.Yeni bir dönüşüm zamanınızdasınız. Parasal sorunlar yaşıyor olabilirisiniz.Endişe etmeyin.',
      'Finansal kazançlarınız damgasını vuruyor. Yeni girişimleriniz ile ticari faaliyet alanlarınızdaki yeteneklerinizi ispatlayacaksınız.',
      'Yakın veya uzak farketmeksiniz çevrenizden uzaklaşmak isteyebileceğiniz bir ay olacaktır. Yalnız kalmak sizleri cezbediyor.Yeni bir aşk sizi içsel olarak ona doğru çekebilir.İlkkez çok cesur hissedeceksiniz.',
      'Yer ya da mekan olarak taşınıyorsunuz. Kariyer alanınızda yaşadığınız değişim ile belirlediğiniz hedefinize ulaşacaksınız.Belki yeni bir iş alanı açıyorsunuz.',
      'Sizlerin bile şaşıracağı duygusal etkilerle giriş yapıyorsunuz. Büyük bir aşk kapınızı çalıyor. Buz dağı oluşan duygularınızın yeniden alevlendiğini hissedeceksiniz.',
      'Sırlar ortaya çıkıyor. Güvendiğiniz ve samimiyetine inandığınız kişilerden beklenmedik gerçekleri öğreniyorsunuz. Haklılığınızın anlaşıldığı bir ay içindesiniz.',
      'Kişisel hayatınızda bazı konularda sonuca gitmek isteyeceksiniz. İlerisi gelmeyen ve sürekliliği olmayan somut varlıklarınızı elden çıkaracaksınız. İkili ilişkileriniz ile yeni ortaklı girişimlere imza atabilirsiniz',
      'Maddi finansal yapınızı düzenleme ihtiyacınız oluyor. Yeni bir sistem ve yeni bir kaynak haricinde çok fazla ayrıntılara takılacaksınız.',
      'Duygusal hassasiyetiniz artıyor. İletişiminizde alınganlık seviyeniz oldukça düşecektir. Ticari faaliyetlerinizde kararlarınızı duygusal olarak almaya çalışabilir, mantığınızı devre dışı bırakmak için yoğun çaba sarf edebilirsniz.',
      'Sizler için hareketli geçiyor. Aile yaşantınız, kariyeriniz sorumluluklarınız hepsi köşeye sıkıştırıyor. Ekim ikinci haftasından itibaren toplum önünde yer değişimi yaşayacaksınız. Beklenmedik olaylara hazırlıklı olun.',
      'Duygusal itiraflara sahne oluyor. Soğukluğu ve yalnızlığı kenara bırakarak sevgiyi yaşamak için adım atacaksınız. Çocuk sahibi olabilirsiniz. Ya da yeni bir işinize bir çocuk gibi davranıp büyütmek için bir plan içine girebilirsiniz.',
      'Çalışma alanınızda kişisel özelliklerinizi ortaya çıkarıyorsunuz. Göz önünde daha fazla olarak sorun çözme yeteneğinizi kullanacaksınız.',
      'Burcunuzun yöneticisi Satürn retrosu başlarken hayatınızı biraz rölantiye alma ve kendi yaşamınızla ve çevresel koşullarınızla ilgili değerlendirmeler yapma gayreti içinde olabilirsiniz. Boğa burcunda rahatlayan Venüs aşkı ve gönül işlerini daha kolay getirebilir yaşamınıza, biraz yavaşlayıp sevdiklerinize odaklanabilirsiniz. Merkür’ün düze dönmesiyle gündelik yaşamınızda sarpasaran işleri yoluna koyabilir, detayları daha kolay yakalayabilir ve daha rahat ve serin kanlı düşünebilirsiniz. ',
      'Kendinizi ev ve aile konularına iyice verebileceğiniz bir dönem başlıyor. Ailede insiyatif alabilirsiniz, sözünüzü dinletebilirsiniz. Aile bireylerinden bolca hatta istemediğiniz kadar çok destek görebilirsiniz. Onların tanıştırmasıyla bir ilişkiye başlayabilir hatta evlilik bile yapabilirsiniz. Canlı, neşeli sofralarda yeriniz hazır olabilir. Merkür retrosunda gündelik yaşamınızı iyi organize etmelisiniz. Ay tutulması sosyal farkındalığınızı artırıyor.',
      '2020 yılında yaşadığınız zorlu hikâyelerden sonra hızlı bir rota değişikliğine gittiniz. Şimdi rotanızı değiştirdiğiniz yolları izliyor ve yeni manzaralar görüyorsunuz. Hızlı bir şekilde hareket etmeyi seçin ve çalışma performansınızı iki katına çıkartın. İşyerinde önemli bir karar vermeniz ya da artıları ve eksileri ile kariyer değerlendirmeniz gerekebilir. Belki emekli olmak ya da hayatınızla ilgili başka radikal bazı geçişler yapmak istiyorsunuz. Kariyerinizde muhteşem bir başarı ve özgürlüğe ilerliyorsunuz. İş hayatındaki başarının sırrı, kendinize ve becerilerinize güvenmek için doğrudur. Kısaca; yılın sonuna doğru yeni iş fırsatları size açılacak noktada olabilir. Beklentilerinizi bu şekilde ayarlamalısınız.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'terazi') {
    List<String> dizi = [
      'aile ve kariyer konularındaki seçimler damga vuruyor. Aileniz ve dostlarınız harekete geçmeniz konusunda sizleri desteklerken, endişeleriniz adım atmanızdaki en büyük engel olacaktır. Köklerinizden aldığınız güç ile somut olarak hareket enerjisine sahip olacaksınız.',
      'Görünürlüğünüz artıyor. Toplum önünde yeni görevler, yeni sorumluluklar alarak söz sahibi olacaksınız.Sadece kandırılmalara,dolandırılmalara ekstra dikkat etmeniz gereken bir ay içindesiniz.Daha uyanık olun.',
      'Duygusal yoğunluk ile başlıyorsunuz. Hassasiyetiniz yüksek olarak kırılgan yapınızı dengelemekte zorlanacaksınız. Günlük aktivitelerinizi mümkün olduğunca ertelemek ilk tercihiniz olacaktır. Gizlilik içeren konularınızda dikkatinizden kaçan küçük detaylar olabilir. Sırlarınızı emin ellere teslim etmek isteyeceksiniz.',
      'Aşk hayatınız damgasını vuruyor. Özlem ve aşk dolu bu ay da hızlı hareket etmek isteyerek geçmiş sevgisizliğin tadını çıkaracaksınız. Yeni başlangıçlar hayatınızda sizleri yol ayrımına taşıyor olacaktır.',
      'Sizler için dönüşüm ayı oluyor. Korkularınızı geride bırakacak içsel uyanışa şahitlik edeceksiniz. Sabit düşüncelerinizin aslında sizlere nasıl etki ettiğinin yansıması ile karşılaşınca gerçekleri daha iyi fark ediyorsunuz. Finansal konularınızda elde ettiğiniz başarılar ile kendinize olan güveniniz artıyor. Riskli yatırım kaynaklarından uzak durmalısınız.',
      ' iletişiminiz güçleniyor. Yeni bir eğitim hayatına adım atabilirsiniz. Yakın çevre diyaloglarınız ile ticari faaliyetleriniz de kazanç sağlayacaksınız. Sahiplenme duygunuz çalışma alanınızda samimi dostluklar kazanmanıza olanak sağlayacaktır.',
      'hayatınızda kararsızlık yaşadığınız konularda tamamlanma yaşayacaksınız. Sonuca vardığınız ölçüde ilerleme kat ediyorsunuz. Beklenmedik olaylar karşısında sosyal çevrenizin görüşlerine başvurarak doğru bir yol izlemelisiniz.',
      'özgür olmak istiyorsunuz. Çevrenizin baskısından kurtularak kişisel isteklerinize göre hareket edeceksiniz. Bağımsızlığınızı herkes hissedecek. Yalnızlık duygunuz la baş etmekte zorlanabilir, bilinçaltınız geçmiş kırgınlıklarınızı yeniden canlandırmak isteyebilir',
      'Ruhsal olarak dağıldığınızı fark ediyorsunuz. Fiziksel ve ruhsal olarak disipline edilmeniz gerektiğini düşünerek sınırlarınızı keskinleştiriyorsunuz. Kimliğinizi doğru yansıtmanın yollarını arayacaksınız.',
      'hızlı giriş yapıyorsunuz. Ortaklı işlerinizde gelişmelere uyum sağlamakta zorlanabilirsiniz. Duygularınızla hareket etmemeye özen gösterin. Ekim ayı ikinci haftası maddi değerlerinize dikkat etmeniz gerekiyor.',
      ' miras, vergi, alacak verecek konularınız ana gündeminizi oluşturuyor. Duygularınız sizleri kararsızlığa iterken değişime olan karşı tepkiniz sizleri bazı ihtimallerden vazgeçmeye sürükleyebilir. Kardeşleriniz ile kısa mesafeli seyahatler yapabilir, içsel yorgunluğunuzu sakinleştirmek isteyeceksiniz',
      'yılın tamamlanması olduğu gibi sizler için de bir alanda tamamlanma diğer bir alanda yeniden başlangıç enerjisine sahiptir. Taşınma ve yer değişikliğine karşı olsanız da sistem sizin iyiliğinize çalışarak olması gerekeni gerçekleştirecektir.',
      'Kendinize olan güveninizi nasıl tazelemeniz gerektiğiyle ilgili birçok mücadele verdiniz. Gücünüzü buna mı harcamalı, hayatınızı elinize mı almalısınız? 2021 senesesi sadece size yormadı.2014 senesinden beri çeşitli mücadeleler veriyorsunuz. Siz çevrenizi yoran ve üzen bir değilsiniz ama çevrenize sınır çizemediğiniz için kendinizi inciten bir yanınız var.Şimdi bunu öğreniyorsunuz. ',
      'Ağustos ayında sosyal motivasyonunuz yüksek, arkadaşlarınıza ve sosyal çevrenize odaklanabilirsiniz. 12 Ağustos’ta Venüs’ün de Aslan burcuna ilerlemesiyle sosyal çevrenizden bolca destek görebilirsiniz. Aynı tarihte gerçekleşen Kova burcundaki dolunay aşk yaşamınız ve sevdiklerinizle ilgili konularda dikkat çekici olabilir. Neredeyse ay boyunca Başak burcunda ilerleyen Merkür farklı boyutlarda düşünmenizi kolaylaştırabilir, spiritüel ve mistik konulara odaklanabilirsiniz.',
      'Mütevaziliğiniz ve sakinliğinizin alkışlanacağı, takdir göreceğiniz bir ay sizi beklerken şimdiye kadar yaptıklarınızın karşılığını görme zamanında olabilirsiniz. Statünüz yükselirken, iş, kariyer anlamında önemli başarılara da imzanızı atabilirsiniz. Bu anlamda biraz şımarma zamanında olabilirsiniz. Ardından kendinizi oldukça sosyal bir süreç içinde bulabilir, dost ve arkadaşlarınızla mutlu zamanlar geçirebilirsiniz. '
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'yay') {
    List<String> dizi = [
      'finansal dengede kalmakta zorlanacaksınız. Yatırım yaparken korkularınızla baş edemiyorsunuz. Hayata dair maddi güven arıyorsunuz.Aşk hayatınızda beklenilmeyen süprizler ya da evlilik hayatınızda bazı baskıcı yönler sizi yorabilir.',
      ' seyahat programı hazırlıyorsunuz. Yalnız kalmak ve özgürlüğün tadını çıkarmak isteyeceksiniz. Şubat ayı ikinci yarısı duygusal yoğunluğa sahip olacaksınız. Aşk hayatınızda büyük süprizlere hazır olun.',
      'Bu ay yenileniyorsunuz. Yorgun olduğunuz konularda duygusal destek alarak harekete geçecek güce sahip olacaksınız. Tamamlanma ve yenilenme sizleri derinden etkileyerek hayata bakışınızı sil baştan değiştiriyor.',
      'Görünürlüğünüz artıyor. Fiziksel enerjiniz yükseliyor. Aktifliğiniz ve yüksek performansınız herkesi şaşırtacaktır. Bağışıklığınızı ve hormonal dengenizi kontrol ettirmek için rutin kontrollerinizi aksatmayacaksınız.',
      ' Ruhsal olarak sizi yoracaktır. Değişmeyen davranışlarınız yüzünüze çarpılacaktır. Artık kabulleniş aşamasına doğru geçiş yapıyorsunuz. Sınırlarınızı ortadan kaldırıyorsunuz.',
      'Kişisel farkındalıkla başlıyorsunuz. Sorumluluklarınızın gerektirdiklerini kabullenerek hayata artık olgunlukla bakacaksınız.',
      'Kimliğinize baskı alacaksınız. Sosyal çevreniz ve akrabalarınız maddi olarak sizlerden faydalanmak isteyebilir, iyi niyetinizi kullanmak isteyebilirler. Güven konusunda yeniden değerlendirme yapmalısınız.',
      'Eğitim hayatınızı tamamlıyorsunuz. Yoğun ve yorucu geçen eğitim hayatınızdan sonra iş başvurularınızda kısa sürede cevaplar alarak çalışma hayatına hızlı bir giriş yapacaksınız.',
      'Ailenizle ilgilenmeniz gerekebilir. Sağlık kontrolleri ve manevi ihtiyaçları için sizlerden destek arayacaklar.',
      'Döngüsel tamamlanma ayıdır. Ruhsal ve fiziksel bilinçaltını sorunlarınızı yenerek yeni bir hayata merhaba diyeceksiniz',
      'Verimli olmanın gerçekte ne anlama geldiğininin anlamına sahip olacaksınız. Karşınıza çıkan hayat sınavları ile baş etmek zor olacaktır. Düzenli olacaksınız.',
      'yeni bir ilişki ile başlıyorsunuz. İletişiminiz ile duygularınızı ifade edeceksiniz. Kendinize olan güveninizi kaybetmemek için hislerinizi paylaşmalısınız.',
      'Olaylara ve insanlara iyimser bir yerden bakmanın, sizi suistimal ettiğini düşündüğünüzde geri planda dönen her şey size ışık tutacaktır. Nerede stratejik nerede girişken olmanız gerektiğinin ayrımına varıyorsunuz. Sorumluluklarınız ve kendinize ayıracağınız zamanlarla ilgili planlar yapabilirsiniz. Beklenmedik çalışma ortamları ve konuları, işbirlikleri gündeminize gelebilir. Eğer bu planlar, sizin daha önce düşündüklerinize uygun değilse bundan rahatsızlık duymak yerine bunun size katkılarını düşünmelisiniz. ',
      'Önemli iş değişiklikleri, projeler söz konusu olabilir. Yaşantınıza bir denge kurmak isterken, bir tarafın daha ağır basacağını ve bunun da büyük emeklerle mümkün olacağını söyleyebiliriz. Sonucu boşuna olmayan, hak ettiğinizi karşılayan işlerin içinde olmak sizin şevkinizi arttıracaktır. Ama konforunuzu, mental ve fiziksel sağlığınızı iyi yönde etkileyen sonuçlar görmek için aceleci olmayın. Hayatınıza bir düzen getiriyorsunuz. Bu düzeni desteklemek için bedeninize de iyi davranmanız gereken bir yıldasınız.',
      'Karşıt burcunuz İkizler, yılın önemli bir kısmında Mars’ı ağırlayacak. Bu da, yoğun bir insan trafiği olarak hayatınıza etki edecek. Hayatınıza birilerini almak, onların fikirlerinden faydalanmak, kendi fikirlerinizi onlara anlatmakla ilgili oldukça hareketli günlerin sizi beklediğini söyleyebiliriz. Her türlü imzaya, anlaşmaya, duygusal ve ticari ilişkiye arkadaşlığa açıksınız. Kolay anlama, çok fazla konuda bilgi sahibi olmak gibi durumlar fazlaca günyüzüne çıkabilir. İlginizi çeken bir insan ya da bir iş olduğunda buna yönelmeniz zor olmayacaktır. Ancak birçok insan tanıyıp, birçok ilişkinin tam ortasında kalacağınız için bu her zaman iyi yönde çalışmayacaktır.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else if (burc3 == 'yengec') {
    List<String> dizi = [
      'Aşk seni etkisi altına alıyor ve şans kalbine ödül olarak yansıyor. Yıldız gibi parlayacaksın. Ama senin de kendine destek olman, bazı sabit düşüncelerinden kurtulman gerekiyor. Sezgilerin güçleniyor, kendini ve hedeflerini yansıtmak için bu gücü kullanmalısın. Zor günlerin sonuna geldin artık.',
      'Mirasla ilgili konuların varsa buna yoğun tempo harcayabilirsin. Akrabalarınla iletişim kurmak için elinden gelenin fazlasını yapmaya çalışacaksın. Güvenini maddiyata bağlamamalısın. Endişelerinden ve gereksiz yüklerinden kurtulmayı dene, sana asıl refahı sağlayacak olan budur.',
      'Bir değişikliği seni bekliyor, taşınabilirsin. Senin için geride bırakmak zor olsa da yeni bir hayata başlamak istiyorsun. Hadi kurtul eskilerden, yürümeye devam et ve hayatın keyfini çıkar.',
      'Arayışların son bulabilir ve o çok istediğin değişiklik gerçekleşebilir. Bu süreç sancılı olsa da ailenden alacağın destek seni ayağa kaldıracaktır. Her şey netleşiyor, açığa çıkıyor ve sen de eteğindeki taşları dökmeye başlıyorsun. Ama kırılmanın ne olduğunu bilen biri olarak, senin de kırmaman gerekiyor.',
      'Arınıyor, yüklerinden kurtuluyorsun. Değişim sana beklemediğin bir yerden gelebilir. Geçmişi geride bıraktığını ilk defa bu kadar derinden hissedebilirsin. İlişkiler konusunda fazla hassasiyet gösterebilirsin. Tutkularını kontrol altında tutmanda fayda olacaktır.',
      'Sağlığına dikkat etmelisin. Diyet ve beraberinde gelen kilo kaybı sağlığını tehdit etmeyecek şekilde olmalı, susuz kalmamaya dikkat etmelisin. susuz kalmamaya özen göstermelisin. Bir yeri toplarken başka bir yerden dağılmaman için kendinle, bedeninle, koşullarınla uyum içinde hareket etmen büyük önem taşıyor.',
      'Bazı sorumlulukları üstlenmen ve inisiyatif alman gerekebilir. Günlük yaşantında daha fazla konuyla ilgilenebilirsin. Bu yoğunluk sana ne istediğini, ne yapman gerektiğini gösterecek nitelikte olabilir. Tüm ilişkilerinde önemli değişikliklere gidiyorsun.',
      'Bağımsızlığını ilan etmeye hazır mısın? Yakın çevrenden uzaklaşmak isteyeceksin. İletişim kurduğun herkesle arana bir mesafe getirebilirsin. Ama seni yoran konularda tek başına mücadele etmek için kendini zorlama, gerektiği yerde profesyonel destek almayı dene!',
      'Yıkılıp yıkılıp küllerinden yeniden doğduğun bir aydasın. Yaşadıklarından anlam çıkarmayı bırakıyorsun, çünkü olacak olan olduğuna ikna oluyorsun. Kendini bir karar verme mecburiyetinde hissetme. Doğru kişi ve doğru hissin ne olduğunu anlaman biraz zaman alabilir.',
      'Öfkeni geleceğini şekillendireceğin bir enerji olarak kullanmayı tercih etmelisin. Sıkışıklığın seni duygusallığa itebilir ama varış noktanın ne olduğunu unutmamalısın. Kendinden, hedeflerinden vazgeçme. Evren sana isteklerini vermek için hazır, sen evinde bir bebek sesi duymaya ne kadar hazırsın?',
      'Maddi problemlerle uğraşmak zorunda kalabilirsin. Beklenmedik aksiliklerin yaşanması planları alt üst ediyor. Eğer bir b planın varsa, bu süreç seni o kadar da çok yormayacaktır. Kontrollü olman, krizleri kolay yönetmeni sağlayabilir.',
      'Bazı gerçekler gün yüzüne çıkabilir. Ama sen dedikodulara mahal ve fırsat vermeden sadece kendinle ilgilenmelisin. İkili ilişkilerinde bir düzen arayışına girebilir, bazı defterleri kapatabilirsin. Yılı büyük finallerle kapatıyorsun.',
      'Hayatınızla ilgili fark etmediğiniz her şey ile yüzleşiyorsunuz. Olaylara ve insanlara bakış açınızda kendinize yeni bir yön belirleyebilirsiniz. Kararlarınızı alırken artık mantığınızın daha ağır basması gerektiğini anlıyorsunuz. Aile hayatınızda aldığınız bazı yaralar bundan sonrası için ne yapmanız gerektiği konusunda size rehber oluyor. Bu durum ikili ilişkilerinize olan yaklaşımlarınıza da etki edecektir.',
      'Boğa ve Akrep aksında ilerleyecek Ay Düğümleri, istek ve arzularınızı gerçekleştirmek adına önemli bir sürece sizi dahil ediyor. Yeni bir sosyal çevreye dahil olabilirsiniz. Hayattaki asıl amacınızın ya da varmanız istediğiniz nokta konusunda bir farkındalığa erişebilirsiniz. Bu da size, becerilerinizi ne yönde kullanacağınızla ilgili ipuçları veriyor. Doğru bir iz sürme ile kendinize, kendi mutluluğunuza yönelmeniz an meselesi olabilir.',
      'Mars sizin 12.evinizde hareket edecek. Bazı durumları ve konuları gizlilikle götürmek sizi yorabilir. Duygusal dünyanız ya da gizli yürütmek zorunda kaldığınız bir ilişki içine çekilebilirsiniz. Burada nasıl ilerleyeceğinizi pek bilmiyor olsanızda oldukça heyecan verici bir durum içine çekileceksiniz. Âdeta bundan sonra yaşantınızda olmak istediğiniz kişi veya yerin alt yapısını oluşturduğunuz bir yerdesiniz. Bu süreçte diz,menüsküs ve bel fıtığı gibi ağrılara dikkat etmelisiniz. Buradan bazı operasyonlar geçirmeniz gerekebilir. Bunlarla ilgili en ufak belirtilerde ciddiye alarak kendinizle ilgilenin.'
    ];
    index = Random().nextInt(15);

    return dizi[index];
  } else {
    return "a";
  }
}
