package www.egg.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ReviewFileDataUtil  implements ServletContextAware {

    private String reviewuploadPath;

    public String[] uploadFiles(MultipartFile[] files) throws IOException {
        String[] reviewfileNames = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            if (files[i] != null && !files[i].getOriginalFilename().isEmpty()) { // 파일이 null이 아니고 파일 이름이 비어있지 않다면
                // 즉, 실제 파일 객체가 존재한다면
                String revieworiginalName = files[i].getOriginalFilename(); // 파일이름 가져와서 저장
                UUID ruid = UUID.randomUUID(); // 랜덤 문자열 생성
                String saveName = ruid.toString() + "." + revieworiginalName.split("\\.")[1]; // 고유한 파일명 생성

                byte[] fileData = files[i].getBytes();
                File target = new File(reviewuploadPath, saveName);
                FileCopyUtils.copy(fileData, target);
                reviewfileNames[i] = saveName; // 저장된 파일명 배열에 추가
            }
        }
        return reviewfileNames;
    }

	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.reviewuploadPath = servletContext.getRealPath("/resources/reviewimg/"); // 파일 저장 위치
	}
}
