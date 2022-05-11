const nomes = ['Ana','Marcos','Olivia','Joao','Nicolas','Fernando','Bia','Felipe','Julio','Nathalia']

//metodo slice divide o array baseado em indices de inicio e fim passados por parametros.
console.log(`Tamanho do array: ${nomes.length}`) 
const turma1 = nomes.slice(0,nomes.length/2)
const turma2 = nomes.slice(nomes.length/2,nomes.length)

console.log(`Alunos da turma 1: ${turma1}\nAlunos da turma 2: ${turma2}`)

// com metodo splice podemos remover elemento(s) de algum indice e adicionar outros elementos em seguida.

// o primeiro parametro do splice indica o indice da remoção, o segundo parametro a quantidade de elementos a serem removidos e em seguida os elementos a adicionar(opcional)
// podemos utilizar o splice para somente remover elementos caso nao queira adicionar nada.
turma1.splice(2,2,'Pedrinho')
console.log(`\nTurma 1 sem Olivia e Joao e com Pedrinho: ${turma1}`)

// podemos passar o segundo parametro com o valor 0 para nao apagar nenhum elemento e adicionar elementos, como a seguir:
// neste caso vamos adicionar lucas e arrascaeta a turma 2 sem apagar nenhum elemento.
turma2.splice(1,0,'Lucas','Arrascaeta') 
console.log(`Turma 2 com Lucas e Arrascaeta: ${turma2}`)

// usando o metodo concat podemos juntar 2 arrays como a seguir:

const turma1e2 = turma1.concat(turma2)
console.log(`\nTurma 1 e 2 unificadas: ${turma1e2}`)


