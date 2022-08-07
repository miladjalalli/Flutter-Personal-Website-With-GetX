import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:timelines/timelines.dart';

import '../../domain/entities/experience.dart';

 class ExprienceTimeLineWidget extends GetResponsiveView {
  ExprienceTimeLineWidget(this.experiences);

  List<Experience> experiences;

  @override
  Widget desktop() {
    return Flexible(
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodeItemOverlap: true,
          connectorTheme: ConnectorThemeData(thickness: 4.0, indent: 0, space: 0),
          direction: Axis.horizontal,
        ),
        padding: EdgeInsets.all(16),
        builder: TimelineTileBuilder.connected(
          indicatorBuilder: (context, index) {
            return ContainerIndicator(
              child: Container(
                width: 400,
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(100), border: Border.all(color: Get.theme.primaryColorDark,width: 2)),
                      padding: EdgeInsets.all(12),
                      child: Image(
                        image: experiences[index].companyLogo,
                        width: 56,
                        height: 56,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            );
          },
          connectorBuilder: (context, index, connectorType) {
            return Connector.dashedLine(
              color: Get.theme.primaryColorDark,
            );
          },
          contentsBuilder: (context, index) {
            return Container(
              width: 400,
              padding: EdgeInsets.fromLTRB(80,32,0,0),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(experiences[index].jobPosition,style: TextStyle(
                      color: Get.theme.primaryColorDark,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 16,),
                  Text(experiences[index].companyTitle,style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 16,),
                  Text("${experiences[index].startDate} - ${experiences[index].endDate}",style: TextStyle(
                    color: Get.theme.accentColor,
                  ),),
                  SizedBox(height: 16,),
                  Text(experiences[index].workplaces.name),
                ],
              )),
            );
          },
          itemCount: experiences.length,
        ),
      ),
    );
  }

  @override
  Widget phone() {
    return Text("");
  }
}

