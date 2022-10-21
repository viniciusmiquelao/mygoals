import 'package:flutter/material.dart';
import 'package:mygoals/app/config/constants/spacements.dart';
import 'package:mygoals/app/ui/components/assets.dart';
import 'package:mygoals/app/ui/components/base_body.dart';
import 'package:mygoals/app/ui/components/custom_app_bar.dart';
import 'package:mygoals/app/ui/components/custom_bottom_navigation_bar.dart';
import 'package:mygoals/app/ui/pages/home_page.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  late ButtonData _buttonData;
  @override
  void didChangeDependencies() {
    _buttonData = ModalRoute.of(context)?.settings.arguments as ButtonData;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(title: 'Progress'),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: BaseBody(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(Spacements.L),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: Stack(
                        children: [
                          Center(
                            child: Asset(
                              Assets.logo,
                              height: 50,
                              color:
                                  Theme.of(context).textTheme.headline6?.color,
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              height: 130,
                              width: 130,
                              child: CircularProgressIndicator(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                strokeWidth: 10,
                                value: 0.65,
                                color: _buttonData.color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Spacements.XL),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        InfoWidget(value: '23', title: 'LOREM'),
                        InfoWidget(value: '45.2%', title: 'DOLOR SIT'),
                        InfoWidget(value: '234', title: 'AMET'),
                      ],
                    ),
                    const SizedBox(height: Spacements.M),
                    const Asset(Assets.graph),
                    const SizedBox(height: Spacements.XL),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        GraphWeekDaysItem(day: 'Mon', percent: 0.8),
                        GraphWeekDaysItem(day: 'Tue', percent: 1.0),
                        GraphWeekDaysItem(day: 'Wed', percent: 0.5),
                        GraphWeekDaysItem(day: 'Thu', percent: 1.0),
                        GraphWeekDaysItem(day: 'Fri', percent: 0.7),
                        GraphWeekDaysItem(day: 'Sat', percent: 0.5),
                        GraphWeekDaysItem(day: 'Sun', percent: 0.4)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.value, required this.title});

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: Spacements.XXS),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class GraphWeekDaysItem extends StatelessWidget {
  const GraphWeekDaysItem({
    super.key,
    required this.day,
    required this.percent,
  });

  final String day;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120 * percent,
          width: 6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: Spacements.S),
        Text(
          day,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
