package main

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"
	"time"
)

const ondas = 5
const delay = 5

func main() {

	for {
		exibeMenu()

		op := solicitaLeitura()
		fmt.Println("")

		switch op {
		case 1:
			//iniciarMonitoramento(retornaListaSites())
			iniciarMonitoramento(leSitesTxt())

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

}

/*
func retornaListaSites() []string {

	list := []string{}

	for {
		fmt.Println("Insira um site para adicionar a lista de monitoramento:")

		var site string
		fmt.Scan(&site)
		list = append(list, site)

		fmt.Println("Deseja adicionar mais sites? 1-Sim | 2-Não")
		var esc int
		fmt.Scan(&esc)

		if esc != 1 {
			break
		}

	}

	return list
}
*/

func iniciarMonitoramento(sites []string) {
	fmt.Println("Monitorando...")
	fmt.Println("")

	/*
		for i := 0; i < len(sites); i++ {
			testaSite(site[i])
		}
	*/

	//usando for com range (poderia colocar o contador i ao inves de _ caso fosse necessário trabalhar com o contador)

	for i := 0; i < ondas; i++ {

		fmt.Println("Onda de monitoramento: [", i+1, "/", ondas, "]")
		for _, site := range sites {
			testaSite(site)
		}

		fmt.Println("")
		time.Sleep(delay * time.Second)
	}

}

func testaSite(site string) {
	resp, err := http.Get(site)

	if err != nil {
		fmt.Println("Houve um erro ao requisitar o site", site, ":")
		fmt.Println(err.Error())
	} else {
		fmt.Println("StatusCode de ", site, ":", resp.Status)
	}
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

func leSitesTxt() []string {
	const filePath = "sites.txt"

	var sites []string

	arquivo, err := os.Open(filePath)
	//arquivo, err := os.ReadFile(filePath)

	if err != nil {
		if _, err1 := os.Stat(filePath); err1 != nil {
			os.Create(filePath)
		} else {
			fmt.Println("Houve um erro ao abrir o arquivo:", err)
		}
	} else {
		reader := bufio.NewReader(arquivo)

		for {
			linha, err := reader.ReadString('\n')
			linha = strings.TrimSpace(linha)

			sites = append(sites, linha)

			if err == io.EOF {
				break
			}
		}

	}
	fmt.Println(sites)
	return sites
}
