//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Classes

/*
 Pré-requisito:
 Recomendo a leitura de material de Orientação a Objetos, para os alunos que não conheçam esse tema.
 
 Para desenvolvedores Objective C:
 Em Obj-C, os desenvolvedores tem que declarar, separadamente, arquivos de interface (.h) e implementação (.m), para definir uma classe. Na Swift isso não é mais necessário. As classes são definidas em um único arquivo (.swift), que inclui a interface e a implementação.
 */

// Para definir uma classe use a palavra class. Exemplo:
class Recipe {
    var name: String = ""
    var duration: Int = 10
    var ingredients: [String] = ["ovos"]
}
// No exemplo acima, definimos uma classe Recipe com 3 propriedades. Todas elas foram inicializadas com valores pré-definidos, pois é uma exigência da linguagem que qualquer propriedade contenha valores iniciais. Caso contrário o compilador indicará erro.

// E se não quisermos definir um valor inicial?
//  O compilador irá solicitar que seja declarado um ponto de interrogação (?) depois do tipo da variável, indicando que o valor é um Optional, como veremos mais adiante.
class Recipe2 {
    var name: String?
    var duration: Int = 10
    var ingredients: [String]?
}
// No exemplo acima, as propriedades name e ingredients receberam um valor nil

// Para criar uma instância de uma classe, use a sintaxe a seguir
var recipeItem = Recipe()

// Para acessar uma propriedade da instância, devemos utilizar a chamada "dot notation", com uso de ponto (.)
recipeItem.name = "Risoto de Cogumelos"
recipeItem.duration = 30
recipeItem.ingredients = ["200g de shitake", "200g de shimeji", "200g de cogumelo-de-Paris", "3 xícaras (chá) de arroz para risoto", "9 xícaras (chá) de caldo de legumes", "1 cebola grande", "2 colheres (sopa) de azeite", "1 e 1/2 xícara (chá) de vinho branco", "1/4 de xícara (chá) de salsinha", "1 dente de alho", "Sal (a gosto)", "Pimenta-do-reino (a gosto)"]

// Como manda a teoria de orientação a objetos, a Swift permite a referência de subclasses e a adoção de protocolos
//  Essas referências serão muito comuns quando estivermos construindo aplicativos com interface gráfica, Mas vejamos um exemplo prévio
//import UIKit
//
//class SimpleTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//}
// No exemplo acima, criamos uma classe chamada SimpleTableViewController, como uma subclasse de UIViewController, e que adota os protocolos UITableViewDelegate e UITableViewDataSource
//  O compilador aponta um erro pois alguns protocolos contém métodos obrigatórios, que é o caso do protocolo UITableViewDataSource

// A Swift permite a definição de métodos em classes, estruturas e emnumerações. O nosso foco neste momento será nos métodos de instância. Vejamos um exemplo de um método, sem parâmetros e sem valor de retorno:
class TodoManager {
    func printWelcomeMessage() {
        print("Bem-vindo à minha Todo List")
    }
}
// Observe que os métodos são definidos como funções

// Para chamar um método, utilizamos a "dot syntax"
var todoManager = TodoManager()
todoManager.printWelcomeMessage()

// Um método com parâmetros e valores de retorno será declarado desta forma:
class TodoManager2 {
    func printWelcomeMessage(name:String) -> Int {
        print("Bem-vindo à Todo List de \(name)")
        
        return 10
    }
    func printWelcomeMessage(name:String, idade:Int) -> Recipe {
        print("Bem-vindo à Todo List de \(name)")
        let recipe = Recipe()
        recipe.duration = 10
        recipe.name = "teste"
        return recipe
    }
}
// Observe, novamente, que a sintaxe para parâmetros e valor de retorno é a mesma de funções

// O método com parâmetros e valor de retorno é chamado da seguinte forma:
var todoManager2 = TodoManager2()
var numberOfTodoItem = todoManager2.printWelcomeMessage(name: "Carlos")
print(numberOfTodoItem)

let retorno:Recipe = todoManager2.printWelcomeMessage(name: "Carlos", idade: 10)
print(retorno.duration)
print(retorno.name)

// INSTRUTOR - Exercicio de Classes disponível no repositório

