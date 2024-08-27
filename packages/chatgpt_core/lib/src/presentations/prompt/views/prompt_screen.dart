import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../bloc/prompt_bloc.dart';

class PromptScreen extends StatefulWidget {
  const PromptScreen({super.key});

  static const routeName = 'prompt-dialog';

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  PromptBloc get _promptBloc => BlocProvider.of<PromptBloc>(context);

  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _promptBloc.add(const PromptEvent.getPrompts());
    _textController.addListener(() {
      _onSearch(_textController.text);
    });
  }

  void _onSearch(String value) {
    _promptBloc.add(PromptEvent.searchChanged(value));
  }

  @override
  void dispose() {
    _textController.removeListener(() {
      _onSearch(_textController.text);
    });
    _textController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).selectPrompt_openai),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocBuilder<PromptBloc, PromptState>(
          builder: (context, state) {
            final dataState = state.data;
            final prompts = dataState.filteredPrompts.isNotEmpty
                ? dataState.filteredPrompts
                : dataState.prompts;

            if (state.loadInProgress) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Column(
              children: [
                CupertinoSearchTextField(
                  onSubmitted: _onSearch,
                  style: Theme.of(context).textTheme.bodyLarge,
                  controller: _textController,
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.builder(
                    itemCount: prompts.length,
                    itemBuilder: (context, index) {
                      final prompt = prompts[index];

                      return Card(
                        key: ValueKey(prompt.id),
                        margin: const EdgeInsets.all(4),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          title: Text(prompt.title),
                          subtitle: Text(prompt.description),
                          onTap: () {
                            Navigator.of(context).pop(prompt);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
