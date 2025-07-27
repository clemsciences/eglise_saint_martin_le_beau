import 'package:eglise_saint_martin_le_beau/data/history_data.dart';
import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:historical_timeline/historical_timeline.dart';

class ChurchTimeline extends StatelessWidget {
  ChurchTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: MainBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Center(
                      child: SelectableText(
                        "Frise chronologique",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
              HistoricalTimeline(
                startMargin: 20,
                endMargin: 20,
                size: Size(60, 60),
                direction: TimelineDirection.vertical,

                timelineAppearance: TimelineAppearance.cards,
                events: HistoryData().data
                    .map((item) => item.toTimelineEvent())
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
