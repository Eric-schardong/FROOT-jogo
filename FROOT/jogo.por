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
		limpa()
		escolha(capitulo)
		{
		caso 1:  
		escrever_delay("		CAPITULO 1" , 200)
		u.aguarde(250)
		escrever_delay("\nANCIENT DREAMS IN A MODERN LAND", 50)
		u.aguarde(2500)	
		limpa()
		
		escrever_delay("..." , 200)
		escrever_delay("1 de setembro... querido diario, consegui um emprego e hoje vai ser meu primeiro dia\n e eu to muuuuito animada pro atendimento ao publico\n bom, ainda tenho um tempo antes de ir" , 100)
		leia(enter)
		limpa()
		escrever_delay("[liga a tv]\n nada de interessante... de novo... tanto faz." , 50)
		leia(enter)
		limpa()
		
		escrever_delay("Ta, o trabalho e simples, eu anoto o pedido, faco o pedido, entrego o pedido" , 50)
		escreva("\n'Enter' para prosseguir")
		leia(enter)
		limpa()
		
		escrever_delay("[Cliente]: oh meu deus, voce e igualzinha a Shakira!\n" , 50)
		u.aguarde(100)
		escrever_delay("[Cliente]: nao nao... voce e a Catherine Zeta!\n" , 50)
		u.aguarde(200)
		escrever_delay("[???]: na verdade... meu nome e Marina" , 100)
		limpa()
		escreva("[Cliente]: oh meu deus, voce e igualzinha a Shakira!\n[Cliente]: nao nao... voce e a Catherine Zeta!\n[Marina]: na verdade... meu nome e Marina\n")
		u.aguarde(100)
		escrever_delay("[Cliente]: oh...\n" , 50)
		u.aguarde(100)
		escrever_delay("[Marina]: ...o senhor gostaria de fazer um pedido?\n" , 100)
		u.aguarde(100)
		escrever_delay("[Cliente]: ah sim! \n" , 50)
		escrever_delay("[Cliente]: eu gostaria de um \n" , 50)
		u.aguarde(200)
		limpa()
		escrever_delay("*Apos um longo dia de trabalho Marina anda de volta pra casa*\n" , 50)
		escrever_delay("Isso vai ser muito mas dificil do que pensei...\n", 100)
		escrever_delay("*Marina deita sua cabeca no travesseiro e lentamente fecha os olhos...*", 100)
		u.aguarde(300)
		trocar_musica("ADIAML.mp3")
		u.aguarde(2000)
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
		trocar_musica("DF.mp3")
		inteiro input
		limpa()
		escreva("Voltar: 0\n")
		escreva("________________________________________ _____________________________________\n")
		escreva("|                                      | |                                   |\n")
		escreva("| CAPITULO 1:                          | | CAPITULO 2:                       |\n")
		escreva("| ANCIENT DREAMS IN A MODERN LAND      | | SAVAGES                           |\n")
		escreva("| voce nao esta aqui para se comformar | | ??????                            |\n")
		escreva("———————————————————————————————————————— —————————————————————————————————————\n")

		escreva("________________________________________ _____________________________________\n")
		escreva("|                                      | |                                   |\n")
		escreva("| CAPITULO 3:                          | | CAPITULO 4:                       |\n")
		escreva("| PURGE THE POISON                     | | FINAL BOSS                        |\n")
		escreva("| as bruxas de Hollywood               | | agora conheco o jogo              |\n")
		escreva("———————————————————————————————————————— —————————————————————————————————————\n")

		leia(input)
		se(input > 0)
		{
		historia(input)
		}
		senao
		{
			menu()
		}
	}
}
