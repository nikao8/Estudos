// trabalhando com lista com duas dimensoes: nomes e notas

const alunos = ['Caio','Ana','Pedro','Joao','Marcelo']
const notas = [4,2,7,8,6]

const notas_alunos = [alunos,notas]

const exibeNomeNota = (nomeDoAluno) => {
    if(notas_alunos[0].includes(nomeDoAluno)){
        let indice = notas_alunos[0].indexOf(nomeDoAluno)

        return `${notas_alunos[0][indice]}, sua média é: ${notas_alunos[1][indice]}`
    }
    else{
        return `O aluno ${nomeDoAluno} não foi encontrado na lista de alunos`
    }
}

console.log(exibeNomeNota("Pedro")) // existe no array 
console.log(exibeNomeNota("Joana")) // nao existe no array