package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.Event;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class EventsJsonRepresentation extends WriterRepresentation {

	private final List<Event> events;

	EventsJsonRepresentation(List<Event> events) {
		super(MediaType.APPLICATION_JSON);
		this.events = events;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(events.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(Event event: events) {
			System.out.println(event);
			String eventJson = gson.toJson(event);
			writer.jsonValue(eventJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}