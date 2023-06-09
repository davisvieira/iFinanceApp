import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetInvestmentsPage extends StatefulWidget {
  const GetInvestmentsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GetInvestmentsPage();
  }
}

class _GetInvestmentsPage extends State<GetInvestmentsPage> {
  Future<List> getInvestiments() async {
    var url = Uri.parse('https://localhost:8080/api/v1/investimentos');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao carregar dados do Servidor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investimentos'),
      ),
      body: FutureBuilder<List>(
        future: getInvestiments(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar Investimentos'),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]['nome']),
                  subtitle: Text(snapshot.data![index]['descricao']),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
