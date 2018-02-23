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
class AdministratorJsonRepresentation extends WriterRepresentation {

	private final Administrator administrator;

	AdministratorJsonRepresentation(Administrator administrator) {
		super(MediaType.APPLICATION_JSON);
		this.administrator = administrator;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();
		w.write(gson.toJson(administrator));
	}
}