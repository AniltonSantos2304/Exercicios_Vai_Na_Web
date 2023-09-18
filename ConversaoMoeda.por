programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    
    real saldoCliente
    inteiro opcao
    real resultadoDaConversao
    real CONVERSAO_DOLAR = 4.86
    real CONVERSAO_LENE_JAPONES = 0.033
    real CONVERSAO_PESO_ARGENTINO = 0.014

    escreva("1) Dólar \n2) Lene Japonês \n3) Pesoa Argentino\nDigite a sua opção:")
    leia(opcao)

    escreva("Informe o seu saldo para conversão R$")
    leia(saldoCliente)
    
    escolha(opcao){
    caso 1:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_DOLAR), 2)
    escreva("Esse é o seu saldo em US$", resultadoDaConversao)
    pare

    caso 2:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_LENE_JAPONES), 2)
    escreva("Esse é o seu saldo em ¥", resultadoDaConversao)
    pare

    caso 3:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_PESO_ARGENTINO), 2)
    escreva("Esse é o seu saldo em $", resultadoDaConversao)
    pare 
    caso contrario:
    escreva("Opção não encontrada.")
    }
  }
}
