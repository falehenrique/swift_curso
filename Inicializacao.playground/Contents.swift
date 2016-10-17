//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let mensagem: String
let cursoIniciado = true

if cursoIniciado {
    mensagem = "Bem Vindo ao SDK"
} else {
    mensagem = "Comeca na segunda"
}
print(mensagem)


// Veremos agora as várias formas de inicialização

// 1 - Através da atribuição direta de valor
struct Celsius1 {
    var temperatura = 50.0
}

var c1 = Celsius1()
print("A temperatura inicial é \(c1.temperatura)")

// 3 - Através de Optional
class Pesquisa {
    
    // Propriedades
    var texto: String
    init(texto: String) {
        self.texto = texto
    }
    var resposta: String?
    
    // Deinicialização (destrutor)
    deinit {
        print("A classe será destruída")
    }
    
    // Métodos
    func pergunta() {
        print(texto)
    }
}

// A inicialização neste caso
var pesquisa = Pesquisa(texto: "Você vai votar em quem?")
pesquisa.pergunta()

// Fossemos utilziar sem inicializar (a resposta)
print(pesquisa.resposta)

pesquisa.resposta = nil
print(pesquisa.resposta)

// Nestes casos, o cenário ideal é utilizarmos também o tratamento adequando para Optionals - Optional Binding
if let resposta = pesquisa.resposta {
    print("Eleitor respondeu \(resposta)")
} else {
    print("Não temos a resposta ainda")
}

// Deinicialização
//  É efetuada automaticamente pelo sistema, através do ARC - Automatic Reference Counting
//  Aqui, para efeito de demonstração, iremos forçar a "destruição" o objeto para provocar a deinicialização
var pesquisa2: Pesquisa?
pesquisa2 = Pesquisa(texto: "Curte Chocolate?")
pesquisa2 = nil



//: Propriedades Calculadas (stored properties)

/*
 Uma propriedade calculada não armazena um valor. Ao invés disso, ela provê seu próprio getter e setter para calcular um valor.
 Vejamos um exemplo
 */
class Hotel {
    var roomCount:Int
    var roomPrice:Int
    var totalPrice:Int {
        get {
            return roomCount * roomPrice
        }
    }
    
    init(roomCount: Int = 10, roomPrice: Int = 100) {
        self.roomCount = roomCount
        self.roomPrice = roomPrice
    }
}
// A classe Hotel tem 2 propriedades calculadas: roomPrice and roomCount.  Com a propriedade calculada, não é necessário criar um método para efetuar um cálculo e retornar o valor. Basta acessá-la através da "dot sintax":
let hotel = Hotel(roomCount: 30, roomPrice: 100)
print("Valor total: \(hotel.totalPrice)")
// Valor Total: 3000

// Opcionalmente, podemos definir um setter customizado. Vamos ver o mesmo exemplo, porém adaptado:
class Hotel2 {
    var roomCount:Int
    var roomPrice:Int
    var totalPrice:Int {
        get {
            return roomCount * roomPrice
        }
        
        set {
            // newValue é um nome default, que é atualizado quando totalPrice for alterado
            let newRoomPrice = Int(newValue / roomCount)
            roomPrice = newRoomPrice
        }
    }
    
    init(roomCount: Int = 10, roomPrice: Int = 100) {
        self.roomCount = roomCount
        self.roomPrice = roomPrice
    }
}
// Ao executar, observe que o setter customizado atualiza o preço, sempre que o valor total é atualizado
let hotel2 = Hotel2(roomCount: 30, roomPrice: 100)
print("Valor total: \(hotel2.totalPrice)")
print("Valor do quarto: \(hotel2.roomPrice)")
// Valor Total: 3000
// Valor do quarto: 100

// BOAS PRÁTICAS: Métodos (funções) podem ser utilizados ao invés de computed properties? Sim, claro, mas na minha visão, com as propriedades calculadas a implementação fica mais simples e limpa. É uma questão de estilo de codificação



