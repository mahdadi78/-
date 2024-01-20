// ignore_for_file: non_constant_identifier_names

import 'package:city_project/models/eur_model.dart';
import 'package:city_project/models/gbp_model.dart';
import 'package:city_project/models/mesghal.dart';
import 'package:city_project/models/retail_gerami.dart';
import 'package:city_project/models/retail_nim.dart';
import 'package:city_project/models/retail_rob.dart';
import 'package:city_project/models/retail_sekeb.dart';
import 'package:city_project/models/retail_sekee.dart';
import 'package:city_project/models/usd_model.dart';
import 'package:city_project/services/new_services.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  late Future<USD> price_dollar_rl;
  late Future<GBP> price_gbp;
  late Future<EUR> price_eur;
  late Future<Mesghal> mesghal;
  late Future<RetailSekeeE> retail_sekee;
  late Future<RetailSekeeB> retail_sekeb;
  late Future<RetailNim> retail_nim;
  late Future<RetailRob> retail_rob;
  late Future<RatailGerami> retail_gerami;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future fetchData() async {
    price_dollar_rl = NewService().fetch_price_dollar_rl();
    price_gbp = NewService().fetch_price_gbp();
    price_eur = NewService().fetch_price_eur();
    mesghal = NewService().fetch_mesghal();
    retail_sekee = NewService().fetch_retail_sekee();
    retail_sekeb = NewService().fetch_retail_sekeb();
    retail_nim = NewService().fetch_retail_nim();
    retail_rob = NewService().fetch_retail_rob();
    retail_gerami = NewService().fetch_retail_gerami();
  }
}
