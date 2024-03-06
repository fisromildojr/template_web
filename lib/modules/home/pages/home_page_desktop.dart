import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/modules/home/widgets/card_small_dashborard.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class HomePageDesktop extends StatelessWidget {
  final String? name;
  HomePageDesktop({
    super.key,
    this.name,
  });

  final ScrollController scrollControllerCardSmall = ScrollController();
  final ScrollController scrollControllerGraficos = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<ThemeController>(
          init: Get.find<ThemeController>(),
          builder: (controller) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  controller: scrollControllerCardSmall,
                  scrollDirection: Axis.horizontal,
                  // physics: const AlwaysScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      CardSmallDashBoard(
                        titulo: 'Contratos no mês',
                        imagem: Image.asset('assets/icons/contract-icon.png'),
                        valor: '15',
                        iconResumo: Icons.check,
                        resumo: '10% a mais que o mês anterior',
                      ),
                      CardSmallDashBoard(
                        titulo: 'Resumo financeiro',
                        imagem: Image.asset('assets/icons/bar-chart-icon.png'),
                        valor: 'R\$1.234.544,56',
                        iconResumo: Icons.monetization_on,
                        resumo: 'Base de calculo - últimos 12 meses',
                      ),
                      CardSmallDashBoard(
                        titulo: 'Colaboradores ativos',
                        imagem: Image.asset('assets/icons/team-icon.png'),
                        valor: '58',
                        iconResumo: Icons.monetization_on,
                        resumo: 'Aumento de 2% nos últimos 3 meses',
                      ),
                      CardSmallDashBoard(
                        titulo: 'Contas a pagar',
                        imagem: Image.asset('assets/icons/accounts-icon.png'),
                        valor: 'R\$ 72.850,55',
                        iconResumo: Icons.monetization_on,
                        resumo: 'Menos  16% em relação o último mês',
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  controller: scrollControllerGraficos,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(defaultPadding),
                        padding: EdgeInsets.all(defaultPadding),
                        width: 450,
                        height: 490,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Orcamento/Venda',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: PieChart(
                                    PieChartData(
                                      sections: [
                                        PieChartSectionData(
                                          color: Colors.amber,
                                          value: 68.000,
                                          showTitle: true,
                                          title: 'Orçamento',
                                          titleStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        PieChartSectionData(
                                          // color: Colors.amber,
                                          value: 30.000,
                                          showTitle: true,
                                          title: 'Venda',
                                          titleStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                      centerSpaceRadius: 100,
                                      sectionsSpace: 5,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Vendas',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    Text(
                                      'R\$ 58.000,00',
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(defaultPadding),
                        padding: EdgeInsets.all(defaultPadding),
                        width: 450,
                        height: 490,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Turnover',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 450,
                              height: 415,
                              child: BarChart(
                                BarChartData(
                                  borderData: FlBorderData(show: false),
                                  titlesData: FlTitlesData(show: true),
                                  barGroups: [
                                    BarChartGroupData(x: 0, barRods: [
                                      BarChartRodData(
                                          toY: 50, color: Colors.blue),
                                    ]),
                                    BarChartGroupData(x: 1, barRods: [
                                      BarChartRodData(
                                          toY: 60, color: Colors.green),
                                    ]),
                                    BarChartGroupData(x: 2, barRods: [
                                      BarChartRodData(
                                          toY: 70, color: Colors.blue),
                                    ]),
                                    BarChartGroupData(x: 3, barRods: [
                                      BarChartRodData(
                                          toY: 80, color: Colors.green),
                                    ]),
                                    BarChartGroupData(x: 4, barRods: [
                                      BarChartRodData(
                                          toY: 85, color: Colors.blue),
                                    ]),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(defaultPadding),
                        padding: EdgeInsets.all(defaultPadding),
                        width: 450,
                        height: 490,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Contas a pagar',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 450,
                              height: 415,
                              child: LineChart(
                                LineChartData(
                                  borderData: FlBorderData(show: true),
                                  gridData: FlGridData(show: false),
                                  titlesData: FlTitlesData(
                                      // leftTitles: SideTitles(showTitles: true),
                                      // bottomTitles: SideTitles(showTitles: true),
                                      ),
                                  minX: 0,
                                  maxX: 11,
                                  minY: 0,
                                  maxY: 100,
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: [
                                        FlSpot(0, 50),
                                        FlSpot(1, 60),
                                        FlSpot(2, 70),
                                        FlSpot(3, 80),
                                        FlSpot(4, 85),
                                        FlSpot(5, 90),
                                        FlSpot(6, 85),
                                        FlSpot(7, 75),
                                        FlSpot(8, 70),
                                        FlSpot(9, 65),
                                        FlSpot(10, 60),
                                      ],
                                      isCurved: true,
                                      // colors: [Colors.blue],
                                      dotData: FlDotData(show: true),
                                      belowBarData: BarAreaData(show: false),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
