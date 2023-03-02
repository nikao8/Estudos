import java.util.ArrayList;


public class Main {
    /*
    A empresa Gustil possui varios funcionarios
    A empresa deseja saber o quanto paga para todos funcionarios.
    Osalario do funcionario e calculado da sequinte forma:
    Salario Bruto - 13% de inss - 6% se usar vale transporte + 5% se for trabalhador noturno.
    Para cada filho a empresa fornece um bonus de
    R$ 50,00 por filho, ate o limite de 3 filhos.
    */
    public static void main(String[] args) {
        Empresa gustil = new Empresa();

        Funcionario func1 = new Funcionario(1500.0,true,false,2);
        Funcionario func2 = new Funcionario(2500.0,false,true,5);
        Funcionario func3 = new Funcionario(1800.0,true,true,1);

        double salario1 = func1.CalculaSalarioBruto();
        double salario2 = func2.CalculaSalarioBruto();
        double salario3 = func3.CalculaSalarioBruto();

        System.out.println("Salarios dos 3 funcionarios: " + salario1 + "," + salario2 + "," + salario3);

        double[] sals = {func1.CalculaSalarioBruto(),func2.CalculaSalarioBruto(),func3.CalculaSalarioBruto()};

        gustil.setValorPagamentoFuncionarios(gustil.RetornaSalarioFuncionarios(sals));

        System.out.println("Gasto da empresa com os salarios:" + gustil.RetornaSalarioFuncionarios(sals));
    }
}