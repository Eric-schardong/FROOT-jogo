programa
{
	inclua biblioteca Teclado --> tc
	inclua biblioteca Texto --> t
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	funcao inicio()
	{
		
		nota("Voce ouve tudo e diz sim","sera que ganhara assim?", 500, 700, "papel.png")
		enquanto(verdadeiro){
			
		}
		
	}
	funcao nota(cadeia t1,cadeia t2, inteiro DX, inteiro DY, cadeia imagem)
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(DX, DY)
		inteiro imagem_ = g.carregar_imagem(imagem)
		g.carregar_fonte("royalty_free/Royalty Free.otf") 
		enquanto(tc.tecla_pressionada(27) == falso)
		{
		g.limpar()
		g.desenhar_imagem(0, 0, imagem_)
		g.definir_tamanho_texto(50)
		g.definir_fonte_texto("Royalty Free")
		g.desenhar_texto(60, 100, t1)
		g.desenhar_texto(60, 150, t2)
		g.definir_tamanho_texto(25)
		g.definir_fonte_texto("Arial")
		g.desenhar_texto(20, 640, "ESC para fechar")
		g.renderizar()
		}
		g.liberar_imagem(imagem_)
		g.encerrar_modo_grafico()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */