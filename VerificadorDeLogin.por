programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    cadeia LOGIN_SALVO_NO_BD = "admim"
    cadeia PASSWORD_SALVO_NO_BD = "admim"
    cadeia loginDigitado
    cadeia passwordDigitado
    inteiro BLOQUEIO_CONTA_TENTATIVA_MAXIMA = 3
    inteiro contadorBloqueio = 1

    para(inteiro i = 1; i <= BLOQUEIO_CONTA_TENTATIVA_MAXIMA; i++){
      escreva("Essa é a sua ", contadorBloqueio, " tentativa\n")
      escreva("Informe o seu login: ")
      leia(loginDigitado)
      escreva("Informe o seu password: ")
      leia(passwordDigitado)

      se(loginDigitado == LOGIN_SALVO_NO_BD e passwordDigitado == PASSWORD_SALVO_NO_BD){
        escreva("Acesso Consedido.")
        pare
      }senao{
        se(i == 3){
          escreva("Você tentou acessar a sua conta mais de três vezes por isso o seu usuário vai ser bloqueado.")
          u.aguarde(2000)
          limpa()
          escreva("Usuário Bloqueado.")
          pare
        }
      }
      contadorBloqueio++
    }
  }
}
