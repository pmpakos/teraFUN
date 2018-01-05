package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.Company;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class CompaniesJsonRepresentation extends WriterRepresentation {

	private final List<Company> companies;

	CompaniesJsonRepresentation(List<Company> companies) {
		super(MediaType.APPLICATION_JSON);
		this.companies = companies;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(companies.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(Company company: companies) {
			System.out.println(company);
			String companyJson = gson.toJson(company);
			writer.jsonValue(companyJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}