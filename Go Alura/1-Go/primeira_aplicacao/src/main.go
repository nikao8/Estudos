package main

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"
)

const ondas = 5
const delay = 5
const filePathLog = "log.txt"
const filePathSites = "sites.txt"

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
			imprimeLogs()
		case 0:
			fmt.Print("Finalizando programa...")
			os.Exit(0)

		default:
			fmt.Println("Comando", op, " não reconhecido...")
			os.Exit(-1)
		}
	}

}

func iniciarMonitoramento(sites []string) {
	fmt.Println("Monitorando...")
	fmt.Println("")

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
	status := false

	if err != nil {
		fmt.Println("Houve um erro ao requisitar o site", site, ":")
		fmt.Println(err.Error())
	} else {

		if resp.StatusCode == 200 {
			status = true
		}

		fmt.Println("StatusCode de ", site, ":", resp.Status)
	}

	registraLog(site, status)
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

	var sites []string

	arquivo, err := os.OpenFile(filePathSites, os.O_RDWR|os.O_CREATE, 0666)

	defer arquivo.Close()

	if err != nil {
		fmt.Println("Houve um erro ao abrir o arquivo:", err)
	} else {
		reader := bufio.NewReader(arquivo)

		for {
			linha, err := reader.ReadString('\n')
			linha = strings.TrimSpace(linha)

			sites = append(sites, linha)

			// verifica o fim do arquivo
			if err == io.EOF {
				break
			}
		}

	}

	if len(sites) == 0 {
		fmt.Println("o arquivo", filePathSites, "está vazio, preencha-o e tente novamente")
		os.Exit(0)
	}

	fmt.Println(sites)
	return sites
}

func registraLog(site string, status bool) {
	arquivo, err := os.OpenFile(filePathLog, os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)

	defer arquivo.Close()

	if err != nil {
		fmt.Println("Houve um erro ao abrir o arquivo de logs:", err)
	}

	arquivo.WriteString("Data/Hora: " + time.Now().Format("02/01/2006 15:04:05") + " | " + site + " - online: " + strconv.FormatBool(status) + "\n")

}

func imprimeLogs() {
	arquivo, err := os.ReadFile(filePathLog)

	if err != nil {
		fmt.Println("Houve um erro ao abrir o arquivo de logs:", err)
	} else {
		fmt.Println(string(arquivo))
	}
}
