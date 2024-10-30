import 'package:flutter/material.dart';




/*class ZodiacSignDetailsPage extends StatelessWidget {
  final String sign;

  ZodiacSignDetailsPage({required this.sign});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sign),
      ),
      body: Center(
        child: Text('Информация о знаке зодиака $sign'),
      ),
    );
  }
}*/


class ZodiacSignDetailsPage extends StatelessWidget {
  final String sign;
  final String description;
  final String imageUrl;

  ZodiacSignDetailsPage({
    required this.sign,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sign),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              sign,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text("Основные черты характера Овна: Энергичность и активность: Овны полны энергии и всегда готовы к действию. Они любят быть в центре внимания и часто становятся лидерами в своих группах. Смелость и решительность: Овны не боятся рисковать и принимать решения. Они смело идут навстречу новым вызовам и не отступают перед трудностями. Оптимизм и энтузиазм: Овны обладают позитивным настроем и способностью вдохновлять окружающих. Они всегда видят светлую сторону жизни и стремятся к достижению своих целей. Независимость и свободолюбие: Овны ценят свою свободу и независимость. Они не любят, когда их ограничивают, и предпочитают действовать самостоятельно. Импульсивность и прямолинейность: Овны могут быть импульсивными и действовать без долгих раздумий. Они также склонны говорить то, что думают, без прикрас. Слабые стороны Овна: Импульсивность: Иногда их импульсивность может приводить к необдуманным поступкам и ошибкам. Упрямство: Овны могут быть упрямыми и не склонными к компромиссам, что может вызывать конфликты. Нетерпеливость: Овны не любят ждать и могут проявлять нетерпение, если что-то идет не так быстро, как они хотят. Взаимоотношения: Овны ценят честность и прямоту в отношениях. Они могут быть преданными друзьями и партнерами, но также требуют уважения к своей свободе и независимости. В любви Овны страстные и эмоциональные, но могут быть непостоянными. Карьера: Овны часто достигают успеха в карьере благодаря своей энергии и решительности. Они хорошо подходят для руководящих должностей, предпринимательства и профессий, связанных с риском и активностью. Здоровье: Овны обычно обладают хорошим здоровьем, но могут быть склонны к травмам из-за своей активности. Важно для них следить за своим здоровьем и избегать чрезмерных нагрузок. Овны — это яркие и харизматичные личности, которые всегда стремятся к новым достижениям и не боятся препятствий на своем пути.",
              semanticsLabel: description,
              style: TextStyle(
                fontSize: 16,
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZodiacSignDetailsPage(
        sign: 'Овен',
        description: 'Овен — первый знак зодиака, планета — Марс. Этот знак символизирует начало, активность и энергию. Люди, рожденные под этим знаком, обычно энергичны, решительны и смелы.',
        imageUrl: 'https://example.com/aries.jpg',
      ),
    );
  }
}