package files;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import models.Endereco;

import java.io.FileWriter;
import java.io.IOException;

public class JsonGenerator {
    public static void GeraJson(Endereco end) throws IOException {
        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        FileWriter fw = new FileWriter(end.getCep() + ".json");
        fw.write(gson.toJson(end));
        fw.close();
    }
}
