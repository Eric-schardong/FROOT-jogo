programa
{
	inclua biblioteca Sons --> m
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inteiro volume = 100
	inteiro musica = m.carregar_som("INTRO.mp3")
	funcao inicio()
	{
		menu()
	}
	funcao menu()
	{
		limpa()
		trocar_musica("INTRO.mp3")
		u.aguarde(2900)
		inteiro input
		logo(250)
		escreva("\n         [1] Começar   [2]Opçoes   \n         [3]Selecionar Capitulo\n")
    		leia(input)
    		escolha(input)
    		{
    			caso 1: historia(1)
    			pare
    			caso 2: opcoes()
    			pare
    			caso 3: capitulos()
    			pare
        }  
		
	}
	funcao opcoes()
	{
		inteiro input
		limpa()
		m.definir_volume_reproducao(musica, volume)
		escreva("[0] Voltar \n\n")
		escreva("[1] Volume = ", volume)
		escreva("\n")
		leia(input)
		escolha(input)
		{
			caso 0: menu()
			pare
			caso 1:
			limpa()
			escreva("VOLUME: ")
			leia(volume)
			opcoes()
			pare
		}
	}
	funcao logo(inteiro frame)	
	{
	escreva(" ★   .  . ####\n    .     ##  \n .     .  ####\n  .  .    ##  \n .     ★  ##  \n")
	u.aguarde(frame)
	limpa()
	escreva(" ★   .  . #### ##### \n    .     ##   ##  ##\n .     .  #### ##### \n  .  .    ##   ## ## \n .     ★  ##   ##  ##\n")
	u.aguarde(frame)
	limpa()
	escreva(" ★   .  . #### #####    ### \n    .     ##   ##  ## ##   ##\n .     .  #### #####  #     #\n  .  .    ##   ## ##  ##   ##\n .     ★  ##   ##  ##   ### \n")
	u.aguarde(frame)
	limpa()
	escreva(" ★   .  . #### #####    ###  ###  \n    .     ##   ##  ## ##   ##   ##\n .     .  #### #####  #    #     #\n  .  .    ##   ## ##  ##   ##   ##\n .     ★  ##   ##  ##   ###  ###  \n")
	u.aguarde(frame)
	limpa()
	escreva(" ★   .  . #### #####    ###  ###  ###### .     ★  \n    .     ##   ##  ## ##   ##   ##  ## .    .    .\n .     .  #### #####  #    #     #  ##    .   .   \n  .  .    ##   ## ##  ##   ##   ##  ##      ★     \n .     ★  ##   ##  ##   ###  ###    ##   .     .  \n")
	}
	funcao historia(inteiro capitulo)
	{
		cadeia enter
		inteiro input
		limpa()
		escolha(capitulo)
		{
		caso 1:  
		escrever_delay("		CAPITULO 1" , 200)
		u.aguarde(250)
		escrever_delay("\n	A ESTRADA DE MOWGLI", 50)
		u.aguarde(2500)	
		limpa()
		
		escrever_delay("..." , 200)
		escrever_delay("1 de setembro... querido diario, consegui um emprego e hoje vai ser meu primeiro dia\n e eu to muuuuito animada pro atendimento ao publico\n bom, ainda tenho um tempo antes de ir" , 100)
		leia(enter)
		limpa()
		escrever_delay("COMO GOSTARIA DE PASSAR O TEMPO?\n" , 50)
		escreva("  [1]ver TV  [2]ler um livro")
		leia(input)
		limpa()
		escolha(input)
		{
			caso 1:
			escreva("[1]She-ra [2]Entrevista com Anja Rubik \n[3]Noticiario")
			leia(input)
			pare
			caso 2:
			escrever_delay("*Um livro da estante chama minha atencao\n\"comer o mundo\"", 25)
			trocar_musica("ETW.mp3")
			u.aguarde(9000)
			escrever_delay("eu era o tipo de garota que engolia o mundo", 46)
			pare
		}
		limpa()
		
		escrever_delay("Ta, o trabalho e simples, eu anoto o pedido, faco o pedido, entrego o pedido" , 50)
		escreva("\n'Enter' para prosseguir")
		leia(enter)
		limpa()
		
		escrever_delay("[Cliente]: oh meu deus, voce e igualzinha a Shakira!\n" , 50)
		u.aguarde(100)
		escrever_delay("[Cliente]: nao nao... voce e a Catherine Zeta!\n" , 50)
		u.aguarde(200)
		escrever_delay("[??????]: na verdade... meu nome e Marina" , 100)
		limpa()
		escreva("[Cliente]: oh meu deus, voce e igualzinha a Shakira!\n[Cliente]: nao nao... voce e a Catherine Zeta!\n[Marina]: na verdade... meu nome e Marina\n")
		u.aguarde(100)
		escrever_delay("[Cliente]: oh...\n" , 50)
		u.aguarde(100)
		escrever_delay("[Marina]: ...o senhor gostaria de fazer um pedido?\n" , 100)
		u.aguarde(100)
		escrever_delay("[Cliente]: ah sim! \n" , 50)
		minigame(u.sorteia(0,4),u.sorteia(0,5),u.sorteia(0,2), verdadeiro)
		u.aguarde(200)
		limpa()
		escrever_delay("*Apos um longo dia de trabalho Marina anda de volta pra casa*\n" , 50)
		escrever_delay("Isso vai ser muito mas dificil do que pensei...\n", 100)
		escrever_delay("*Marina deita sua cabeca no travesseiro e lentamente fecha os olhos...*", 100)
		u.aguarde(300)
		trocar_musica("MgR.mp3")
		limpa()
		escrever_delay("...\n", 25)
		u.aguarde(300)
		escrever_delay("*Marina abre os olhos e se encontra em uma floresta*,\n", 50)
		escrever_delay("*Ao olhar ao redor marina encontra uma placa apontada para uma estrada escura e um papel no chao*\n", 50)
		escreva("'ENTER' para contiuar")
		leia(enter)
		
		
		enquanto(input != 3)
		{
		leia(input)
		escreva("[1]Ver placa		[2]Ver papel\n[3]seguir pela estrada")
			escolha(input)
			{
				caso 1: 
				limpa()
				escrever_delay("A placa aponta para uma estrada escura no meio das arvores\n\"o caminho abandonado\"",50)
				escreva("'ENTER' para contiuar")
				leia(enter)
				pare
				
				caso 2: 
				limpa()
				escrever_delay("o papel parecia uma pagina arrancada de um caderno, o texto parecia um diario mas escrito com pressa\n\"querido diario \nfaz tempo que corro nessa floresta e nao saio daqui\nacho que as colheres estao chegando mais perto\"",50)
				escreva("'ENTER' para contiuar")
				leia(enter)
				pare
			}
		}
		
		pare
		}
		
	}	
	funcao escrever_delay(cadeia texto, inteiro delay)
	{
		para(inteiro i=0; i < t.numero_caracteres(texto); i++)
		{
			
		escreva(t.obter_caracter(texto, i))
		u.aguarde(delay)
	}
	}
	funcao carregar(inteiro repete)
	{
		para(inteiro i = 0 ; i <= repete ; i++)
	{
		escreva("     /   \n ###/### \n#       #\n#       #\n #     # \n  #####  \n ")
		u.aguarde(500)
	     limpa()
		escreva("     /   \n ###/### \n#      ##\n#     #  \n #     # \n  #####  \n ")
		u.aguarde(500)
	     limpa()
		escreva("     /  \n ###/###\n#     ##\n#    #  \n #    # \n  ##### \n ")	
		u.aguarde(500)
	     limpa()
	}
	}
	funcao trocar_musica(cadeia endereco)
	{
		m.liberar_som(musica)
		musica = m.carregar_som(endereco)
		m.definir_volume_reproducao(musica, volume)
		m.reproduzir_som(musica, verdadeiro)
	}
	funcao capitulos()
	{
		trocar_musica("MgR.mp3")
		cadeia input = " "
		inteiro capitulo = 1
		mostrar_level(capitulo)
		
		
		enquanto(input != "1")
		{
			leia(input)
			se(input == "a" e capitulo > 1)
			{
				capitulo--
				mostrar_level(capitulo)
			}
			se(input == "b")
			{
				capitulo++
				mostrar_level(capitulo)
			}
			se(input == "0")
			{
				menu()
			}
		}
		historia(capitulo)
	}
	funcao mostrar_level(inteiro level)
	{
		limpa()
		escolha(level)
		{
			caso 1:
			trocar_musica("MgR.mp3")
			escreva("________________________________________\n")
			escreva("|                                      |\n")
			escreva("| CAPITULO 1:                          |\n")
			escreva("| A ESTRADA DE MOWGLI                  |\n")
			escreva("| a estrada abandonada                 |\n")
			escreva("————————————————————————————————————————\n")

			pare
			caso 2:
			trocar_musica("Sava.mp3")
			escreva("_____________________________________\n")
			escreva("|                                   |\n")
			escreva("| CAPITULO 2:                       |\n")
			escreva("| SELVAGENS                         |\n")
			escreva("| medo do humano                    |\n")
			escreva("—————————————————————————————————————\n")
			pare
			
			caso 3:
			escreva("_______________________________________\n")
			escreva("|                                     |\n")
			escreva("| CAPITULO 3:                         |\n")
			escreva("| INDISPONIVEL                        |\n")
			escreva("|                                     |\n")
			escreva("———————————————————————————————————————\n")
		
			pare
			
			caso 4:
			escreva("_____________________________________\n")
			escreva("|                                   |\n")
			escreva("| CAPITULO 4:                       |\n")
			escreva("| INDISPONIVEL                      |\n")
			escreva("|                                   |\n")
			escreva("—————————————————————————————————————\n")
			
			pare
		}
		escreva("[0] - voltar         [1]selecionar\n")
		escreva("[a]anterior          [b]proximo")
	}
	funcao minigame(inteiro nbase , inteiro nfruta , inteiro nextra, logico tutorial){
	//nbase = numero da base , nfruta = numero da fruta , nextra = numero do extra

		cadeia enter
		inteiro acertos = 0 ,salario = 0, rbase,rfruta,rextra
	// igual nbase,nfruta e nextra mas o r eh para resposta

		cadeia bases[5] = {" agua gasificada"," refrigerante",
						" leite"," vodka"," rum"}
						
		cadeia frutas[6] = {" morango "," abacaxi "," maracuja ",
						" uva "," laranja "," limao "}
						
		cadeia extra[3] = {" gelo "," frutas no copo "," nada"}

		se(tutorial == verdadeiro){
			escreva("nesse minigame voce recebera um cliente que fara um pedido separado em 3 partes:base,sabor e um extras. Voce deve selecionar os ingredientes pedidos. Quanto mais acertos,mais dinheiro voce ira ganhar ao final. \n") 
			escreva("ENTER para comecar o jogo. \n")
			leia(enter)
			escreva("[Cliente]")
		}
		
		
		escreva(" gostaria de um drink com a base de",bases[nbase],".sabor",frutas[nfruta],".e mais",extra[nextra],"\n")
		escreva("aperte ENTER para preparar o pedido")
		leia(enter)
          limpa()
          
		escreva("______________________________________ \n")
		escreva(" escolha a base pedida pelo cliente: \n")
		escreva("0-agua gasificada      1-refrigerante \n")
		escreva("2-leite                 3-vodka \n")
  		escreva("4-rum \n")
		escreva("______________________________________ \n")
		leia(rbase) 
		se(rbase == nbase) {
			acertos++ 
			salario = salario + 5     
		}
		limpa()
		escreva("______________________________________ \n")
		escreva(" escolha o sabor pedido pelo cliente: \n")
		escreva("0-morango       1-abacaxi \n")
		escreva("2-maracuja      3-uva \n")
  		escreva("4-laranja       5-limao\n")
		escreva("______________________________________ \n")
		leia(rfruta) 
		se(rfruta == nfruta) {
			acertos++  
			salario = salario + 5     
		}
	   limpa()

		escreva("______________________________________ \n")
		escreva(" escolha o extra pedido pelo cliente: \n")
		escreva("0-gelo      1-frutas no copo \n")
		escreva("2-nada                 \n")
		escreva("______________________________________ \n")
		leia(rextra) 
		se(rextra == nextra) {
			acertos++ 
			salario = salario + 5 
			}     
		limpa()

		escreva("-------------------------------------------------------- \n")
		escreva("voce acertou ",acertos,"/3 partes do drink. \n")
		escreva("voce ganhou ",salario," reais \n")

		escolha(acertos)
		{
			caso 3:
			escreva("parabens! o drink esta perfeito!")
			pare
			caso 2:
			escreva("nao foi tao ruim desta vez!")
			pare
			caso 1:
			escreva("hmmm..poderia ter sido melhor..")
			pare
		}
		escreva("aperte ENTER para continuar")
		leia(enter)
		limpa()
	}
}
