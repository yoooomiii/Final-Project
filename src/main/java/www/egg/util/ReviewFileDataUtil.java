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
    public FileSystemResource fileDownload(@RequestParam("re_file") String r_file, HttpServletResponse response) {
        File file = new File(uploadPaths + "/" + r_file);
        response.setContentType("application/download; utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + r_file);
        return new FileSystemResource(file);
    }

    public String[] fileUpload(MultipartFile[] file) throws IOException {
        if (uploadPaths == null) {
            throw new IllegalStateException("Upload path is not set.");
        }

        String[] files = new String[file.length];
        for (int i = 0; i < file.length; i++) {
            if (file[i] != null && !file[i].getOriginalFilename().isEmpty()) {
                String originalName = file[i].getOriginalFilename();
                UUID uid = UUID.randomUUID();
                String saveName = uid.toString() + "." + originalName.split("\\.")[1];
                byte[] fileData = file[i].getBytes();

                File target = new File(uploadPaths, saveName);
                FileCopyUtils.copy(fileData, target);
                files[i] = saveName;
            } else {
                files[i] = null;
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
