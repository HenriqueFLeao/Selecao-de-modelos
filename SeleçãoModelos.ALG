Algoritmo "semnome"
// Disciplina   : [Algoritmos e Estrutura de Dados]
// Descrição   : Algoritmo para registo de modelos, e impressão na tela com os que se encaixam nos parâmetros requisitados
// Autor(a)    : Henrique F. Leão
// Data atual  : 19/03/2024

Tipo
   cad_pessoa = registro
      nome : caractere
      idade : inteiro
      corCabelo : inteiro
      sexo : caractere
   fimregistro

   aprovadosH = registro
      nome : caractere
      idade : inteiro
      corCabelo : inteiro
      sexo : caractere
   fimregistro
   
      aprovadasM = registro
      nome : caractere
      idade : inteiro
      corCabelo : inteiro
      sexo : caractere
   fimregistro

Var
AprovadosH : vetor[1..10] de aprovadosH
AprovadasM : vetor[1..10] de aprovadasM
pessoa : vetor[1..10] de cad_pessoa
i, Max, quantCadastrada, quantAprovadosH, h, quantAprovadasM, m: inteiro
opcao: caractere

Inicio
Max <- 30
quantCadastrada <- 0
quantAprovadosH <- 0
quantAprovadasM <- 0

para i de 1 ate max faca
  quantCadastrada <- quantCadastrada + 1
  Escreval
  Escreva("---------- Candidato de numero:")
  Escreva(i)
  Escreva("----------")
  Escreval

  Escreva("1) Informe nome: ")
  Leia(pessoa[i].nome)
 
  Escreva("2) Informe a idade: ")
  Leia(pessoa[i].idade)
 
  Escreva("3) Informe o sexo m/f : ")
  Leia(pessoa[i].sexo)
 
  Escreva("4) Informe a cor do cabelo: ")
  Escreval
  Escreva(" Se for Castanhos digite 1")
  Escreval
  Escreva(" Se for Loiros digite 2")
  Escreval
  Escreva(" Se for Ruivos digite 3")
  Escreval
  Leia(pessoa[i].corCabelo)

  se pessoa[i].sexo = "m" entao
    se pessoa[i].idade > 20 entao
      se pessoa[i].corCabelo = 1 entao
        quantAprovadosH <- quantAprovadosH + 1
        AprovadosH[quantAprovadosH].nome <- pessoa[i].nome
        AprovadosH[quantAprovadosH].idade <- pessoa[i].idade
        AprovadosH[quantAprovadosH].sexo <- pessoa[i].sexo
        AprovadosH[quantAprovadosH].corCabelo <- pessoa[i].corCabelo
      fimse
    fimse
  fimse
  
  se pessoa[i].sexo = "f" entao
    se pessoa[i].idade > 29  entao
      se pessoa[i].idade < 35  entao
        se pessoa[i].corCabelo = 2 entao
          quantAprovadasM <- quantAprovadasM + 1
          AprovadasM[quantAprovadasM].nome <- pessoa[i].nome
          AprovadasM[quantAprovadasM].idade <- pessoa[i].idade
          AprovadasM[quantAprovadasM].sexo <- pessoa[i].sexo
          AprovadasM[quantAprovadasM].corCabelo <- pessoa[i].corCabelo
        fimse
      fimse
    fimse
  fimse
  
  Escreval
  Escreva("Deseja continuar cadastrando?? s/n : ")
  Leia(opcao)

  Se opcao = "n" então
    limpatela
    se quantAprovadosH = 0 entao
      escreva("Não há homens aprovados!!!")
      escreval
    senao
      Escreva( " Total de Homens aprovados:" )
      Escreva(quantAprovadosH)
      Escreval

      h <- 1
      Escreva("---------------Homens aprovados---------------")
      Escreval
    
       para h de 1 ate quantAprovadosH faca

         Escreval
         Escreva("-----Candidato de numero:")
         Escreva(h)
         Escreva("-----")
         Escreval
         Escreval
         Escreva("Nome: ", AprovadosH[h].nome)
         Escreval
         Escreva("Idade: ", AprovadosH[h].idade)
         Escreval
         Escreva("Cor do cabelo: Castanhos ")
         Escreval
         h <- h + 1

       fimpara
    fimse
    
    se quantAprovadasM = 0 entao
      escreva("Não há mulheres aprovadas!!!")
      escreval
    senao
    
      m <- 1
      Escreva( " Total de Mulheres aprovadas:" )
      Escreva(quantAprovadasM)
      Escreval
     
      Escreva("---------------Mulheres aprovadas---------------")
      Escreval

      para m de 1 ate quantAprovadasM faca

        Escreval
        Escreva("-----Candidata de numero:")
        Escreva(m)
        Escreva("-----")
        Escreval
        Escreval
        Escreva("Nome: ", AprovadasM[m].nome)
        Escreval
        Escreva("Idade: ", AprovadasM[m].idade)
        Escreval
        Escreva("Cor do cabelo: Loiros ")
        Escreval
        m <- m + 1

      fimpara
    fimse
    fimalgoritmo
  fimSe
fimpara
Fimalgoritmo