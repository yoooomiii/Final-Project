package www.egg.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ReviewFileDataUtil {
	private ArrayList<String> extNameArray = new ArrayList<String>() // 허용하는 확장자 정의를 한 것.
	{
		{
			add("gif");
			add("jpg");
			add("png");
		}
	}; // <-- 현재 코드는 활용하지는 않는다.. 얘는 선언이지 기능이 동작하지는 않는다. 절대 미리 예측 금지..

	// 첨부파일 업로드 경로 변수값으로 가져옴 servlet-context.xml
	@Resource(name = "uploadPaths")  // 이름으로 주입받기, 그럼 이거 객체가 있어야 한다... 
	private String uploadPaths;

	public String getUploadPaths() {
		return uploadPaths;
	}

	public void setUploadPath(String uploadPaths) {
		this.uploadPaths = uploadPaths;
	}

	/**
	 * 게시물 상세보기에서 첨부파일 다운로드 메서드 구현(공통)
	 * 
	 * @throws FileNotFoundException
	 */
	//컨트롤러에서 매핑의 역활을 합니다... 
	@RequestMapping(value = "/downloads", method = RequestMethod.GET)
	@ResponseBody // 어떤 데이터를 포함하여 전송.. 어노테이션.. view지정하지 않고 바로 클라이언트 요청으로 응답.
	public FileSystemResource fileDownload(@RequestParam("filename") String fileName, HttpServletResponse response) {
		File file = new File(uploadPaths + "/" + fileName);
		response.setContentType("application/download; utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		return new FileSystemResource(file);
	}
	/*
	@RequestMapping(value = "/download.do", method = RequestMethod.GET)
	public void fileDownload(@RequestParam("filename") String fileName, HttpServletResponse response) {
	//	File file = new File(uploadPath + "/" + fileName);
		response.setContentType("application/download; utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		final File fileToDownload = new File(uploadPath + "/" + fileName);
		InputStream inputStream = null;  //스트림 객체를
		try {
			inputStream = new FileInputStream(fileToDownload); //파일에서 넣어주고
			IOUtils.copy(inputStream, response.getOutputStream());
			response.flushBuffer();  //응답해준다.
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();  //닫아준다.
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}*/

	/**
	 * 파일 업로드 메서드(공통)
	 * 
	 * @throws IOException
	 */
	public String[] fileUpload(MultipartFile[] file) throws IOException {
		String[] files = new String[file.length];
		for (int i = 0; i < file.length; i++) {
			if (file[i].getOriginalFilename() != "") { // 실제 file객체가 존재한다면
				String originalName = file[i].getOriginalFilename();// 확장자가져오기 위해서 전체파일명을 가져옴.
				UUID uid = UUID.randomUUID();// 랜덤문자 구하기 맘에안든다.
				String saveName = uid.toString() + "." + originalName.split("\\.")[1];// 한글 파일명 처리 때문에...
				//
//					String[] files = new String[] {saveName}; //형변환  files[0] 파일명이 들어 간다..
				byte[] fileData = file[i].getBytes();

				File target = new File(uploadPaths, saveName);
				FileCopyUtils.copy(fileData, target);
				files[i] = saveName;
			}
		}
		return files;
	}

	public ArrayList<String> getExtNameArray() {
		return extNameArray;
	}

	public void setExtNameArray(ArrayList<String> extNameArray) {
		this.extNameArray = extNameArray;
	}
}

