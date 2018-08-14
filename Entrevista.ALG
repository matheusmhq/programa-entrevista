Algoritmo "Entrevista"

//Declarando registro
Tipo
   entrevistado = registro
      nome: caractere
      idade: inteiro
      sexo: caractere
      quantif: inteiro
      rendam: real
   Fimregistro

//Declarando variaveis
Var
   lista_entrev: Vetor[1..20] de entrevistado
   i, homem, mulher, renda500, filhom1, idade18: inteiro

//Inicio do programa
Inicio
   Escreval("Iniciando entrevista...")

   Para i de 1 ate 20 passo 1 faca
      Escreval("") //Para pular linha de um entrevistado para o outro
      Escreval("Entrevistado ", i)
      Escreva("Nome: ")
      Leia(lista_entrev[i].nome)

      //Se a variavel NOME não for preenchida vai pular pra fora do laço de repetição
      Se(lista_entrev[i].nome = "") entao
         interrompa
      Fimse

      //__Entrada IDADE
      Escreva("Idade: ")
      Leia(lista_entrev[i].idade)
      
         //Verificando pessoas que nasceram a partir do ano 2000
      Se(lista_entrev[i].idade >= 18) entao
         idade18 <- idade18 + 1
      Fimse

      //__Entrada SEXO
      Escreva("Sexo [M = Masculino / F = Feminino]: ")
      Leia(lista_entrev[i].sexo)

         //Verificando quantidade de homens e mulheres
      Se(lista_entrev[i].sexo = "M") entao
         homem <- homem + 1
         Senao
            mulher <- mulher + 1
      Fimse
      
      //__Entrada QUANTIDADE DE FILHOS
      Escreva("Quantidade de filho(s): ")
      Leia(lista_entrev[i].quantif)
      
         //Verificando quantidade de pessoas com no minimo 1 filho
      Se(lista_entrev[i].quantif >= 1) entao
         filhom1 <- filhom1 + 1
      Fimse

      //__Entrada RENDA MENSAL
      Escreva("Renda mensal familiar: ")
      Leia(lista_entrev[i].rendam)
      
         //Verificando quantidade de pessoas com renda de no minimo 500 reais
      Se(lista_entrev[i].rendam >= 500) entao
         renda500 <- renda500 + 1
      Fimse
   Fimpara
   
   //Apresentando informaçoes com base nos dados coletado
   Escreval("")
   Escreval("Fim da Entrevista!")
   Escreval("Quantidade de pessoas que foram entrevistadas:", i-1)
   Escreval("Apresentando informações com base nos dados coletados.")

   //Percentual de mulheres e homens
   Escreval("")
   Escreval("- Percentual de MULHERES e HOMENS")
   Escreval(" Mulheres: ", mulher*100 / (i-1):2:1, "%")
   Escreval(" Homens: ", homem*100 / (i-1):2:1, "%")

   //Número de pessoas com renda familiar de 500 ou acima
   Escreval("")
   Escreval("- Número de pessoas com renda familiar de no mínimo R$500.00 ")
   Escreval("",renda500," Pessoa(s)")
   
   //Percentual de pessoas que tem ao menos 1 filho
   Escreval("")
   Escreval("- Percentual de pessoas que tem ao menos 1 filho")
   Escreval(" ",filhom1*100 / (i-1):2:1 ,"% das pessoas tem ao menos 1 filho")

   //Número de pessoas que nasceram a partir do ano 2000
   Escreval("")
   Escreval("- Número de pessoas que nasceram a partir do ano 2000")
   Escreval(idade18," Pessoa(s) nasceu(ram) a partir de 2000")
Fimalgoritmo