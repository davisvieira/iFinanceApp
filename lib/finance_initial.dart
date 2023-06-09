import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

Widget financeBody(String imgUrl, String title) {
  return Column(
    children: [
      Image.network(
        imgUrl,
        width: 400,
        height: 200,
      ),
      Text(
        title,
        style: const TextStyle(
            fontSize: 22,
            color: Color.fromRGBO(0, 155, 179, 0.808),
            fontWeight: FontWeight.bold,
            height: -1.3),
      ),
      const Text(
        'Novo investimento',
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(0, 134, 155, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      GFButton(
          onPressed: () {},
          shape: GFButtonShape.square,
          color: const Color.fromRGBO(0, 72, 83, 0.993),
          text: '',
          icon: const Icon(Icons.new_label)),
      const Text(
        'Buscar investimentos',
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(0, 134, 155, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      GFButton(
          onPressed: () {},
          shape: GFButtonShape.square,
          color: const Color.fromRGBO(0, 72, 83, 0.993),
          text: '',
          icon: const Icon(Icons.find_replace)),
      const Text(
        'Cancelar investimento',
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(0, 134, 155, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      GFButton(
          onPressed: () {},
          shape: GFButtonShape.square,
          color: const Color.fromRGBO(0, 72, 83, 0.993),
          text: '',
          icon: const Icon(Icons.cancel)),
    ],
  );
}
