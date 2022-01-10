import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

Widget newsHead(String path, String headline) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
    height: 250,
    width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12))
            ,
        color: Colors.lightBlue,
      ),
      child: Column(children: [
        Center(
          child: Container(
              height: 200,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(
                "assets/profile.jpg",
                fit: BoxFit.contain,
              )),
        ),
        Container(
          width: 360,
          height: 44,
          color: Colors.lightBlue,
          child: const Center(
            child: Text(
              "Frank works in office at noon",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        )
      ]),
    ),
  );
}

Widget newsArticle(
    String title, String content, int value, String source, String image) {
  String preview;
  if (content.length > 100) {
    preview = content.substring(0, 100);
  } else
    preview = content;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.lightBlue,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    width: 60,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 25,
                          color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                preview,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        )),
  );
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            "X-SYS NEWS"
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [


          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,
            child: Center(
              child: const Text(
                "HeadLines",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),
              ),
            ),
          ),
          Container(
            height: 300
            ,
            child: Container(
              height: 12,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  newsHead("path", "headline"),
                  newsHead("path", "headline"),
                  newsHead("path", "headline"),
                  newsHead("path", "headline")
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                newsTitle("General"),
                newsTitle("Politics"),
                newsTitle("Finance"),
                newsTitle("Social"),
                newsTitle("Crime"),
                newsTitle("Sports"),

              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              newsArticle(
                  "Crime rate increases in harare",
                  "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                  12,
                  "Daily mail",
                  "assets/profile.jpg"),
              newsArticle(
                  "Crime rate increases in harare",
                  "Lorem ipsum dolor sit amet, et eum simul iuvaret, duo solet nominavi menandri ex. Mel id tale scripserit, eu mel wisi everti fierent. Ad per viderer facilisi, ut iriure euismod nec, ei brute facilis usu. Id populo laoreet oporteat his. Affert aliquip per ea. Ne populo conceptam cum. Accumsan efficiendi in per. Sed doming constituto ei. Modus maiorum suscipiantur vim ne. In quo scriptorem suscipiantur, malorum tractatos sed no, et has mutat soluta. Duis inermis fabellas vim ne, nec dolorum blandit adversarium id. Has enim ponderum perfecto te. Autem scribentur id usu. Nominati antiopam moderatius ad sed. Atomorum adipiscing definiebas id nec, ea purto fastidii ius, at eum libris utroque. Eu pro timeam delectus dignissim, cu debet labitur sensibus mea. Nam dolor graecis ut. Ei porro omittam sed. In qui tempor explicari voluptatum. Est ex integre aliquid voluptatibus. Zril ponderum sit ad, est cu quem senserit, eam ex harum clita ubique. Te delectus lobortis periculis vel. Delenit meliore scaevola ut sit, at eam zril salutandi. Sea elit oportere ut, ut vel reque explicari. Ea pertinax reprehendunt sea, cu per nemore volumus instructior. Vix id reformidans signiferumque, quo ea illud porro viris. Aperiam voluptua ocurreret no sit, ne consulatu necessitatibus quo. Ut pri dicam voluptaria moderatius, ne sea nisl ridens suavitate. Ea sea populo iriure consetetur, pri cu nullam corrumpit. Rebum aperiam ceteros sit at, sumo mediocrem consectetuer cu sed. Inani nostrud intellegebat eu pro, at sed deserunt complectitur. Idque theophrastus an pri, ex pri alienum singulis atomorum, sit no falli aperiam. An mollis latine diceret mei, mel cu dicunt facilisi convenire, sed ei timeam contentiones. Augue ridens nemore quo ei. Ut duo nobis voluptatum. Ea vim erant putant oportere, case porro lucilius ne has. Eos tamquam labores appellantur at, mel ei offendit periculis. Sit ea consequat tincidunt argumentum, in discere facilis laboramus cum. Et mucius perfecto adipisci nec. Cetero timeam integre cu sea, novum sententiae no pro. Eum ex quot omittam albucius, et vix ferri nostro. Ad quem prima vis, duo at perfecto eloquentiam. In percipit invidunt nec, mea mucius singulis ea. Ei antiopam efficiendi vel, equidem molestie quaestio mei id. Ne cum omnesque similique, pri cu unum percipit, wisi melius sea in. Ex solum euismod suavitate nam. Quando impetus repudiandae at mei. At pertinax posidonium mei, est fugit offendit recteque ex, et mazim munere voluptatum his. Eam eu sint zril regione, per ut dicta dicam concludaturque. Duo erant labore ne, per an epicuri scriptorem, mel tale sanctus ex. Amet exerci deterruisset qui an, nam at possim delectus. Vidisse laboramus gloriatur pro an, eu qui zril possit, an quo iuvaret diceret. Consul luptatum deseruisse vis id, vim an accusata recusabo intellegebat. Assum nostro at qui.",
                  12,
                  "Daily mail",
                  "assets/profile.jpg"),
              newsArticle(
                  "Crime rate increases in harare",
                  "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                  12,
                  "Daily mail",
                  "assets/profile.jpg"),
              newsArticle(
                  "Crime rate increases in harare",
                  "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                  12,
                  "Daily mail",
                  "assets/profile.jpg"),
            ]),
          )
        ]),
      ),
    );
  }
  newsTitle(String val)
  {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5,8,5),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text(val
            ,style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16
              ),),
          ),
        ),
      ),
    );
  }
}
