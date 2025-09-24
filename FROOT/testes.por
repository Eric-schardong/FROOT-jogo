programa
{
	inclua biblioteca Teclado --> tc
	inclua biblioteca Texto --> t
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	funcao inicio()
	{
		
		imagem(500, 700, "papel.png")
		enquanto(verdadeiro)
		{
			
		}
		
	}
	funcao imagem(inteiro DX, inteiro DY, cadeia imagem)
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(DX, DY)
		inteiro imagem_ = g.carregar_imagem(imagem)
		enquanto(tc.tecla_pressionada(27) == falso)
		{
		g.limpar()
		g.desenhar_imagem(0, 0, imagem_)
		g.renderizar()
		}
		g.liberar_imagem(imagem_)
		g.encerrar_modo_grafico()
	}
	funcao video(cadeia video_)
	{
		
	}
}
