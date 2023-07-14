import b.com.musicas.model.MinhasPreferidas;
import b.com.musicas.model.Musica;
import b.com.musicas.model.Podcast;

public class Main {
    public static void main(String[] args) {

        Musica mus = new Musica();
        mus.setTitulo("The unforgiven");
        mus.setCantor("Metallica");


        for (int i = 0; i < 2000; i++) {
            mus.reproduz();
        }

        for(int i = 0; i < 50; i++) {
            mus.curtir();
        }

        Podcast pod = new Podcast();
        pod.setTitulo("Nerdcast");
        pod.setApresentador("Jovem nerd e Azaghal");

        for (int i = 0; i < 900; i++) {
            pod.reproduz();
        }

        for(int i = 0; i < 741; i++) {
            pod.curtir();
        }

        MinhasPreferidas mp = new MinhasPreferidas();

        System.out.println(mp.inclui(mus));
        System.out.println(mp.inclui(pod));

    }
}