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

//@Controller
public class ReviewFileDataUtil {
    private ArrayList<String> extNameArray = new ArrayList<String>() {
        {
            add("gif");
            add("jpg");
            add("png");
        }
    };

    @Resource(name = "uploadPaths")
    private String uploadPaths;

    public String getUploadPaths() {
        return uploadPaths;
    }

    public void setUploadPaths(String uploadPaths) {
        this.uploadPaths = uploadPaths;
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    @ResponseBody
    public FileSystemResource fileDownload(@RequestParam("re_file") String re_file, HttpServletResponse response) {
        File rfile = new File(uploadPaths + "/" + re_file);
        response.setContentType("application/download; utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + re_file);
        return new FileSystemResource(rfile);
    }

    public String fileUpload(String re_file) throws IOException {
//        String re_file = new String re_file;
//        for (int i = 0; i <re_file.length; i++) {
            if (re_file !="") {
                String originalName = re_file.toString();
                UUID uid = UUID.randomUUID();
                String saveName = uid.toString() + "." + originalName.split("\\.")[1];
                byte[] fileData = re_file.getBytes();

                File target = new File(uploadPaths, saveName);
                FileCopyUtils.copy(fileData, target);
                re_file = saveName;
            } else {
            	re_file=null;
            }
			return re_file; 
        }
      
    

    public ArrayList<String> getExtNameArray() {
        return extNameArray;
    }

    public void setExtNameArray(ArrayList<String> extNameArray) {
        this.extNameArray = extNameArray;
    }
}
