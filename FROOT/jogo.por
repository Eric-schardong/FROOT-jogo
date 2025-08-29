programa
{
	inclua biblioteca Sons --> m
	inclua biblioteca Util --> u
	inteiro volume = 100
	inteiro froot[] = {m.carregar_som("INTRO.mp3")}
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
		logo("          ")
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
		limpa()
		escreva("Escolha sua froota: ")
		escreva("\n\n")
		escreva("    \\V/           \n")	        
		escreva("    \\V/       \\|  \n")
		escreva("    ###      ## ## \n") 
		escreva("   # ###    # #  ##\n")
		escreva("  ###   #    # # # \n")
		escreva("  #   ###     # #  \n")
		escreva("   #####       #   \n")
		escreva("[1]Abacaxi [2]Uva  \n")
		escreva("—————————— ————————\n")







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
	funcao logo(cadeia espaco)
	{
	escreva(espaco,"#### #####    ###  ###  ######\n")
	escreva(espaco,"##   ##  ## ##   ##   ##  ##\n")
	escreva(espaco,"#### #####  #    #     #  ##\n")
	escreva(espaco,"##   ## ##  ##   ##   ##  ##\n")
	escreva(espaco,"##   ##  ##   ###  ###    ##\n")
	}
}
