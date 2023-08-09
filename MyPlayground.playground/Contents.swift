import UIKit

class Calculadora {
    var numero1: Int = 10
    var numero2: Int = 2
    
    func somar() -> Int {
        return numero1 + numero2
    }
    
    func subtrair() -> Int {
        return numero1 - numero2
    }
    
    func multiplicar() -> Int {
        return numero1 * numero2
    }
    
    func dividir() -> Double {
        guard numero2 != 0 else {
            fatalError("Erro: Divisão por zero não é permitida.")
        }
        return Double(numero1) / Double(numero2)
    }
}

let minhaCalculadora = Calculadora()

print("Soma: \(minhaCalculadora.somar())") // Saída: 12
print("Subtração: \(minhaCalculadora.subtrair())") // Saída: 8
print("Multiplicação: \(minhaCalculadora.multiplicar())") // Saída: 20
print("Divisão: \(minhaCalculadora.dividir())") // Saída: 5.0


class Restaurante {

    var nome: String = ""
    var tipoComida: String = ""
    var numeroPedidos: Int = 0
    
    func receberPedidos() {
        numeroPedidos += 1
    }
    
    func calcularTotalPedidos(precoPorPedido: Int) -> Int {
        return numeroPedidos * precoPorPedido
    }
}

let meuRestaurante = Restaurante()

// Receber 3 pedidos
for _ in 1...3 {
    meuRestaurante.receberPedidos()
}

let precoPorPedido = 35
let totalPedidos = meuRestaurante.calcularTotalPedidos(precoPorPedido: precoPorPedido)
print("Total de pedidos: \(totalPedidos)")



class Triangulo {
    
    var base: Int = 15
    var altura: Int = 10
    
    func calcularArea() -> Int {
        return (base * altura) / 2
    }
    
}

let meuTriangulo = Triangulo()
print("Área do triângulo: \(meuTriangulo.calcularArea())")
