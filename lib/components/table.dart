import 'package:flutter/material.dart';

import '../helpers/colors.dart';

class BTTable extends StatelessWidget {
  final List<String> head;
  final List<List<Widget>> body;
  final List<List<Widget>>? actions;
  final ValueChanged<int>? onClickRow;
  @override
  const BTTable({
    Key? key,
    required this.head,
    required this.body,
    this.actions,
    this.onClickRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (actions != null && actions!.isNotEmpty) {
      head.add('');
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: head
                .map((e) => Expanded(
                      child: Text(
                        e,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: 16.0),
        if (body.isEmpty)
          const Center(
            child: Text('No registers in moment'),
          )
        else
          CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    List<Widget> rowBody = body[index]
                        .map((e) => Expanded(
                              child: e,
                            ))
                        .toList();

                    if (actions != null) {
                      rowBody.add(
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: actions![index],
                          ),
                        ),
                      );
                    }

                    return InkWell(
                      onTap: () {
                        onClickRow!(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                          8.0,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: BTColors.gray500,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Row(
                          children: rowBody,
                        ),
                      ),
                    );
                  },
                  childCount: body.length,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
