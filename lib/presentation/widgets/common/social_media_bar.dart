import 'package:flutter/material.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';

import '../../../app/constants/social_icons.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      margin: const EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue.withOpacity(0.3), width: 1.4),
        color: Colors.black.withOpacity(0.75),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://github.com/miladjalalli');
            },
            child: Icon(
              SocialIcons.github,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://www.linkedin.com/in/miladjalali1994',
              );
            },
            child: Icon(
              SocialIcons.linkedin,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                "mailto:miladjalali.dev@gmail.com?subject=Hello%20Milad",
              );
            },
            child: Icon(
              SocialIcons.envelope,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://stackoverflow.com/users/8349963');
            },
            child: Icon(
              SocialIcons.stackOverFlow,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://www.instagram.com/miladjalali.ir/');
            },
            child: Icon(
              SocialIcons.instagram,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://medium.com/@miladjalali');
            },
            child: Icon(
              SocialIcons.medium,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://wa.link/ggxmai');
            },
            child: Icon(
              SocialIcons.whatsapp,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
