// Swift - Generics

// Os problemas que Generics pode resolver

// Função (não genérica) para trocar o valor de 2 inteiros
func troca2Inteiros(a: inout Int, b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
// OBSERVAÇÃO: Estamos utilizando parâmetros do tipo inout, que são passados para a função por referência, e não por valor, como vimos até agora

// Chamada da função
var umInt = 3
var outroInt = 107
print("umInt tem originalmente o valor \(umInt) e outroInt tem o valor \(outroInt)")
troca2Inteiros(a: &umInt, b: &outroInt)
// OBSERVAÇÃO: Temos um dos raros casos na Swift onde estamos utilizando ponteiros de memória
print("umInt tem agora o valor \(umInt) e outroInt tem o valor \(outroInt)")

// Problema: Eu quero agora uma função que troque duas strings de lugar
func troca2Strings(a: inout String, b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}
// Chamada da função
var umaString = "Cocoa"
var outraString = "Heads"
print("umaString tem originalmente o valor \(umaString) e outraString tem o valor \(outraString)")
troca2Strings(a: &umaString, b: &outraString)
print("umaString tem agora o valor \(umaString) e outraString tem o valor \(outraString)")

// Problema: Inverter 2 Doubles

// Solução: Dado que as funções são idênticas (o que muda é somente o tipo dos parâmetros), a Swift, felizmente, tem um recurso para resolver isso - Generics

// Função Genérica
func troca2Valores<T>(a: inout T, b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// Chamada da função genérica para inteiros
print("umInt tem originalmente o valor \(umInt) e outroInt tem o valor \(outroInt)")
troca2Valores(a: &umInt, b: &outroInt)
print("umInt tem agora o valor \(umInt) e outroInt tem o valor \(outroInt)")

// Chamada da função genérica para strings
print("umaString tem originalmente o valor \(umaString) e outraString tem o valor \(outraString)")
troca2Valores(a: &umaString, b: &outraString)
print("umaString tem agora o valor \(umaString) e outraString tem o valor \(outraString)")

// Agora a função genérica para 2 Doubles
var umDouble = 100.0
var outroDouble = 200.0
troca2Valores(a: &umDouble, b: &outroDouble)
umDouble
outroDouble

// Exemplo de Generics em Classes
class Dado<Element> {
    var nome: [Element] = []
}
var info = Dado<String>()
info.nome.append("Nome1")
info.nome.append("Nome2")

var inteiro = Dado<Int>()
inteiro.nome.append(1)
inteiro.nome.append(2)





