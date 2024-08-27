import 'package:flutter/material.dart';

enum ThreadAction { edit, delete, none }

class ThreadItem extends StatefulWidget {
  const ThreadItem({
    super.key,
    required this.text,
    required this.isSelect,
    required this.onPressed,
    required this.delete,
    required this.changeName,
  });

  final bool isSelect;
  final String text;
  final Function() onPressed;
  final Function() delete;
  final Function(String) changeName;

  @override
  State<ThreadItem> createState() => _ThreadItemState();
}

class _ThreadItemState extends State<ThreadItem> {
  final _textEditingController = TextEditingController();

  ThreadAction chatAction = ThreadAction.none;

  // bool _isHovering = false;

  void init(ThreadAction value) {
    setState(() {
      chatAction = value;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MouseRegion(
        // onEnter: (_) => setState(() => _isHovering = true),
        // onExit: (_) => setState(() => _isHovering = false),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            // foregroundColor: Colors.white,
            elevation: 0,
            backgroundColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            // backgroundColor: widget.isSelect
            //     ? Theme.of(context).colorScheme.secondary
            //     : _isHovering
            //         ? Theme.of(context).hoverColor
            //         : Theme.of(context).colorScheme.secondary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: chatAction == ThreadAction.edit
                    ? TextField(
                        controller: _textEditingController,
                        // cursorColor: Theme.of(context).scaffoldBackgroundColor,
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                        ),
                      )
                    : Text(widget.text),
              ),
              chatAction != ThreadAction.none
                  ? Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (chatAction == ThreadAction.delete) {
                              widget.delete();
                            } else {
                              widget.changeName(_textEditingController.text);
                            }
                            init(ThreadAction.none);
                          },
                          icon: const Icon(Icons.check_rounded, size: 20.0),
                        ),
                        IconButton(
                          onPressed: () => init(ThreadAction.none),
                          icon: const Icon(Icons.close, size: 20.0),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        IconButton(
                          onPressed: () => init(ThreadAction.edit),
                          icon: const Icon(Icons.edit, size: 20.0),
                        ),
                        IconButton(
                          onPressed: () => init(ThreadAction.delete),
                          icon: const Icon(Icons.delete, size: 20.0),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
