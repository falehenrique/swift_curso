//: Availability Checking

/*
 Se todos os usuários atualizassem ao mesmo tempo para a versão mais recente do iOS, a vida dos desenvolvedores seria muito mais fácil. Na realidade, porém, as suas aplicações tem que atender a diferentes versões do iOS (por exemplo iOS 8, 9 e iOS 10). Se você usar apenas a versão mais recente de APIs em seu aplicativo, isso pode causar erros quando o aplicativo é executado em versões anteriores do iOS. Ao usar uma API que está disponível apenas na versão mais recente do iOS, você vai precisar fazer algumas verificações antes de usar uma classe ou chamar um método.
 
 Antes de Swift 2, não havia nenhuma maneira padrão para fazer verificação de disponibilidade. Como exemplo, a classe UNMutableNotificationContent só está disponível no iOS 10. Se você usar a classe em versões anteriores do iOS sem nenhuma verificação, vai acabar tomando um erro de execução na certa.
 Essa verificação é necessária para determinados recursos. Por exemplo, o SDK do Touch ID está disponível apenas a partir da versão 8 do iOS.
 */

//: Verificação de existência de Classe
import UIKit

if (NSClassFromString("UNMutableNotificationContent") != nil) {
    
} else {
    
}
// Essa é a única forma de verificar se uma classe existe

//: Verificação de versão de iOS
import UserNotifications

if #available(iOS 10.0, *) {
    // iOS 10 ou acima
    let content = UNMutableNotificationContent()
} else {
    // Versões anteriores
}
// Também pode ser utilizado guard

//: Atribuição de versão do iOS

// Se quisermos forçar o target de nossas classes/métodos/funções, podemos utilizar o palavra @available
@available(iOS 10.0, *)
class SuperCool {
    // implementation
}

