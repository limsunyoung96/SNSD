package kr.co.soccer.leagueResult;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.soccer.league.ILeagueService;
import kr.co.soccer.league.LeagueVO;

@Controller
public class LeagueResultController {
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Inject
	private LeagueResultService leagueResultService;
	
	@Inject
	ILeagueService leagueService;
	
	@GetMapping("league/leagueStatus.sc")
	public String leagueStatus(ModelMap model) throws Exception {
		LeagueVO league = leagueService.getRunningLeague();
		model.addAttribute("league", league);
		
		List<LeagueResultVO> status = leagueResultService.getLeagueResultList();
		model.addAttribute("status", status);
		return "/league/leagueStatus";
	}
	
	@GetMapping("/league/leagueStatusExcel.sc")
	public void leagueStatusExcel(HttpServletResponse resp) throws Exception {
		//XSSFWorkbook xlsWb = new XSSFWorkbook(); //xlsx 엑셀 2007 이상
		HSSFWorkbook wb = new HSSFWorkbook(); //xls 엑셀 97~03
		Sheet sheet = wb.createSheet("리그현황"); //시트명 설정
		
		CellStyle centerCell = wb.createCellStyle();
		centerCell.setAlignment(HorizontalAlignment.CENTER); //가운데 정렬
		centerCell.setVerticalAlignment(VerticalAlignment.CENTER); //중앙 정렬
	
		Row row = null;
		Cell cell = null;

		
		List<String> headerNames = Arrays.asList( "순위","팀이름","경기수","승","무","패","득점","실점","골득실","승점");
		
		createHead(sheet, headerNames, 0);
		
		List<LeagueResultVO> status = leagueResultService.getLeagueResultList();
		
		createBody(sheet, status);
		
		String downloadName = new String("리그현황.xls".getBytes("utf-8"), "iso-8859-1");
		// 다운로드를 위한 헤더 생성
		resp.setHeader("Content-Type", "application/octet-stream;");
		resp.setHeader("Content-Disposition", "attachment;filename=\"" + downloadName + "\";");
		resp.setHeader("Content-Transfer-Encoding", "binary;");
		//resp.setContentLength((int) f.length()); // 진행율
		resp.setHeader("Pragma", "no-cache;");
		resp.setHeader("Expires", "-1;");
		
		wb.write(resp.getOutputStream());
		resp.getOutputStream().close();		
	}
	
	
	
	private void createHead(Sheet sheet, List<String> headers, int rowNum) {
		Row row = sheet.createRow(rowNum); //0행 열을 생성 후
		Cell cell = null;
		
		for(int i = 0; i< headers.size(); i++) {
			cell = row.createCell(i); //0열 셀을 생성
			cell.setCellValue(headers.get(i)); //엑셀 셀에 데이터 삽입 > 0행 0열에 "데이터"라는 문자열이 삽입된다.
			//cell.setCellStyle(centerCell); //위에서 만들어놓은 셀 스타일 적용
			centerCell(cell);	
		}		
	}
	
	private void createBody(Sheet sheet, List<LeagueResultVO> results) throws Exception {
		Row row = null;
		Cell cell = null;
		int rowCnt = 1;
		for(LeagueResultVO result : results) {
			int cellCnt = 0;
			row = sheet.createRow(rowCnt++);
			row.createCell(cellCnt++).setCellValue(result.getRank());
			row.createCell(cellCnt++).setCellValue(result.getTmNm());
			row.createCell(cellCnt++).setCellValue(result.getRsltPlayed());
			row.createCell(cellCnt++).setCellValue(result.getRsltWin());
			row.createCell(cellCnt++).setCellValue(result.getRsltDraw());
			row.createCell(cellCnt++).setCellValue(result.getRsltLose());
			row.createCell(cellCnt++).setCellValue(result.getRsltGf());
			row.createCell(cellCnt++).setCellValue(result.getRsltGa());
			row.createCell(cellCnt++).setCellValue(result.getRsltGd());
			row.createCell(cellCnt++).setCellValue(result.getRsltPoint());
		}
		
	}
	
	
	private void centerCell(Cell cell) {
		CellStyle centerCell = cell.getCellStyle();
		centerCell.setAlignment(HorizontalAlignment.CENTER); //가운데 정렬
		centerCell.setVerticalAlignment(VerticalAlignment.CENTER); //중앙 정렬	
		// cell.setCellStyle(centerCell);	
	}
	
	
	
	@GetMapping("league/leagueRecords.sc")
	public String leagueTopOdd(ModelMap model) throws Exception{
		LeagueResultVO odd = leagueResultService.getLeagueTopOdd();
		LeagueResultVO win = leagueResultService.getLeagueTopWin();
		LeagueResultVO played = leagueResultService.getLeagueTopPlayed();
		model.addAttribute("odd", odd);
		model.addAttribute("win", win);
		model.addAttribute("played", played);
		logger.debug("leagueRecords의 odd={}",odd);
		logger.debug("leagueRecords의 win={}",win);
		logger.debug("leagueRecords의 played={}",played);
		return "league/leagueRecords";
	}
	
	
	

}
