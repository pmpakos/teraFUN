package gr.ntua.ece.softeng17b.data;

import org.apache.commons.fileupload.*;
import java.io.File;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.io.InputStream;
import java.io.FileOutputStream;
import watermark.WatermarkImage;

public class FileUpload {
	public static boolean processFile(String path, FileItemStream item, String fieldName){
		try{
			File f = new File(path+File.separator+"/src/main/webapp/images");
			if(!f.exists())f.mkdir();
			File savedFile = new File(f.getAbsolutePath()+File.separator+item.getName());
			FileOutputStream fos= new FileOutputStream(savedFile);
			InputStream is = item.openStream();
			int x= 0;
			byte[] b = new byte[1024];
					
			while((x=is.read(b))!=-1){
				fos.write(b,0,x);				
			}
			fos.flush();
			fos.close();
			System.out.println(path+"/src/main/webapp/images/"+fieldName);
			String[] strArray = new String[] {path+"/src/main/webapp/images/"+fieldName};
			WatermarkImage.main(strArray);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return false;
	}
}
