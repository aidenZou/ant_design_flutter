import 'base.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Space(
      direction: Axis.vertical,
      spacing: 16,
      children: [
        CodeBox(
          title: '水平分割线',
          description: '默认为水平分割线，可在中间加入文字。',
          child: Space(
            direction: Axis.vertical,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(text: 'Text'),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(text: 'Dashed', dashed: true),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
            ],
          ),
        ),
        CodeBox(
          title: '带文字的分割线',
          description: '分割线中带有文字，可以用 orientation 指定文字位置。',
          child: Space(
            direction: Axis.vertical,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(text: 'Text'),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(
                text: 'Left Text',
                orientation: DividerOrientation.left,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(
                text: 'Right Text',
                orientation: DividerOrientation.right,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(
                text: 'Left Text with 0 orientationMargin',
                orientation: DividerOrientation.left,
                orientationMargin: 0,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
              Divider(
                text: 'Right Text with 50 orientationMargin',
                orientation: DividerOrientation.right,
                orientationMargin: 50,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nonne merninisti licere mihi ista probare, quae sunt a te dicta? Refert tamen, quo modo.',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildBox(Widget child) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff40a9ff),
          width: 1,
          style: BorderStyle.solid,
          strokeAlign: StrokeAlign.inside,
        ),
      ),
      child: child,
    );
  }

  Widget buildBlock() {
    return Container(
      height: 70,
      color: const Color.fromRGBO(150, 150, 150, 0.2),
      padding: const EdgeInsets.fromLTRB(8, 32, 8, 16),
      child: const Text('Block'),
    );
  }
}
