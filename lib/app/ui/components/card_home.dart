import 'package:flutter/material.dart';
import 'package:mygoals/app/config/constants/spacements.dart';
import 'package:mygoals/app/ui/pages/home_page.dart';
import 'package:mygoals/app/utils/darke.dart';
import 'assets.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
    required this.buttonData,
    this.onPressed,
  });

  final ButtonData buttonData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonData.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(25),
        color: buttonData.color,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: onPressed,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: darken(buttonData.color, .2),
                    size: 30,
                  ),
                  itemBuilder: (_) => [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text('Opções'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Asset(
                      Assets.logo,
                      height: 70,
                      color: Theme.of(context).textTheme.headline6?.color,
                    ),
                    const SizedBox(height: Spacements.S),
                    Text(
                      buttonData.activity,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: Spacements.XXS),
                    Text(
                      buttonData.timesToString,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
