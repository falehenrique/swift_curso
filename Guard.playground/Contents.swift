//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Swift - guard

/* guard
 Nova construção lógica introduzida a partir da versão 2, é definida pela Apple como:
 "Um comando guard, assim como o if, executa instruções dependendo de uma expressão ou valor booleano. A finalidade do guard é garantir que uma condição seja verdadeira de forma que o código que vem a seguir seja executado. Caso contrário, o fluxo será abandonado"
 Vejamos como é a sintaxe do guard:
 guard condição else = {
 // O que fazer se a condição for falsa
 }
 */
// continuação do fluxo se a condição for verdadeira

// Nada melhor como um exemplo para ver o guard funcionando:
func atualizaSaldo(montante: Double?) {
    
    let saldoAnterior: Double = 1000
    
    // Verificar se o montante que foi passado é válido
    guard let valor = montante else {
        
        // Aqui ocorre a saída precoce, ou seja, não há sentido em continuar executando a função caso o parâmetro passado seja inválido
        
        print("Montante inválido. Impossível continuar")
        
        // É a cláusula return que provoca a saída precoce da função
        return
    }
    
    // Caminho feliz - passou pelo guard, pois o parâmetro passado é um número válido
    
    // Atualizar o saldo
    print("Saldo atualizado: \(saldoAnterior + valor)")
    
}

// Testando o guard
atualizaSaldo(montante: 500)

// ATENÇÃO: Se não houvesse a verificação, o app acabaria quebrando
//  Faça o teste
