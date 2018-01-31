package gr.ntua.ece.softeng17b;


import java.io.File;
import java.io.InputStream;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

public class FileChecker{
	public static ArrayList main (String path){
		ArrayList<String> listidi = new ArrayList<String>();
		try{
    		String path2 = new java.io.File( "." ).getCanonicalPath();
	    	System.out.println(path2+path);
			File folder = new File(path2+path);
			File[] listOfFiles = folder.listFiles();
			
			ArrayList<String> listara = new ArrayList<String>();
		    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isFile()) {
		        listara.add(listOfFiles[i].getName());
		      }
		    }
		    //System.out.println(listara);
		    return listara;
		}catch(IOException fue){
			fue.printStackTrace();
		}
		return listidi;
	}
}
