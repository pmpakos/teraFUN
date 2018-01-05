package gr.ntua.ece.softeng17b.api;

import org.restlet.data.MediaType;
import org.restlet.representation.WriterRepresentation;

import com.google.gson.stream.JsonWriter;
import com.google.gson.Gson;

import java.util.List;
import java.io.Writer;
import java.io.IOException;

import gr.ntua.ece.softeng17b.data.Booking;

/**
 * {count:NUMBER,results:[list-of-places]}
 */
class BookingsJsonRepresentation extends WriterRepresentation {

	private final List<Booking> bookings;

	BookingsJsonRepresentation(List<Booking> bookings) {
		super(MediaType.APPLICATION_JSON);
		this.bookings = bookings;
	}

	@Override
	public void write(Writer w) throws IOException {

		Gson gson = new Gson();

		JsonWriter writer = new JsonWriter(w);

		writer.beginObject();			
		writer.name("count").value(bookings.size());
		writer.name("results");
		writer.beginArray();
		writer.flush(); //flush buffers to start sendind data to the user early
		for(Booking booking: bookings) {
			System.out.println(booking);
			String bookingJson = gson.toJson(booking);
			writer.jsonValue(bookingJson);
			writer.flush();
		}
		writer.endArray();
		writer.endObject();
	}
}