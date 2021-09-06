import 'package:flutter/material.dart';
import 'package:flutter_f1/Widgets/Theme.dart';
import 'package:flutter_f1/models/Catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class home_detail extends StatelessWidget {
  final Item Catalog;

  const home_detail({Key? key, required this.Catalog})
      : assert(Catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${Catalog.price}".text.bold.xl4.red800.make(),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkbulishColor,
                  ),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Buy".text.xl3.make())
        ],
      ).p16().w20(context),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag: Catalog.id, child: Image.network(Catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    Catalog.name.text.xl4.color(MyTheme.darkbulishColor).make(),
                    Catalog.desc.text.xl.color(Colors.grey).make(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}
