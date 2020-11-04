package jspservlet.ch07;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.FileInputStream;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

@WebServlet(urlPatterns = "/ch07/excel-servlet", name = "ExcelServlet")
public class ExcelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FileInputStream fis = null;
        Workbook workbook = null;
        try {
            String path = getServletConfig().getServletContext().getRealPath("/ch07");
            System.out.println(path);
            fis = new FileInputStream(path + "/" + "poi.xlsx"); // Excel file
            //fis = new FileInputStream("d://poi.xlsx"); // Excel file

            workbook = WorkbookFactory.create(fis); // Excel 파일을 POI로 읽어옴
            Sheet sheet = workbook.getSheetAt(0); // 첫번째 Sheet 읽어옴

            int rowNumS = sheet.getFirstRowNum(); // 첫번째 Row 번호
            int rowNumE = sheet.getLastRowNum(); // 마지막 Row 번호

            for (int rownum = rowNumS; rownum <= rowNumE; rownum++) { // 처움부터 마지막 Row까지 순차적으로 처리
                Row row = sheet.getRow(rownum); // Row 조회
                if (row != null) {
                    int cellNumS = row.getFirstCellNum(); // Row 의 첫번째 Cell 번호
                    int cellNumE = row.getLastCellNum(); // Row의 마지막 Cell 번호

                    for (int cellnum = cellNumS; cellnum < cellNumE; cellnum++) { // 처움부터 마지막 Cell까지 순차적으로 처리
                        Cell cell = row.getCell(cellnum); // Cell 조회
                        if (cell != null) {
                            System.out.print(cell); // Cell 출력
                        }
                        System.out.print(" | "); // 구분자 출력
                    }
                }
                System.out.println(); // 줄 바꿈 출력
            }
        } finally {
            if (workbook != null) {
                workbook.close(); // Excel 리소스 반환
            }
            if (fis != null) {
                fis.close(); // 파일 리소스 반환
            }
        }
    }
}
