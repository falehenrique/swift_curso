//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


var str = "Hello, playground"


//:Clousures

// Swift - Closures

/*
 Definição:
 Closures são blocos independentes de funcionalidade que podem ser utilizados em nosso código
 São equivalentes aos blocos em Obj-C e lambdas em outras linguagens
 A Closure é como se fosse uma função sem nome
 Estão sendo muito utilizadas pela Apple para tratar eventos assíncronos nos Apps, como Completion Handlers (blocos de código que são executados quando eventos assíncronos são completados)
 Entenda que como uma closure é armazenada separadamente pelo iOS, ele pode ser chamada a qualquer momento pelo sistema operacional, por manter seu estado original.
 
 Declarando uma closure:
 
 Sintaxe mais utilizada:
 { (parameters) -> return type in
 statements
 }
 
 Se a closure não retornar valor, a "->" pode ser omitida
 { (parameters) in
 statements
 }
 
 
 
 OBS: É mais comum o desenvolvedor utilizar uma closure declarada em classes do iOS do que definir suas próprias closures. Mesmo assim, é muito importante entender como ela funciona.
 */

let swfitClosure = {
    print("Bem vindo a closure")
}


swfitClosure()
//uma closure com 2 parâmetros and return values
let divide = {
    (val1: Int, val2: Int) -> Int in
    return val1 / val2
}

let resultado = divide(200, 100)
print(resultado)

let idadeCanina1 = {
    (idadeHumana: Int) -> Int in
    
    return idadeHumana + 7
}

let idadeCanina2 = {
    (idadeHumana: Int) in
    
    return idadeHumana + 7
}

let idadeCanina3 = {
    return  $0 + 7
}


let idadeCanina4 = {
    $0 + 7
}

//chamadas  das clousures
var idadeCalculada: Int?

idadeCalculada = idadeCanina1(10)
idadeCalculada = idadeCanina2(10)
idadeCalculada = idadeCanina3(10)
idadeCalculada = idadeCanina4(10)



// Trailing Closures

/*
 Quando passamos uma expressão closure para uma função, onde a closure é o último parâmetro, chamamos essa closure de Trailing Closure
 A trailing closure pode ser escrita como último parâmetro, antes do parêntesis de fechamento, ou escrita fora (e depois) dos parêntesis da função principal
 É a sintaxe utilizada pelos Completion Handlers, utilizados para o tratamento de eventos assíncronos em um App, que podem levar um certo tempo para serem executados antes de retornar os resultados do processamento
 --> utilizaremos muito essa sintaxe no curso SDK
 */

PlaygroundPage.current.needsIndefiniteExecution = true
let url = URL(string: "https://emergency-phone-numbers.herokuapp.com")

let session = URLSession.shared
let req = session.dataTask(with: url!) { data, response, error in
    // corpo da closure que será executada no callback no retorno of fucntion
    do {
        if let data = data, let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject] {
            print(dictionary)
        }
    } catch {
        print("Erro\(error)")
    }
    PlaygroundPage.current.finishExecution()
}
req.resume()


