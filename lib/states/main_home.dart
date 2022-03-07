import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solarcellanalysis/models/details_model.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/widgets/show_progress.dart';
import 'package:solarcellanalysis/widgets/show_text.dart';

class MainHome extends StatefulWidget {
  const MainHome({
    Key? key,
  }) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  DetailsModel? detailsModel;
  bool load = true;
  String? urlImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  Future<void> readData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var datas = preferences.getStringList('data');
    //print('data ==> $datas');

    String pathAPI =
        'https://monitoringapi.solaredge.com/site/${datas![0]}/details?api_key=${datas[1]}';
    await Dio().get(pathAPI).then((value) {
      //print('value ==< $value');
      Map<String, dynamic> map = value.data;
      var detailsMap = map['details'];
      //print('detailsMap ==> $detailsMap');

      setState(() {
        detailsModel = DetailsModel.fromMap(detailsMap);
        load = false;
        urlImage =
            'https://monitoringapi.solaredge.com${detailsModel!.uris.SITEIMAGE}?hash=123456789&api_key=${datas[1]}';
      });
//print('name ==>> ${detailsModel.name}');
//print('address ==>> ${detailsModel.location.address}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: load
          ? ShowProgress()
          : LayoutBuilder(builder: (context, Constraints) {
              return Container(
                width: Constraints.maxWidth,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(urlImage!), fit: BoxFit.cover)),
                child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        ShowText(label: detailsModel!.name, textStyle: Myconstant().h2WhiteStyle(),),
                        ListTile(
                          leading: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                          title: ShowText(
                            label: detailsModel!.location.address,
                            textStyle: Myconstant().h3WhiteStyle(),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.flash_on_sharp,
                              color: Colors.white,
                            ),
                            ShowText(
                              label: detailsModel!.peakPower.toString(),
                              textStyle: Myconstant().h1WhiteStyle(),
                            ),
                            ShowText(
                              label: 'kWp',
                              textStyle: Myconstant().h3WhiteStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
    );
  }
}
