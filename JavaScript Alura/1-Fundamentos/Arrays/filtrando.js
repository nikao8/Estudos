const alunos = ['Caio','Ana','Pedro','Joao','Marcelo']
const notas = [4,2,7,8,6]


const reprovados = alunos.filter((nome,indice) => notas[indice] < 5)

console.log(`Reprovados: ${reprovados}`)