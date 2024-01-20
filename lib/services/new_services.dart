// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:city_project/models/eur_model.dart';
import 'package:city_project/models/gbp_model.dart';
import 'package:city_project/models/mesghal.dart';
import 'package:city_project/models/retail_gerami.dart';
import 'package:city_project/models/retail_nim.dart';
import 'package:city_project/models/retail_rob.dart';
import 'package:city_project/models/retail_sekeb.dart';
import 'package:city_project/models/retail_sekee.dart';
import 'package:http/http.dart' as http;

import 'package:city_project/models/usd_model.dart';

class NewService {
  Future<USD> fetch_price_dollar_rl() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/price_dollar_rl/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return USD.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<GBP> fetch_price_gbp() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/price_gbp/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return GBP.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<EUR> fetch_price_eur() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/price_eur/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return EUR.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<Mesghal> fetch_mesghal() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/mesghal/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Mesghal.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<RetailSekeeE> fetch_retail_sekee() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/retail_sekee/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RetailSekeeE.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<RetailSekeeB> fetch_retail_sekeb() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/retail_sekeb/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RetailSekeeB.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<RetailNim> fetch_retail_nim() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/retail_nim/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RetailNim.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<RetailRob> fetch_retail_rob() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/retail_rob/latest.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RetailRob.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<RatailGerami> fetch_retail_gerami() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/margani/pricedb/main/tgju/current/retail_gerami/latest.jsonn'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RatailGerami.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
