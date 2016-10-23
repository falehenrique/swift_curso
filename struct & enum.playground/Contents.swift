//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Na linguagem Swift, as estruturas tem muitas novidades em relaçao ao velho struct, que já conhecemos

// Exemplos

// Coordenadas de um retângulo

// Ponto
struct Point {
    var x, y: Double
}


// Medidas (comprimento e altura)
struct Size {
    var width, height: Double
}

// Combinando as estruturas
struct Rect {
    var origin: Point
    var size: Size
    
    // 1ª novidade - Computed Property
    var area: Double {
        return size.width * size.height
    }
    
    // 2ª novidade - Método em uma estrutura
    func isBiggerThanRect(other: Rect) -> Bool {
        return self.area > other.area
    }
}

// Como usar a estrutura

// Instanciar as estruturas (quase classes)
var point = Point(x: 0.0, y: 0.0)
var size = Size(width: 640.0, height: 480.0)
var rect = Rect(origin: point, size: size)

// Definindo um outro reyângulo
var size2 = Size(width: 480.0, height: 320.0)
var outroRect = Rect(origin: point, size: size2)

// Acessando a propriedade calculada
print(rect.area)
print(outroRect.area)

// Utilizando o método
let maior = rect.isBiggerThanRect(other: outroRect)
let menor = outroRect.isBiggerThanRect(other: rect)



//: Enumerações (enum)

// Sintaxe básica
enum UmaEnumeracao {
    // Aqui dentro vai a sequência de números
}

// Exemplos - Pontos de direção de uma bússola
enum Bussola {
    case norte
    case sul
    case leste
    case oeste
}

// Como usar o enum?
var direcaoAPercorrer = Bussola.leste
direcaoAPercorrer = .norte

// Interagir com um enum
switch direcaoAPercorrer {
case .norte:
    print("Cuidado: Urso Polar")
case .sul:
    print("Aprecie os pinguins")
case .leste:
    print("Onde nasce o sol")
case .oeste:
    print("Onde o céu é azul")
}

// Propriedade rawValue

// Definir um enum com os elementos na mesma linha, onde eu especifico o valor inicial
enum Planeta: Int {
    case mercúrio = 1, vênus, terra, marte, júpiter, saturno, urano, netuno
}

// Usando a propriedade rawValue
let ordemDosPlanetas = Planeta.terra.rawValue

// Método rwaValue indexado
let nomePlaneta = Planeta(rawValue: 3)

// Interação com um enum usando rawValue
var posicaoAEncontrar = 10
let umPlaneta = Planeta(rawValue: posicaoAEncontrar)

print("Nome do Planeta: \(umPlaneta)")

// REFLEXÃO
//  Se rawValue referenciar um valor fora do intervalo, teremos um valor nil
//  Podemos minimizar essa situação como uma verificação do valor, antes de exibí-lo
//  Mas essa verificação será reativa
//  O problema é que nem sempre a verificação reativa resolve
if umPlaneta != nil {
    print("Nome do Planeta: \(umPlaneta)")
} else {
    print("Não há um planeta válido nesta posição")
}
// DICA: Com o recurso de Optional, teremos total controle sobre esse tipo de situação, de forma pró-ativa


// Enum com valores associados
//  Permite um uso bastante profissional do enum
enum barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

// Se for um barcode associado a QRCode
var produtoBarCode = barcode.QRCode("ABCDEFGHIJKLMOP")

// Se for um barcode associado a UPCA
produtoBarCode = barcode.UPCA(8, 85909_51226, 3)

// Extrair os valores
switch produtoBarCode {
case .UPCA(let numeroSistema, let identificador, let digitoVerificador):
    print("Estamos lendo um código UPCA com os valores: \(numeroSistema)-\(identificador)-(digitoVerificador)")
case .QRCode(let codigoProduto):
    print("Estamos lendo um QRCode com o código: \(codigoProduto)")
}

// DESAFIO - HOMEWORK
//  Elabore um enum para definir a pontuação das cartas de um baralho
//  Utilize o seguinte critério:
//  Ás = valor 1
//  Dois a Dez = eu próprio valor
//  Valete = 11
//  Dama = 12
//  Rei = 13
//  Use um Switch para descobrir a carta selecionada



