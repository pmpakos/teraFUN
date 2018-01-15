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
class ParentJsonRepresentation extends WriterRepresentation {

	private final Parent parent;

	ParentJsonRepresentation(Parent parent) {
		super(MediaType.APPLICATION_JSON);
		this.parent = parent;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();
		w.write(gson.toJson(parent));
	}
}