//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Swift - Herança

/*
 Assim como em Classes, o conceito de Herança em Swift está em conformidade com a teoria de Orientação a Objetos
 Conceito: O conceito de Herança indica que um subclasse pode herdar propriedades e métodos de uma classe, e acrescentar suas próprias características (propriedades e métodos)
 Nomenclatura:
 - SuperClasse e SubClasse
 - Classe Base e Classe Derivada
 - Classe Pai e Classe Filho
 Conceito de Sobreposição, ou Polimorfismo (override na Swift)
 Significa alterar o comportamento de um método da SuperClasse
 Na arquitetura iOS, existe um grande superclasse - NSObject. Essa é a mãe de todas as classes
 No Objetive-C, a classe NSObject é explicitamente referenciada; na Swift não é necessário
 */

// Definir uma classe Base (SuperClasse)
class Veiculo {
    // Propriedades
    var velocidadeAtual = 0.0
    var descricao: String {
        return "Viajando a \(velocidadeAtual) km/h"
    }
    var descricao2: String {
        return "Viajando a \(velocidadeAtual) km/h"
    }
    
    // Métodos
    func fazRuido() {
        // não faz nada por enquanto. Afinal, nem todos os veículos produzem ruído
    }
}

// Instanciar a superclasse
let umVeiculo = Veiculo()

// Usar normalmente as propriedades e métodos
print("Veículo: \(umVeiculo.descricao)")
umVeiculo.velocidadeAtual = 40.0
print("Veículo: \(umVeiculo.descricao)")

print("Veículo: \(umVeiculo.fazRuido)")

// Como estabelecer a Herança?
//  Definir m outro veículo, que herde as características do Veículo original, mas que também implemente suas próprias características
class Bicicleta: Veiculo {
    // Declarar apenas as características adicionais
    //  As demais irei herdar da classe Veículo
    var temCestinha = false
}
// A sintaxe para estabelecer Herança na Swift é:
//  classe nomeSubClasse: nomeSuperClasse

// Instanciar a subclasse
let bicicleta = Bicicleta()
bicicleta.temCestinha = true

// Utilizar as propriedades herdadas
bicicleta.velocidadeAtual = 15.0
print("Bicicleta: \(bicicleta.descricao)")

// Criar uma nova subclasse
class Bicicleta2Lugares: Bicicleta {
    var numeroPassageiros = 0
}

// A subclasse herda as propriedades da classe base e da superclasse acima dela (herança em cascata)
let bicicleta2Lugares = Bicicleta2Lugares()

bicicleta2Lugares.velocidadeAtual = 25.0
print(bicicleta2Lugares.velocidadeAtual)

// Sobreposição (overriding)

// Exemplo:
class Trem: Veiculo {
    override func fazRuido() {
        print("Choo Choo")
    }
}

// Utilizo um método que foi sobreposto
let trem = Trem()
trem.fazRuido()

// Além de métodos, também podemos fazer a sobreposição de propriedades
class Carro: Veiculo {
    var marcha = 1
    override var descricao: String {
        return super.descricao + " na marcha \(marcha)"
    }
}
// A sobreposição de propriedades faz sentido nas computeed properties

// Utilizando a propriedade sobreposta
let carro = Carro()
carro.velocidadeAtual = 65.0
carro.marcha = 3
print("Carro: \(carro.descricao)")

// INSTRUTOR - Exercicio de Herança disponível no repositorio












