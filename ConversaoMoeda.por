programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    
    real saldoCliente
    inteiro opcao
    real resultadoDaConversao
    real CONVERSAO_DOLAR = 4.86
    real CONVERSAO_LENE_JAPONES = 0.033
    real CONVERSAO_PESO_ARGENTINO = 0.014

    escreva("1) D�lar \n2) Lene Japon�s \n3) Pesoa Argentino\nDigite a sua op��o:")
    leia(opcao)

    escreva("Informe o seu saldo para convers�o R$")
    leia(saldoCliente)
    
    escolha(opcao){
    caso 1:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_DOLAR), 2)
    escreva("Esse � o seu saldo em US$", resultadoDaConversao)
    pare

    caso 2:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_LENE_JAPONES), 2)
    escreva("Esse � o seu saldo em �", resultadoDaConversao)
    pare

    caso 3:
    resultadoDaConversao = mat.arredondar((saldoCliente / CONVERSAO_PESO_ARGENTINO), 2)
    escreva("Esse � o seu saldo em $", resultadoDaConversao)
    pare 
    caso contrario:
    escreva("Op��o n�o encontrada.")
    }
  }
}
