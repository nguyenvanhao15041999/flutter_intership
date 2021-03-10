import 'package:flutter/material.dart';
import 'inforbussiness_models.dart';
import 'inforcompany_screen.dart';
import 'extension.dart';
class DisplayBusiness extends StatefulWidget {
  @override
  _DisplayBusinessState createState() => _DisplayBusinessState();
}

class _DisplayBusinessState extends State<DisplayBusiness> {
  double displayWidth;
  double displayHeight;

  @override
  Widget build(BuildContext context) {
    displayWidth = MediaQuery.of(context).size.width;
    displayHeight = MediaQuery.of(context).size.height;
    List<InforModel> inforData = <InforModel>[
      InforModel('Công ty  Keri', 'Trần Thị Thanh', '', 11111, 0246812),
      InforModel('Nina Company', 'Nguyễn Phú Trọng', 'asdasd', 22222, 0246812),
      InforModel('Location Company', 'GG', 'HCM', 25555, 9999995),
      InforModel('HG Company', 'Nguyễn Văn Hảo', 'HN', 25555, 9999995),
      InforModel('dhaushd', 'Lê Lai', 'DN', 25555, 9999995),
      InforModel('KK Company', 'Lê Lợi', 'Đồng Nai', 25555, 9999995),
      InforModel('Kh Company', 'Nguyễn Huệ', 'Kiên Giang', 25555, 9999995),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Business'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: displayWidth * 350 / 375,
          child: ListView.builder(
            itemCount: inforData.length,
            //LOOPING DATA
            itemBuilder: (context, i) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => InforCompany(),
                    ),
                  );
                },
                child: SizedBox(
                  width: displayWidth * 300 / 375,
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        inforData[i].businessName,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Tên đại diện: ${inforData[i].businessRepresentativeName}'),
                      trailing:
                      Text('Tax code: ${inforData[i].businessTaxcode}'),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
