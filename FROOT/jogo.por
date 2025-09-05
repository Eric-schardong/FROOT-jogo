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
			caso 1: historia()
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
		cadeia enter
		limpa()
		escrever_delay("		CAPITULO 1" , 200)
		u.aguarde(250)
		limpa()
		escreva("		CAPITULO 1\n##  ##\n##  ##\n######\n##  ##\n##  ##\n")
		u.aguarde(250)
		limpa()
		escreva("		CAPITULO 1\n##  ##  ## \n##  ## #  #\n###### ####\n##  ## #  #\n##  ## #  #\n")
		u.aguarde(250)
		limpa()
		escreva("		CAPITULO 1\n##  ##  ##  #### \n##  ## #  # ##  #\n###### #### #### \n##  ## #  # ##   \n##  ## #  # ##   \n")
		u.aguarde(250)
		limpa()
		escreva("		CAPITULO 1\n##  ##  ##  ####  #### \n##  ## #  # ##  # ##  #\n###### #### ####  #### \n##  ## #  # ##    ##   \n##  ## #  # ##    ##   \n")
		u.aguarde(250)
		limpa()
		escreva("		CAPITULO 1\n##  ##  ##  ####  ####  #   #\n##  ## #  # ##  # ##  # #   #\n###### #### ####  ####   ####\n##  ## #  # ##    ##       ##\n##  ## #  # ##    ##     ### \n")
		u.aguarde(3500)
		limpa()
		escreva("\n##  ##  ##  ####  ####  #   #\n##  ## #  # ##  # ##  # #   #\n###### #### ####  ####   ####\n##  ## #  # ##    ##       ##\n##  ## #  # ##    ##     ### \n")
		u.aguarde(100)
		limpa()
		escreva("\n##  ## #  # ##  # ##  # #   #\n###### #### ####  ####   ####\n##  ## #  # ##    ##       ##\n##  ## #  # ##    ##     ### \n")
		u.aguarde(100)
		limpa()
		escreva("\n###### #### ####  ####   ####\n##  ## #  # ##    ##       ##\n##  ## #  # ##    ##     ### \n")
		u.aguarde(100)
		limpa()
		escreva("\n##  ## #  # ##    ##       ##\n##  ## #  # ##    ##     ### \n")
		u.aguarde(100)
		limpa()
		escreva("\n##  ## #  # ##    ##     ### \n")
		u.aguarde(300)
		limpa()
		
		escrever_delay("..." , 200)
		escrever_delay("\n 1 de setembro... querido diario, consegui um emprego e hoje vai ser meu primeiro dia\n e eu to muuuuito animada pro atendimento ao publico\n bom, ainda tenho um tempo antes de ir" , 50)
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
