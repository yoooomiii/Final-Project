package www.egg.util;

import java.io.File;
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
public class FileDataUtil {
	private ArrayList<String> extNameArray = new ArrayList<String>() // ����ϴ� Ȯ���� ���Ǹ� �� ��.
	{
		{
			add("gif");
			add("jpg");
			add("png");
		}
	}; // <-- ���� �ڵ�� Ȱ�������� �ʴ´�.. ��� �������� ����� ���������� �ʴ´�. ���� �̸� ���� ����..

	// ÷������ ���ε� ��� ���������� ������ servlet-context.xml
	@Resource(name = "uploadPath")  // �̸����� ���Թޱ�, �׷� �̰� ��ü�� �־�� �Ѵ�... 
	private String uploadPath;	// ���丮 ����.. ������ ���� ���� �޵��� �ڵ�..
	// �����̳ʷ� ���� ���� �޴� �ڵ�.. @Ingect,, @Resource @Autowired

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	/**
	 * �Խù� �󼼺��⿡�� ÷������ �ٿ�ε� �޼��� ����(����)
	 */
	//��Ʈ�ѷ����� ������ ��Ȱ�� �մϴ�... 
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	@ResponseBody // � �����͸� �����Ͽ� ����.. ������̼�.. view�������� �ʰ� �ٷ� Ŭ���̾�Ʈ ��û���� ����.
	public FileSystemResource fileDownload(@RequestParam("filename") String fileName, HttpServletResponse response) {
		File file = new File(uploadPath + "/" + fileName);
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
		InputStream inputStream = null;  //��Ʈ�� ��ü��
		try {
			inputStream = new FileInputStream(fileToDownload); //���Ͽ��� �־��ְ�
			IOUtils.copy(inputStream, response.getOutputStream());
			response.flushBuffer();  //�������ش�.
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();  //�ݾ��ش�.
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}*/

	/**
	 * ���� ���ε� �޼���(����)
	 * 
	 * @throws IOException
	 */
	// Ŭ���̾�Ʈ�� ���ε��� ÷������ ������ ��ġ (uploadPath �� ī���ϴ� �ڵ�)
	public String[] fileUpload(MultipartFile[] file) throws IOException {
		String[] files = new String[file.length];
		for (int i = 0; i < file.length; i++) {
			if (file[i].getOriginalFilename() != "") { // ���� file��ü�� �����Ѵٸ�
				String originalName = file[i].getOriginalFilename();// Ȯ���ڰ������� ���ؼ� ��ü���ϸ��� ������.
				UUID uid = UUID.randomUUID();// �������� ���ϱ� �����ȵ��.
				String saveName = uid.toString() + "." + originalName.split("\\.")[1];// �ѱ� ���ϸ� ó�� ������...
				//
//					String[] files = new String[] {saveName}; //����ȯ  files[0] ���ϸ��� ��� ����..
				byte[] fileData = file[i].getBytes();

				File target = new File(uploadPath, saveName);
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