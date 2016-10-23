//: # Swift - Funções de Alta Ordem
//: Em Swift, as funções são consideradas de primeira classe, visto que elas podem ser passadas com argumentos para outras funções, e também serem retornadas como funções.\
//: Esse tipo de função também é chamada de funçao de alta ordem.\
//: As funções de alta ordem constituem um conceito central do paradigma da programação funcional.\
//: Isso quer dizer que a Swift é uma linguagem de programação funcional?\
//: Hum, não exatamente, mas alguma linguagem é puramente funcional?\
//: Bom, vamos alinhar as expectativas aqui. Neste playground não iremos estudar programação funcional, até por que seria um pouco de pretensão abordar esse tema rico e complexo em apenas uma aula.\
//: Porém vamos estudar 3 poderosas funções de alta ordem que praticamente existem em todas as linguagem que se dizem funcionais, e que também estão na Swift.\
//: Elas tem uma denominação padrão que são: `filter`, `map` e `reduce`\
//: Essas funções efetuam transformações genéricas em sequências:\
//: A função `filter` filtra elementos conforme um critério; a função `map` transfere elementos para um outro array aplicando alguma transformação, e a função `reduce` reduz uma sequência em um valor simples, aplicando funções combinadas para cada elemento da seuqência, que deve começar por um valor determinado. Por exemplo, somando todos os elementos de uma sequência, cujo valor inicial é zero.\
//: Na Swift, essas funções são definidas como métodos, desde a versão 2.0. E é claro que essas funções continuarão ativas na Swift 3, caso contrário não estaríamos aqui perdendo o nosso tempo.\
//: A partir de agora veremos exemplos muito bacanas de cada uma delas.

//: **Filter**

// Problema: Dado um dicionário com estudantes (nome e nota), descubra e liste aqueles que foram aprovados. Critério: nota >= 6.0

// Método tradicional
var alunos: Dictionary = [
    "Rodrigo": 6.0,
    "Carlos": 5.5,
    "Aline": 8.0,
    "Gustavo": 7.5
]

for aluno in alunos {
    // Verificar se o aluno foi aprovado
    if aluno.1 >= 6.0 {
        print("\(aluno) foi aprovado")
    }
}

// E com funções de alta ordem, com ficaria?
//  Como temos uma coleção e um critério, filter é a função de alta ordem mais indicada
let aprovados = alunos.filter { $1 >= 6.0 }
aprovados


// Mais um exemplo de filter

// Problema: Descobrir os números inteiros pares em uma coleção
let inteiros = [1, 4, 7, 9, 20, 18, 0, 50, 33]
let par = inteiros.filter { $0 % 2 == 0 }
par

//: **Map**

// Problema: Colocar uma formatação em um lista de números

// 1 - Abordagem normal
let numeros = [10, 30, 95, 50, 70, 38, 25]
var numerosFormatados: [String] = []

for numero in numeros {
    let numeroFormatado = "R$ \(numero)"
    numerosFormatados.append(numeroFormatado)
}
numerosFormatados

// Com o map...
let arrayFormatado = numeros.map { "R$ \($0)" }
arrayFormatado

//: **Reduce**

// Problema: Combinar várias strings
let codigos = ["abc", "def", "ghi"]
let texto = codigos.reduce("CodigoMaster: ", +)

// Problema: Somatória de Números
let itens = [2.0, 4.0, 5.0, 7,0]
let total = itens.reduce(0.0, +)






