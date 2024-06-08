import 'package:flutter/material.dart';

class MiniBox extends StatelessWidget {

  const MiniBox({ super.key, this.onSelect, required this.colores ,required this.selectedColor});
   final Color colores;
   final void Function()? onSelect;
   final Color selectedColor;
   @override
   Widget build(BuildContext context) {
       return  Expanded(
                    child: GestureDetector(
                      onTap: onSelect,
                      child: Container(
                        alignment: Alignment.center,
                        decoration:  BoxDecoration(
                            color: colores,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: selectedColor ==colores
                            ? const Icon(Icons.check)
                            : null,
                      ),
                    ),
                  );
  }
}