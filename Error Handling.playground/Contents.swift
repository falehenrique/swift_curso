//: Error Handling

/*
 Quando desenvolmos para mobile, ou qualquer outra plataforma, temso que lidar com qualquer tipo de cenáril, seja eles esperados ou indesejados. Obviamente, as coisas podem dar errado ou não sair como esperado.
 Por exemplo, se você estiver desenvolvendo um app para conectar com um servidor na nuvem, você deve lidar com situações com a Internet indisponível ou mesmo falha na conexão ao servidor.
 Nas versões anteriores da Swift, não havia um modelo apropriado para gerenciamento de erros.
 */

// Um exemplo de como um erro era tratado nas versões anteriores da Swift
//  O objeto erro é passado como um ponteiro e o erro é verificado após a execução do método
// -> está comentado por não ser mais reconhecido na versão 3
/*
 let request = NSURLRequest(URL: NSURL(string: "http://www.apple.com")!)
 var response: NSURLResponse?
 var error: NSError?
 let data = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error)
 
 if error == nil {
 print(response)
 // Parse the data
 } else {
 // Handle error
 }
 */

//: try / throw / catch

/*
 A partir da Swifft 2, o tratamento de erros passou a ser pelo modelo de exceção, usando as palavras try-throw-catch.
 */

// Vejamos o equivalene do exemplo anterior
import UIKit

let request = URLRequest(url: URL(string: "https://www.apple.com")!)
var response: URLResponse?
do {
    let data = try NSURLConnection.sendSynchronousRequest(request, returning: &response)
    print(response)
    
    // Parse the data
} catch {
    // handle error
    print(error)
}
/*
 Utilizamos agora a clásusula do-catch para capturar os erros e tratá-los adequadamente.
 Observe que a palavra try é colocada antes da chamada do método.
 Com esse modelo, alguns métodos podem disparar (throws) erros para indicar falhas.
 Quando invocamos um método do tipo "throwing", é obrigatório o uso de try.
 */

// Mas como saber se um método dispara um erro?
//  Resposta: Ao editar um método, observe que a palavra throws é exibida
//  INSTRUTOR -> Digite o método let data = NSString(contentsOFFile...) e veja a palavra throws ao final do comando

/*
 Estudo de Caso
 Agora que já entendemos o modelo de tratamento de erros, como fazer para dispararmos os nossos próprios erros?
 Vamos considerar as seguintes regras de negócio, para uma lista de compras:
 1) A lista comporta no máximo 5 itens, caso contrário orá disparar o erro cartIsFull
 2) A lista deve conter pelo menos um item, caso contrário irá disparar o erro cartIsEmpty
 Em Swift, os erros são representados por tipos de valores que devem estar em conformidade com o protocolo Error.
 É bastante comum utilizar um enum para modelar as condições de erro. Vejamos como ficaria o nosso modelo:
 */
enum ShoppingCartError: Error {
    case cartIsFull
    case emptyCart
}

// Vamos criar agora uma lista de compras, que irá utilizar o modelo de erros
struct Item {
    var price:Double
    var name:String
}

class LiteShoppingCart {
    var items:[Item] = []
    
    // Aqui indicamos que o método pode disparar um erro
    func addItem(item:Item) throws {
        guard items.count < 5 else {
            throw ShoppingCartError.cartIsFull
        }
        
        items.append(item)
    }
    
    // Idem
    func checkout() throws {
        guard items.count > 0 else {
            throw ShoppingCartError.emptyCart
        }
        // Continua com o checkout
    }
}

// Vamos agora testar o modelo de erros
let shoppingCart = LiteShoppingCart()

// Adiciona itens na lista
//  Observe o uso da palavra try, obrigatória
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #1"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}
//
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #2"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}
//
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #3"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}
//
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #4"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}
//
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #5"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}
//
//do {
//    try shoppingCart.addItem(item: Item(price: 100.0, name: "Produto #6"))
//    print("Produto adicionado na lista com sucesso!")
//} catch ShoppingCartError.cartIsFull {
//    print("Lista de compras está cheia!")
//}

// Efetua o check out
do {
    try shoppingCart.checkout()
    print("Check out efetuado com sucesso!")
} catch ShoppingCartError.emptyCart {
    print("Lista de compras está vazia!")
}






/// EXAMPLE GET

func sendButtonTapped() {
    let userNameValue = "Henrique"

    
    // Send HTTP GET Request
    
    // Define server side script URL
    let scriptUrl = "http://swiftdeveloperblog.com/my-http-get-example-script/"
    // Add one parameter
    let urlWithParams = scriptUrl + "?userName=\(userNameValue)"
    // Create NSURL Ibject
    let myUrl = NSURL(string: urlWithParams);
    
    print(myUrl)
    
    // Creaste URL Request
    let request = NSMutableURLRequest(url:myUrl! as URL);
    
    // Set request HTTP method to GET. It could be POST as well
    request.httpMethod = "GET"
    
    // Excute HTTP Request
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        data, response, error in
        
        // Check for error
        if error != nil
        {
            print("error=\(error)")
            return
        }
        
        // Print out response string
        let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        print("responseString = \(responseString)")
        
        
        // Convert server json response to NSDictionary
        do {
            if let convertedJsonIntoDict = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                
                // Print out dictionary
                print(convertedJsonIntoDict)
                
                // Get value by key
                let firstNameValue = convertedJsonIntoDict["userName"] as? String
                
                
                print("RETORNOU")
                
                print(firstNameValue!)
                
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }
    
    task.resume()
}

sendButtonTapped()

