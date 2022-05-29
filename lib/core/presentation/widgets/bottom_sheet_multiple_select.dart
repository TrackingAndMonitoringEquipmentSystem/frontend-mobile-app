import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomSheetMultipleSelect<T> extends HookWidget {
  final String label;
  final void Function(List<T>) onChanged;
  final bool isError;
  final String errorMessage;
  final String placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final Map<String, dynamic>? initialValue;
  final List<Map<String, dynamic>> listChoice;
  const BottomSheetMultipleSelect({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder = 'กรุณากรอกข้อมูล',
    this.suffixIcon,
    this.isObscureText = false,
    this.initialValue,
    this.listChoice = const [],
  });
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<T>> currentValue = useState(listChoice
        .where((element) => element['isSelected'] as bool)
        .map((e) => e['value'] as T)
        .toList());
    final controller = useTextEditingController();
    return Expanded(
      child: InkWell(
        onTap: () => _onPressed(context, currentValue, controller),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.keyboard_arrow_down,
            ),
            hintText: placeHolder,
            label: Text(
              label,
              style: const TextStyle(
                fontFamily: 'IBM Plex Sans Thai',
                fontSize: 14,
              ),
            ),
            errorText: isError ? errorMessage : null,
            errorStyle: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error,
                width: 0.5,
              ),
            ),
          ),
          enabled: false,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }

  void _onPressed(
    BuildContext context,
    ValueNotifier<List<T>> currentValue,
    TextEditingController controller,
  ) {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.9),
          child: Container(
            color: const Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: _buildBody(context, currentValue, controller),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    ValueNotifier<List<T>> currentValue,
    TextEditingController controller,
  ) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(224, 224, 224, 1),
                  ),
                )
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    currentValue.value.length == listChoice.length
                        ? Icons.check_box_rounded
                        : Icons.check_box_outline_blank_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text('ทั้งหมด'),
                  onTap: () {
                    if (currentValue.value.length == listChoice.length) {
                      currentValue.value.clear();
                    } else {
                      currentValue.value =
                          listChoice.map((e) => e['value'] as T).toList();
                    }
                    final displayText = listChoice
                        .where(
                          (e) => currentValue.value.contains(e['value'] as T),
                        )
                        .map(
                          (e) => e['displayText'],
                        )
                        .join(',');
                    controller.text = displayText;
                    onChanged(currentValue.value);
                    setState(() {});
                  },
                ),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                ...listChoice.map(
                  (choice) => ListTile(
                    leading: Icon(
                      currentValue.value.contains(choice['value'] as T)
                          ? Icons.check_box_rounded
                          : Icons.check_box_outline_blank_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(choice['displayText'] as String),
                    onTap: () {
                      if (currentValue.value.contains(choice['value'] as T)) {
                        currentValue.value.remove(choice['value'] as T);
                      } else {
                        currentValue.value.add(choice['value'] as T);
                      }
                      final displayText = listChoice
                          .where(
                            (e) => currentValue.value.contains(e['value'] as T),
                          )
                          .map(
                            (e) => e['displayText'],
                          )
                          .join(',');
                      controller.text = displayText;
                      onChanged(currentValue.value);
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
