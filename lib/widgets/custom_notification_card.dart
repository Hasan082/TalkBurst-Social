import 'package:flutter/material.dart';
import 'package:talkbrust/widgets/custom_appbar/custom_avater.dart';

class CustomNotificationCard extends StatelessWidget {
  final bool isFollow;
  final String name;
  final String? name2, username, reason;

  const CustomNotificationCard({
    Key? key,
    required this.isFollow,
    required this.name,
    this.name2,
    this.username,
    this.reason,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomCircularAvater(),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight:
                                isFollow ? FontWeight.w400 : FontWeight.w700,
                            color: const Color.fromRGBO(29, 41, 57, 1),
                          ),
                        ),
                        TextSpan(
                          text: isFollow
                              ? ' from your contacts is on talkbrust as '
                              : ' commented on ',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(29, 41, 57, 1),
                          ),
                        ),
                        TextSpan(
                          text: isFollow ? '$username' : '$name2 $reason',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight:
                                isFollow ? FontWeight.w400 : FontWeight.w700,
                            color: const Color.fromRGBO(29, 41, 57, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Last Wednesday at 9:42 AM',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(152, 162, 179, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (isFollow)
              const SizedBox(
                width: 16,
              ),
            if (isFollow)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(105, 147, 255, 1)),
                child: Text(
                  'Follow',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
