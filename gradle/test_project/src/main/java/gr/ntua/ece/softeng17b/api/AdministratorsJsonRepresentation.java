package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.Administrator;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class AdministratorsJsonRepresentation extends WriterRepresentation {

	private final List<Administrator> administrators;

	AdministratorsJsonRepresentation(List<Administrator> administrators) {
		super(MediaType.APPLICATION_JSON);
		this.administrators = administrators;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(administrators.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(Administrator administrator: administrators) {
			System.out.println(administrator);
			String administratorJson = gson.toJson(administrator);
			writer.jsonValue(administratorJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}