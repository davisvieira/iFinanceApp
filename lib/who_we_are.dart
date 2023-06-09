import 'package:flutter/material.dart';

Widget financeWhoWeAre(String imgUrl, String title) {
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
        'Monte um planejamento financeiro',
        style: TextStyle(
          fontSize: 17,
          color: Color.fromRGBO(0, 155, 179, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      const Text(
        'Faça orçamentos mensais e mantenha seus gastos sob controle. Defina alertas para evitar passar do seu limite de despesas.',
        style: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(0, 155, 179, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      const Text(
        'Crie objetivos',
        style: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(0, 155, 179, 0.808),
            fontWeight: FontWeight.bold,
            height: -1.0),
      ),
      const Text(
        'Determine metas para alcançar os seus sonhos. Quer comprar uma casa, fazer uma viagem? Crie objetivos no app e realize os seus desejos.',
        style: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(0, 155, 179, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
      const Text(
        'Assuma o controle de suas finanças de forma definitiva',
        style: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(0, 155, 179, 0.808),
            fontWeight: FontWeight.bold,
            height: -1.0),
      ),
      const Text(
        'Cuidar do seu dinheiro pode ser simples. Com o Mobills, você organiza e planeja sua vida financeira em um único lugar.',
        style: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(0, 155, 179, 0.808),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
