import 'package:course_app/ui/app.colors.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String name;
  final String avatar;
  const TopBar(this.name, this.avatar, {super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme th = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(small),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              avatar,
              width: 64,
              height: 64,
              filterQuality: FilterQuality.medium,
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: th.bodySmall,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    name,
                    style: th.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                splashRadius: large - 6,
                icon: Icon(
                  Icons.search_outlined,
                  size: large,
                ),
              ),
              SizedBox(
                width: small,
              ),
              IconButton(
                onPressed: () {},
                splashRadius: large - 6,
                icon: Icon(
                  Icons.settings_outlined,
                  size: large,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
