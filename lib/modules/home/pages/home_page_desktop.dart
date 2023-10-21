import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/theme/theme_provider.dart';

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
      child: Column(
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
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? Colors.black87
                        : Colors.white,
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
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? Colors.black87
                        : Colors.white,
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
                                BarChartRodData(toY: 50, color: Colors.blue),
                              ]),
                              BarChartGroupData(x: 1, barRods: [
                                BarChartRodData(toY: 60, color: Colors.green),
                              ]),
                              BarChartGroupData(x: 2, barRods: [
                                BarChartRodData(toY: 70, color: Colors.blue),
                              ]),
                              BarChartGroupData(x: 3, barRods: [
                                BarChartRodData(toY: 80, color: Colors.green),
                              ]),
                              BarChartGroupData(x: 4, barRods: [
                                BarChartRodData(toY: 85, color: Colors.blue),
                              ]),
                              BarChartGroupData(x: 5, barRods: [
                                BarChartRodData(toY: 90, color: Colors.green),
                              ]),
                              BarChartGroupData(x: 6, barRods: [
                                BarChartRodData(toY: 85, color: Colors.blue),
                              ]),
                              BarChartGroupData(x: 7, barRods: [
                                BarChartRodData(toY: 75, color: Colors.green),
                              ]),
                              BarChartGroupData(x: 8, barRods: [
                                BarChartRodData(toY: 70, color: Colors.blue),
                              ]),
                              BarChartGroupData(x: 9, barRods: [
                                BarChartRodData(toY: 65, color: Colors.green),
                              ]),
                              BarChartGroupData(x: 10, barRods: [
                                BarChartRodData(toY: 60, color: Colors.blue),
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
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? Colors.black87
                        : Colors.white,
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
      ),
    );
  }
}

class CardSmallDashBoard extends StatelessWidget {
  final Widget imagem;
  final String titulo;
  final String valor;
  final IconData iconResumo;
  final String resumo;
  const CardSmallDashBoard({
    super.key,
    required this.imagem,
    required this.titulo,
    required this.valor,
    required this.iconResumo,
    required this.resumo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      width: 350,
      height: 130,
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.black87
            : Colors.white,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: imagem,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            titulo,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(valor,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconResumo,
                size: 12,
              ),
              Text(resumo,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
