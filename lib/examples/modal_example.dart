// ignore_for_file: avoid_print

import 'base.dart';

class ModalExample extends StatelessWidget {
  const ModalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Space(
      direction: Axis.vertical,
      spacing: 16,
      children: <Widget>[
        CodeBox(
          title: '基本',
          description: '第一个对话框。',
          child: Space(
            children: [
              Button(
                'Open Modal',
                type: ButtonType.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: const Color.fromRGBO(0, 0, 0, .45),
                    builder: (context) {
                      return Modal(
                        title: 'Basic Modal',
                        child: Column(
                          children: const [
                            // style: TextStyle(
                            //   fontSize: 14,
                            //   height: 1.5,
                            //   fontWeight: FontWeight.normal,
                            //   color: Color.fromRGBO(0, 0, 0, 0.88),
                            // ),
                            Text('Some contents...'),
                            Text('Some contents...'),
                            Text('Some contents...'),
                          ],
                        ),
                        onOk: () => print('onOk'),
                        onCancel: () => print('onCancel'),
                        afterClose: () => print('afterClose'),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        CodeBox(
          title: '取消页脚',
          description: '不需要默认确定取消按钮时，你可以把 footerBuilder 返回 []。',
          child: Space(
            children: [
              Button(
                'Open Modal',
                type: ButtonType.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: const Color.fromRGBO(0, 0, 0, .45),
                    builder: (context) {
                      return Modal(
                        title: 'Basic Modal',
                        child: Column(
                          children: const [
                            Text('Some contents...'),
                            Text('Some contents...'),
                            Text('Some contents...'),
                          ],
                        ),
                        footerBuilder: (_, closeModal) => [],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        CodeBox(
          title: '自定义页脚',
          description: '更复杂的例子，自定义了页脚的按钮，点击提交后进入 loading 状态，完成后关闭。',
          child: Space(
            children: [
              Button(
                'Open Modal with customized footer',
                type: ButtonType.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: const Color.fromRGBO(0, 0, 0, .45),
                    builder: (context) {
                      return Modal(
                        title: 'Title',
                        child: Column(
                          children: const [
                            Text('Some contents...'),
                            Text('Some contents...'),
                            Text('Some contents...'),
                            Text('Some contents...'),
                            Text('Some contents...'),
                          ],
                        ),
                        footerBuilder: (_, closeModal) => [
                          Button(
                            'Return',
                            onPressed: () {
                              closeModal();
                            },
                          ),
                          Button(
                            'Submit',
                            type: ButtonType.primary,
                            onPressed: () {
                              closeModal();
                            },
                          ),
                          Button(
                            'Search on Google',
                            type: ButtonType.primary,
                            onPressed: () {
                              closeModal();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
