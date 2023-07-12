
public class TestaCondicional {

	public static void main(String[] args) {
		
		int idade = 20;
		int quantidadeDePessoas = 3;
		boolean acompanhado = quantidadeDePessoas >= 2;
		
		if(idade >= 18 && acompanhado)
		{
			System.out.println("Seja bem vindo!");
		}
		else
		{
			System.out.println("Entrada negada.");
		}

	}
}
