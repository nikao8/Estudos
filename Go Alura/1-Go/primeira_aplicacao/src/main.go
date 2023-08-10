package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {

	exibeMenu()

	op := solicitaLeitura()

	switch op {
	case 1:
		iniciarMonitoramento(retornaListaSites())

	case 2:
		fmt.Println("Exibindo logs...")

	case 0:
		fmt.Print("Finalizando programa...")
		os.Exit(0)

	default:
		fmt.Println("Comando", op, " não reconhecido...")
		os.Exit(-1)
	}

}

func retornaListaSites() []string {
	const tam = 3
	var list [tam]string

	for i := 0; i < len(list); i++ {
		fmt.Println("Insira um site [", i+1, "de", len(list), "] para adicionar a lista de monitoramento:")

		var site string
		fmt.Scan(&site)
		list[i] = site

	}

	return list[:]
}

func exibeMenu() {
	fmt.Println("1 - Iniciar monitoramento")
	fmt.Println("2 - Exibir logs")
	fmt.Println("0 - Finalizar execução do programa")
}

func solicitaLeitura() int {
	var opcao int
	//fmt.Scanf("%d", &opcao)
	fmt.Scan(&opcao) // Com o comando Scan, ele faz a inferencia de tipo de variavel
	return opcao
}

func iniciarMonitoramento(sites []string) {
	fmt.Println("Monitorando...")

	for i := 0; i < len(sites); i++ {
		resp, err := http.Get(sites[i])

		if err != nil {
			fmt.Println("Houve um erro ao requisitar o site", sites[i], ":")
			fmt.Println(err.Error())
		} else {
			fmt.Println("Resposta de ", sites[i], ":", resp)
		}
	}

}
