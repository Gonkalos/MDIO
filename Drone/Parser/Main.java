import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import java.io.File;
import java.io.IOException;

public class Main {

    public static void main(String[] args) {

        double grafo[][] = new double[13][13];

        File excelFile = new File("/Users/goncalo/Documents/MIEI/Year 3/MDIO/2020/Assessment 1/euclidean_distances.xls");

        Workbook workbook = null;

        try {

            workbook = Workbook.getWorkbook(excelFile);
            Sheet sheet = workbook.getSheet(0);
            Cell c;

            for (int i = 4; i < 17; i++){

                for (int j = 7; j < 20; j ++) {

                    c = sheet.getCell(j, i);
                    if (c.getContents().isEmpty()) grafo[i - 4][j - 7] = -1.0;
                    else grafo[i - 4][j - 7] = Double.parseDouble(c.getContents());
                }
            }
        }
        catch (IOException | BiffException e) { e.printStackTrace(); }

        StringBuilder sb = new StringBuilder();

        // distâncias euclidianas do nó estrela a todos os outros
        sb.append("3.0 x0001 + 4.24 x0002 + 6.32 x0003 + 8.25 x0004 + 5.66 x0005 + 6.0 x0006 + 10.0 x0007 + 9.85 x0008 + 10.0 x0009 + 10.20 x0010 + 11.18 x0011 + 12.81 x0012 + 7.21 x0013");

        for (int i = 0; i < 13; i++) {

            for (int j = 0; j < 13; j++) {

                if (i != j){

                    if (i < 10) sb.append(grafo[i][j] + " x0" + (i+1));
                    else sb.append(grafo[i][j] + " x" + (i+1));

                    if (j < 10) sb.append("0" + (j+1) + " + ");
                    else sb.append("" + (j+1) + " + ");
                }
            }
        }

        String funcaoObjetivo = sb.toString();
        funcaoObjetivo = funcaoObjetivo.substring(0, sb.toString().length() - 3);

        System.out.println(funcaoObjetivo);
    }
}