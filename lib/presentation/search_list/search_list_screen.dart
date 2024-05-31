import 'package:flutter/material.dart';
import 'package:flutter_image_search_clean_architecture_1/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Search App 1'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _queryTextEditingController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: '검색어를 입력하세요.',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      final query = _queryTextEditingController.text;
                      viewModel.onSearch(query);
                    },
                  )),
            ),
          ),
          Expanded(
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      children: state.photos
                          .map((photo) => Image.network(photo.largeImageURL))
                          .toList())),
        ],
      ),
    );
  }
}
