programa
{
	
inteiro volume = 100
	funcao inicio()
	{
	
		menu()
	}
	funcao menu()
	{
		limpa()
		inteiro input
		escreva("#### #####     ###  ###  ######\n")
escreva("##   ##  ##  ##   ##   ##  ##\n")
escreva("#### #####   #    #     #  ##\n")
escreva("##   ## ##   ##   ##   ##  ##\n")
escreva("##   ##  ##    ###  ###    ##\n")
		escreva("\n[1] Começar   [2]Opçoes\n")
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
		escreva("    Escolha sua froota: ")
		escreva("\n   [1] Maça   [2]Uva\n   [3]Abacaxi\n")
	}
	funcao opcoes()
	{
		inteiro input
		limpa()
		escreva("[0] Voltar \n\n")
		escreva("[1] Volume = ", volume)
		escreva("\n")
		leia(input)
		escolha(input)
		{
			caso 0: menu()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */