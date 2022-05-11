// trabalhando com lista com duas dimensoes: nomes e notas

const alunos = ['Caio','Ana','Pedro','Joao','Marcelo']
const notas = [4,2,7,8,6]

const notas_alunos = [alunos,notas]

                // 0 [alunos] , 1 [notas]
                // entao no primeiro colchetes identificamos o array, e no segundo o indice do array
console.log(`${notas_alunos[0][0]}, sua nota é: ${notas_alunos[1][0]}`)