import 'package:flutter/material.dart';
import 'package:mygoals/app/constants/spacements.dart';
import 'package:mygoals/app/ui/components/assets.dart';
import 'package:mygoals/app/ui/components/base_body.dart';
import 'package:mygoals/app/ui/components/card_home.dart';
import 'package:mygoals/app/ui/components/custom_app_bar.dart';
import 'package:mygoals/app/ui/components/custom_bottom_navigation_bar.dart';
import 'package:mygoals/app/ui/pages/home_controller.dart';
import 'package:mygoals/app/utils/darke.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<ButtonData> buttons = [
    ButtonData(
      asset: Assets.logo,
      activity: 'Be Active',
      times: 2,
      color: Color(0xffb284fe),
      timesType: TimesType.day,
    ),
    ButtonData(
      asset: Assets.logo,
      activity: 'Go for a walk',
      times: 5,
      color: Color(0xffff9a96),
      timesType: TimesType.week,
    ),
    ButtonData(
      asset: Assets.logo,
      activity: 'Read at night',
      times: 3,
      color: Color(0xfff1cd41),
      timesType: TimesType.week,
    ),
    ButtonData(
      asset: Assets.logo,
      activity: 'Cook dinner',
      times: 1,
      color: Color(0xff74ceff),
      timesType: TimesType.day,
    ),
    ButtonData(
      asset: Assets.logo,
      activity: 'Organize Work',
      times: 1,
      color: Color(0xff65dc9a),
      timesType: TimesType.day,
    ),
    ButtonData(
      asset: Assets.logo,
      activity: 'Practice French',
      times: 2,
      color: Color(0xff69dccd),
      timesType: TimesType.week,
    ),
  ];

  late HomeController _homeController;

  @override
  void initState() {
    _homeController = HomeController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: _homeController.title,
      ),
      body: BaseBody(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(Spacements.M),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: (MediaQuery.of(context).size.width * 1.7) /
                      MediaQuery.of(context).size.height,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: buttons.length,
                itemBuilder: (_, index) {
                  final button = buttons[index];
                  return CardHome(buttonData: button);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        homeController: _homeController,
        onTap: (value) => setState(() {
          _homeController.setTitle(value);
        }),
      ),
    );
  }
}

class ButtonData {
  const ButtonData({
    required this.asset,
    required this.activity,
    required this.times,
    required this.color,
    required this.timesType,
  });

  final AssetData asset;
  final String activity;
  final int times;
  final TimesType timesType;
  final Color color;

  String get timesToString => '$times times a ${timesType.described}';
}

enum TimesType { day, week }

extension TimesTypeExtension on TimesType? {
  static const _strings = {
    TimesType.day: 'day',
    TimesType.week: 'week',
  };

  String? get described => _strings[this];

  static TimesType? getFromString(String? string) {
    switch (string) {
      case 'day':
        return TimesType.day;
      case 'week':
        return TimesType.week;
    }

    return null;
  }
}
