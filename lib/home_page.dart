import 'package:city_project/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        FutureBuilder(
            future: _controller.price_dollar_rl,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: 'یک دلار آمریکا',
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.price_gbp,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: 'پوند انگلستان',
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.price_eur,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "یورو اروپا",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.mesghal,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "یک مثقال طلا",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.retail_sekee,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "سکه امامی",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.retail_sekeb,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "سکه تمام بهار آزادی",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.retail_nim,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "نیم سکه",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.retail_rob,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "ربع سکه",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
        FutureBuilder(
            future: _controller.retail_gerami,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return EatchPage(
                  text: "سکه گرمی",
                  snapshot: snapshot,
                );
              } else if (snapshot.hasError) {
                return const Center(
                    child:
                        Text('لطفا بعدا تلاش کنید... مقادیر ثابتی موجود نیست'));
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ],
    ));
  }
}

// ignore: must_be_immutable
class EatchPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var snapshot;
  // ignore: prefer_typing_uninitialized_variables
  var text;
  EatchPage({
    required this.text,
    required this.snapshot,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(snapshot.data!.t!),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Column(children: [
            cardMaker(number: snapshot.data!.p!, text: text),
            cardMaker(number: snapshot.data!.h!, text: 'بیشترین قیمت'),
            cardMaker(number: snapshot.data!.l!, text: "کمترین قیمت"),
            cardMaker(number: snapshot.data!.tEn!, text: "تاریخ میلادی"),
            cardMaker(number: snapshot.data!.tG!, text: "تاریخ شمسی"),
          ]),
        ),
      ),
    );
  }

  Card cardMaker({required number, required text}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      borderOnForeground: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
