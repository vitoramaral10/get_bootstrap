part of get_bootstrap;

class BTTable extends StatelessWidget {
  final List<String>? head;
  final List<List<BTCell>> body;
  final ValueChanged<int>? onClickRow;
  @override
  const BTTable({Key? key, this.head, required this.body, this.onClickRow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TableRow> rows = [];

    if (head != null && head!.isNotEmpty) {
      rows.add(
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: BTColors.dark),
            ),
          ),
          children: head
              ?.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
    }

    if (body.isNotEmpty) {
      for (var index = 0; index < body.length; index++) {
        rows.add(
          TableRow(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: BTColors.gray300,
                  width: 1,
                ),
              ),
            ),
            children: body[index]
                .map(
                  (e) => InkWell(
                    onTap:
                        (onClickRow != null) ? () => onClickRow!(index) : null,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:
                            e.alignment ?? MainAxisAlignment.start,
                        children: [e.child],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      }
    }

    return Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: rows,
    );
  }
}
