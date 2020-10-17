import 'package:flutter/material.dart';
import 'package:netflixclone/models/content_model.dart';
import 'package:netflixclone/widgets/vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  @override
  final Content featuredContent;

  const ContentHeader({Key key, this.featuredContent}) : super(key: key);
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(featuredContent.imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.imageUrl),
          ),
        ),
        _PlayButton(),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                    icon: Icons.add,
                    title: 'List',
                    onTap: () => print('My List')),
                VerticalIconButton(
                    icon: Icons.info_outline,
                    title: 'Info',
                    onTap: () => print('Info')),
              ],
            )),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding:
          // !Responsive.isDesktop(context)
          //?
          const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
      // : const EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0),
      onPressed: () => print('Play'),
      color: Colors.white,
      icon: const Icon(Icons.play_arrow, size: 30.0),
      label: const Text(
        'Play',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
