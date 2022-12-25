import 'base.dart';

class SpaceExample extends StatelessWidget {
  const SpaceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Space(
      direction: Axis.vertical,
      spacing: 16,
      children: <Widget>[
        CodeBox(
          title: '基本用法',
          child: Space(
            children: [
              const Text('Space'),
              Button('Button', type: ButtonType.primary, onPressed: () => {}),
              Button('Button', onPressed: () => {}),
              const Text('Space'),
            ],
          ),
        ),
        CodeBox(
          title: '垂直间距',
          child: Space(
            direction: Axis.vertical,
            children: [
              const Text('Space'),
              Button('Button', type: ButtonType.primary, onPressed: () => {}),
              Button('Button', onPressed: () => {}),
              const Text('Space'),
            ],
          ),
        ),
        CodeBox(
          title: '对齐',
          child: Space(
            spacing: 16,
            children: [
              buildBox(
                Space(
                  align: WrapCrossAlignment.start,
                  children: [
                    const Text('start'),
                    Button('Button', type: ButtonType.primary, onPressed: () => {}),
                    buildBlock(),
                  ],
                ),
              ),
              buildBox(
                Space(
                  align: WrapCrossAlignment.center,
                  children: [
                    const Text('center'),
                    Button('Button', type: ButtonType.primary, onPressed: () => {}),
                    buildBlock(),
                  ],
                ),
              ),
              buildBox(
                Space(
                  align: WrapCrossAlignment.end,
                  children: [
                    const Text('end'),
                    Button('Button', type: ButtonType.primary, onPressed: () => {}),
                    buildBlock(),
                  ],
                ),
              ),
            ],
          ),
        ),
        CodeBox(
          title: '自定义尺寸',
          child: Space(
            spacing: 32,
            children: [
              const Text('Space'),
              Button('Button', type: ButtonType.primary, onPressed: () => {}),
              Button('Button', onPressed: () => {}),
              const Text('Space'),
            ],
          ),
        ),
        CodeBox(
          title: '自动换行',
          child: Space(
            spacing: 8,
            runSpacing: 16,
            children: List.generate(20, (index) => Button('Button', onPressed: () => {})),
          ),
        ),

        // TODO: 待支持
        // CodeBox(
        //   title: '分隔符',
        //   child: Space(
        //     spacing: 8,
        //     runSpacing: 16,
        //     children: List.generate(20, (index) => Button('Link', type: ButtonType.link, onPressed: () => {})),
        //   ),
        // ),
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
