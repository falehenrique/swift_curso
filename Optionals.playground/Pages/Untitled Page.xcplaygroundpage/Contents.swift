//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 Optionals - O que é isso?!
 Para evitar erros nos aplicativos, a Swift exige que todas as veriáveis sejam declaradas com valores iniciais, não nulos.
 Em outras palavras, os valores iniciais são obrigatórios, ou "não-opcionais"
 Desta forma, se tentarmos atribuir um valor nulo (nil) a uma string não-opcional, o compilador irá indicar um erro - "Nil cannot be assigned to type String!”
 */

var teste = ""

var teste1 = Optional(teste)


var message :String = "Swift é incrível"


class Messenger {

    var msg1: String = "Swift"
    var msg2: String = "" // nunca colocar nil
    var variavelOptional :String?
    
    
    
}


var messenger = Messenger()
var valor = messenger.variavelOptional

func findStockCode (company: String) -> String? {
    if company == "Apple" {
        return "APPL"
    } else if company == "Mercado" {
        return "MELI"
    }
    
    return "Empresa não encontrada"
}


var stockCode: String? = findStockCode(company: "Mercado")

if let stockCodeTemp = stockCode {
    var text = "Código da Ação - \(stockCodeTemp)"
}


//: Forced Wrapping
/*
 Quando colocamos (!) para silenciar um erro do compilador, é como se estivéssemos assumindo a responsabilidade de que não ocorrerá erro naquele ponto do código
 O compilador então "lava as mãos" e deixa por nossa conta
 Mas será que é seguro?
 Na função acima, coloque uma empresa não tratada pela função, e veja...
 */

//: Optional Binding
/* Será o recurso que utilizaremos para controlar todas as situações. Optional binding é usado para verificar se um optional contiver um valor ou não. Se contiver um valor, faremos o unwrap (desembrulhar) e colocaremos em uma constante ou variável temporária
 A melhor forma de entender é vermos um exemplo
 */


if let varTemp = findStockCode(company: "Mercado") {
    print("Opcional \(varTemp)")
}


//DESAFIO

var nomeUsuario :String?
nomeUsuario = nil

if let varTemp2 = nomeUsuario {
    let cumprimeto = "Olá, " + varTemp2 + ". seja BEm vindo"
} else {
    print("Usuário sem nome")
}

// DESAFIO 2
var nome :String?
var sobreNome :String?

nome = "Carlos"
sobreNome = "Aberto"

if let nomeValido = nome, let sobreNomeValido = sobreNome {
    print("Olá \(nomeValido) \(sobreNomeValido)")
}


//: ESTUDO DE CASO

/*
 O algoritmo abaixo converte uma string e efetua um cálculo simples.
 O desenvolvedor inseriu um "forced wrapping" para silenciar o compilador, fez verificação (reativa) de nulo, testou e tudo funcionou
 Ele não previu, porém, que a string a ser convertida pode receber um valor inválido, o que acabrá por quebrar o aplicativo
 Refatore o código para implementar código seguro e pró-ativo
 */
let possivelNumero: String?  = "123a"
var numeroConvertido :Int?

if let numeroTratado = possivelNumero, var numeroConvertido = Int(numeroTratado) {
     // numeroConvertido é inferido para um tipo de dados "Int"
    
    // Efetuar um cálculo com o número convertido
    numeroConvertido += 10

    print("O valor de variável convertida é \(numeroConvertido)")
} else {
 print("Não foi possível converter o valor \(possivelNumero) para um número inteiro")
}





