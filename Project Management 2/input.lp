// custos associados à redução das durações das actividades

min: 1000 ra2 + 200 ra3 + 800 ra4 + 1600 ra5 + 180 ra6 + 200 ra8 + 100 ra10 + 600 ra11 +
     500 rb2 + 100 rb3 + 400 rb4 + 800 rb5 + 90 rb6 + 100 rb8 + 500 rb10 + 300 rb11 +
     300 opcao1 + 1100 opcao2 + 200 opcao3 + 400 opcao4;

// opções alternativas

opcao1 + opcao2 <= 1;
opcao3 + opcao4 <= 1;

// tempo máximo para concluir o projecto

tf <= 26;

// relações de precedência

arco_i2: t2 >= ti + 0;
arco_i4: t4 >= ti + 0;
arco_i6: t6 >= ti + 0;
arco_23: t3 >= t2 + 7 - ra2 - rb2;
arco_3f: tf >= t3 + 2 - ra3 - rb3;
arco_42: t2 >= t4 + 9 - ra4 - rb4;
arco_45: t5 >= t4 + 9 - ra4 - rb4;
arco_53: t3 >= t5 + 4 - ra5 - rb5;
arco_5f: t3 >= t5 + 4 - ra5 - rb5;
arco_67: t7 >= t6 + 5 - ra6 - rb6;
arco_610: t10 >= t6 + 5 - ra6 - rb6;
arco_85: t5 >= t8 + 4 - ra8 - rb8;
arco_89: t9 >= t8 + 4 - ra8 - rb8;
arco_108: t8 >= t10 + 8 - ra10 - rb10;
arco_1011: t11 >= t10 + 8 - ra10 - rb10;
arco_119: t9 >= t11 + 7 - ra11 - rb11;

arco_74: t4 >= t7 + 6 - 1 opcao1 - 2 opcao2;
arco_78: t8 >= t7 + 6 - 1 opcao1 - 2 opcao2;
arco_9f: tf >= t9 + 2 - 1 opcao3 - 2 opcao4;

// valores das máximas reduções de tempo dos custos c1

ra2 <= 3;
ra3 <= 0.5;
ra4 <= 2;
ra5 <= 0.5;
ra6 <= 1;
ra8 <= 0.5;
ra10 <= 0.5;
ra11 <= 1;

// valores das máximas reduções de tempo dos custos c2

rb2 <= 1;
rb3 <= 0.5;
rb4 <= 1;
rb5 <= 0.5;
rb6 <= 1;
rb8 <= 0.5;
rb10 <= 0.5;
rb11 <= 1;

// tipos das variáveis

bin opcao1, opcao2, opcao3, opcao4;