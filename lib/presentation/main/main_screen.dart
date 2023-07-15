import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/presentation/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('실시간 지하철 정보'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: '역 이름을 검색 해 보세요 ex)서울',
              suffixIcon: IconButton(
                onPressed: () {
                  viewModel.fetchSubwayInfo(controller.text);
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: state.subways.length,
              itemBuilder: (context, index) {
                final info = state.subways[index];
                return Text(
                    '${info.btrainSttus} ${info.trainLineNm} ${info.arvlMsg2}');
              },
            ),
          )
        ],
      ),
    );
  }
}
}
