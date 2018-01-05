package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.AdminProfile;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class AdminProfileJsonRepresentation extends WriterRepresentation {

	private final List<AdminProfile> adminprofile;

	AdminProfileJsonRepresentation(List<AdminProfile> adminprofile) {
		super(MediaType.APPLICATION_JSON);
		this.adminprofile = adminprofile;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(adminprofile.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(AdminProfile adminprofile: adminprofile) {
			System.out.println(adminprofile);
			String adminprofileJson = gson.toJson(adminprofile);
			writer.jsonValue(adminprofileJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}