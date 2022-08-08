import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/experience.dart';
import 'curve_line_painter.dart';
import 'experience_card_painter.dart';

class ExprienceTimeLineWidget extends GetResponsiveView {
  ExprienceTimeLineWidget(this.experiences);

  List<Experience> experiences;

  @override
  Widget desktop() {
    return Container(
      width: Get.width,
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 436,
            child: CustomPaint(
              painter: CurveLinePainter(DrawPosition.bottom),
              child: Container(),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, i) {
              return Container(
                width: 500,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Get.theme.primaryColorDark, width: 3),
                                  borderRadius: BorderRadius.circular(1000)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(1000),
                                child: Image(
                                  image: experiences[i].companyLogo,
                                  height: 48,
                                  width: 48,
                                ),
                              ),
                            ),
                            Container(
                              width: 436,
                              height: 250,
                              child: CustomPaint(
                                painter: CurveLinePainter(i % 2 == 0 ? DrawPosition.top : DrawPosition.bottom),
                              ),
                            ),
                          ],
                        )),
                    Align(
                        alignment: i % 2 != 0 ?Alignment.topLeft:Alignment.bottomLeft,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(i % 2 != 0 ?"assets/images/experience_card_top.png":"assets/images/experience_card_top.png"),
                                  fit: BoxFit.fill,
                              )
                          ),
                          margin: i % 2 != 0 ?EdgeInsets.fromLTRB(36, 0, 0, 84):EdgeInsets.fromLTRB(36, 84, 0, 0 ),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    child: Text(experiences[i].companyTitle,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                  ),
                                  Text(experiences[i].jobPosition),
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              );
            },
            itemCount: experiences.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        ],
      ),
    );
  }

  @override
  Widget phone() {
    return Text("");
  }
}
