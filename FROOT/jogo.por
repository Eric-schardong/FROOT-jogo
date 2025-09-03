programa
{
	inclua biblioteca Sons --> m
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inteiro volume = 100
	inteiro froot[] = {m.carregar_som("INTRO.mp3")}
	cadeia froota
	inteiro propriedades_froota[3] ={1,0,0}
	// 0 fase de crescimento
	// 1 citrico(real)
	// 2 xp
	cadeia desenhos[21][1] =
	{
		{"  \\V/ "},
		{"  \\V/ "},
		{"  ###  "},
		{" # ### "},
		{"###   #"},
		{"#   ###"},
		{" ##### "},
		
		{"       "},
		{"   \\| "},
		{" ## ## "},
		{"# #  ##"},
		{" # # # "},
		{"  # #  "},
		{"   #   "},
		
		{"         "},
		{"      /  "},
		{" ###/### "},
		{"#      ##"},
		{"#     #  "},
		{" #     # "},
		{"  #####  "}
	} 
	funcao inicio()
	{
	     
		m.reproduzir_som(froot[0], verdadeiro)
		u.aguarde(2900)
		menu()
	}
	funcao menu()
	{
		limpa()
		inteiro input
		logo(250)
		escreva("\n            [1] Começar   [2]Opçoes\n")
		leia(input)
		escolha(input)
		{
			caso 1: escolher_froota()
			pare
			caso 2: opcoes()
			pare
		}
		
	}
	funcao escolher_froota()
	{
		inteiro input
		cadeia frootas[] = {"Abacaxi", "Uva", "Maçã"}
		limpa()
		escreva("Escolha sua froota: ")
		escreva("\n\n")
		escreva("    \\V/                                \n")	        
		escreva("    \\V/      \\|         /        /    \n")
		escreva("    ###     ## ##    ###/###     ###    \n") 
		escreva("   # ###   # #  ##  #      ##  ##   ##  \n")
		escreva("  ###   #   # # #   #     #    #     #  \n")
		escreva("  #   ###    # #     #     #   ##   ##  \n")
		escreva("   #####      #       #####      ###    \n")
		escreva("[1]Abacaxi [2]Uva   [3] Maçã  [4] Limão\n")
		escreva("—————————— ———————— ————————— —————————\n")
		leia(input)
		froota = frootas[input - 1]
		escolha(input)
		{
			caso 1:
			propriedades_froota[1] = 1
			pare
			caso 2:
			propriedades_froota[1] = 0
			pare
			caso 3:
			propriedades_froota[1] = 0
			pare
		}
		limpa()
		carregar(3)
		historia()
		
	}
	funcao opcoes()
	{
		inteiro input
		limpa()
		m.definir_volume_reproducao(froot[0], volume)
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
	funcao historia()
	{
		escrever_delay("..." , 500)
		escrever_delay("1 de setembro... querido diario, hoje vou sair pra procurar um emprego\n preciso de dinheiro para pagar a faculdade, sera que meu curriculo ta bom o suficiente? \n" , 125)
		escreva(" ____________________________________________________________________\n|                                                                    |\n| Marina Diamandis                                                   |\n| Brynmawr, País de Gales                                            |\n| Estudante universitária (recém-admitida em Literatura e Música)    |\n| Aspirante a barista – procurando trabalho para pagar a faculdade   |\n|                                                                    |\n| Habilidades:                                                       |\n|                                                                    |\n| Ótimo atendimento ao cliente                                       |\n|                                                                    |\n| Apaixonada por café e música                                       |\n|                                                                    |\n| Rápida, criativa e sempre com uma boa conversa pronta              |\n|                                                                    |\n| Experiência anterior:                                              |\n|                                                                    |\n| Atendente em café local                                            |\n|                                                                    |\n| Tutora de inglês e música para crianças                            |\n|                                                                    |\n| Compositora nas horas vagas                                        |\n|                                                                    |\n ————————————————————————————————————————————————————————————————————")
		
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
	
}
