package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.Parent;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class ParentsJsonRepresentation extends WriterRepresentation {

	private final List<Parent> parents;

	ParentsJsonRepresentation(List<Parent> parents) {
		super(MediaType.APPLICATION_JSON);
		this.parents = parents;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(parents.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(Parent parent: parents) {
			System.out.println(parent);
			String parentJson = gson.toJson(parent);
			writer.jsonValue(parentJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}