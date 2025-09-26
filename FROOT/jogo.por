programa
{
	inclua biblioteca Sons --> m
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> tc
	inclua biblioteca Texto --> t
	inclua biblioteca Graficos --> g
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
			trocar_musica("HK.mp3")
			carregar(3)
				escrever_delay("         CAPITULO 1" , 100)
				u.aguarde(250)           
				escrever_delay("\n    A ESTRADA DE MOWGLI", 50)
				u.aguarde(2500)	
				limpa()
				
				escrever_delay("..." , 50)
				escrever_delay("1 de setembro... querido diario, consegui um emprego e hoje vai ser meu primeiro dia\n e eu to muuuuito animada pro atendimento ao publico\n bom, ainda tenho um tempo antes de ir" , 50)
				leia(enter)
				limpa()
				escrever_delay("COMO GOSTARIA DE PASSAR O TEMPO?\n" , 50)
				escreva("  [1]ver TV  [2]ler um livro")
				leia(input)
				limpa()
				escolha(input)
				{
					caso 1:
						escreva("[1]Entrevista com Anja Rubik [2]She-Ra")
						leia(input)
						escolha(input)
						{
							caso 1:
							limpa()
							escrever_delay("[Entrevistadora] Estamos hoje com uma garota polaca que vive na america\n",50)
							escrever_delay("[Entrevistadora] Alta, bronzeada, gostosa, loira\n",50)
							escrever_delay("[Entrevistadora] A Anja Rubik!\n",50)
							u.aguarde(50)
							escrever_delay("[Entrevistadora] Conte Anja, por que voce gostaria de ser uma mulher de hollywood?\n",50)
							u.aguarde(50)
							escrever_delay("[Anja Rubik] Por que eu nao quero acabar tendo uma vida mediocre\n",50)
							leia(enter)
							pare
						}
					pare
					caso 2:
					escrever_delay("*Um livro da estante chama minha atencao\n\"comer o mundo\"", 25)
					trocar_musica("ETW.mp3")
					u.aguarde(9000)
					escrever_delay("eu era o tipo de garota que engolia o mundo\n", 46)
					pare
				}
				limpa()
				escrever_delay("[Marina] Oh, o tempo passou rapido, hora de ir para o trabalho...\n" , 50)
				leia(enter)
				limpa()
				escrever_delay("*Marina anda calmamente pois saiu cedo de casa\naproveita o passeio para observar onde passa*\n" , 50)
				escrever_delay("*Ela ve uma loja de antiguidades com um lindo relogio cuco na vitrine*\n", 50)
				leia(enter)
				limpa()
				escrever_delay("*Marina entao chega ao trabalho onde e recebida calorosamente por seu chefe*\n" , 50)
				escrever_delay("[Chefe] Por que chegou tao tarde?!\n" , 50)
				escrever_delay("[Marina] Mas eu cheguei na hora certa-\n",50)
				escrever_delay("[Chefe] Nao quero saber!\n" , 50)
				escrever_delay("[Chefe] Se apresse e comece a trabalhar.\n" , 50)
				escrever_delay("[Marina] Sim senhor...\n",50)
				escreva("\n'Enter' para prosseguir")
				leia(enter)
				limpa()
				escrever_delay("*um cliente entra no estabelecimento e se dirige ao balcao para ser atendido*\n",50)
				escrever_delay("[Cliente]: oh meu deus! voce e igualzinha a Shakira!\n" , 50)
				u.aguarde(100)
				escrever_delay("[Cliente]: nao nao... voce e a Catherine Zeta!\n" , 50)
				u.aguarde(200)
				escrever_delay("[??????]: na verdade... meu nome e Marina" , 70)
				limpa()
				escreva("*um cliente entra no estabelecimento e se dirige ao balcao para ser atendido*\n[Cliente]: oh meu deus, voce e igualzinha a Shakira!\n[Cliente]: nao nao... voce e a Catherine Zeta!\n[Marina]: na verdade... meu nome e Marina\n")
				u.aguarde(100)
				escrever_delay("[Cliente]: oh...\n" , 50)
				u.aguarde(100)
				escrever_delay("[Marina]: ...o senhor gostaria de fazer um pedido?\n" , 60)
				u.aguarde(100)
				escrever_delay("[Cliente]: ah sim! \n" , 50)
				minigame(u.sorteia(0,4),u.sorteia(0,5),u.sorteia(0,2), verdadeiro, falso)
				u.aguarde(200)
				limpa()
				escrever_delay("*Mais um cliente entra*\n",50)
				escrever_delay("[Cliente]: Boa tarde.\n" , 50)
				minigame(u.sorteia(0,4),u.sorteia(0,5),u.sorteia(0,2), falso, verdadeiro)
				escrever_delay("[Marina]: O que?!\n" , 60)
				escrever_delay("[Marina]: Mas eu fiz tudo certo!\n" , 60)
				escrever_delay("[Cliente]: Quero falar com o gerente do estabelecimento!\n" , 50)
				escrever_delay("[Marina]: ...Sim senhora...\n" , 60)
				leia(enter)
				limpa()
				escrever_delay("[Chefe] Posso saber qual o problema aqui?\n" , 50)
				escrever_delay("[Cliente]: Sua funcionaria errou o pedido inteiro!\n" , 50)
				escrever_delay("[Marina]: Senhor eu fiz tudo cer-\n" , 60)
				escrever_delay("[Chefe]: Como pode errar algo tao simples?!\n" , 50)
				escrever_delay("[Chefe]: Isso sera descontado de seu salario e caso aconteca novamente sera despedida!\n" , 50)
				escrever_delay("[Marina]: Entendo senhor...\n" , 60)
				leia(enter)
				limpa()
				escrever_delay("*Apos um longo dia de trabalho Marina anda de volta pra casa*\n" , 50)
				escrever_delay("[Marina]:Isso vai ser muito mais dificil do que pensei...\n", 70)
				escrever_delay("*Marina deita sua cabeca no travesseiro e lentamente fecha os olhos...*", 80)
				u.aguarde(500)
				trocar_musica("MgR.mp3")
				limpa()
				escrever_delay("...\n", 25)
				u.aguarde(300)
				escrever_delay("*Marina abre os olhos e se encontra em uma floresta*,\n", 50)
				escrever_delay("*Ao olhar ao redor marina encontra uma placa apontada para uma estrada escura e um papel no chao*\n", 50)
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				
				
				enquanto(input != 3)
				{
				escreva("[1]Ver placa		[2]Ver papel\n		[3]seguir pela estrada")
				leia(input)
					escolha(input)
					{
						caso 1: 
						limpa()
						imagem(736, 490, "placa.jpeg")
						pare
						
						caso 2: 
						limpa()
						imagem(500, 700, "papernote1.png")
						pare
					}
				}
				limpa()
				escrever_delay("Marina lentamente anda pela estrada\n", 50)
				escrever_delay("A floresta era escura e o caminho nao parecia ter fim\n", 50)
				escrever_delay("Em algumas arvores tinha aqueles relogios cuco pendurados\n", 50)
				escreva("\n'ENTER' para contiuar")
				leia(enter)
				limpa()
				escrever_delay("Marina encontra mais um papel semelhante ao anterior.\n", 50)
				imagem(500, 700, "papernote2.png")
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				escrever_delay("[Marina] Esses bilhetes nao tem sentido algum... colheres?... garfo?...\n", 50)
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				escrever_delay("Marina decide continaur a andar pela estrada\n", 50)
				escrever_delay("Cuco!\n[Marina] Ah!\n", 50)
				escrever_delay("Dentro de um unico relogio cuco funcionando cai outro papel\n", 50)
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				imagem(500, 700, "papernote3.jpeg")
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				escrever_delay("[Marina] ...O que?... esses bilhetes fazem cada vez menos sentido... nao parecem se encaixar entre si...\n", 50)
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				escrever_delay("Enquanto Marina anda pela estrada ela escuta um barulho distante atras dela, como metal batendo no chao\n", 50)
				escrever_delay("Ao olhar para traz na distancia algo refletia... eram colheres...\n", 50)
				escrever_delay("10  colheres de prata que pareciam estar indo em direcao a Marina\n", 50)
				escrever_delay("Marina corre o mais rapido que pode, mas suas pernas estavam estranhas estavam bambas e ela sentia como se suas pernas fossem feitas de papel\n", 50)
				escreva("'ENTER' para contiuar\n")
				leia(enter)
				limpa()
				escrever_delay("Marina encontra dois caminhos um dos caminhos havia garfos, no outro facas\nqual caminho voce segue?\n", 50)
				escreva("[1]Garfos			[2]Facas\n")
				leia(input)
				escolha(input)
				{
					caso 1:
					limpa()
					escrever_delay("...\n",100)
					u.aguarde(500)
					escrever_delay("Os garfos atacam Marina furando suas pernas\n", 50)
					escrever_delay("Marina ve as colheres se aproximando e...\n", 50)
					u.aguarde(500)
					pare

					caso 2:
					limpa()
					escrever_delay("Marina rapidamente segue pelo caminho que as facas apontam\n",50)
					escrever_delay("Marina se esconde dentro de um tronco serrado pelas facas...\n", 50)
					escreva("'ENTER' para contiuar\n")
					leia(enter)
					limpa()
					escrever_delay("As colherem nao demoram para chegar...",50)
					escrever_delay("Sao metalmente cruéis e cavaram o caminho pelos seus sonhos...\n",50)
					escreva("'ENTER' para contiuar\n")
					leia(enter)
					limpa()
					escrever_delay("Marina assiste de dentro do tronco\n",50)
					u.aguarde(200)
					escrever_delay("As colheres derrubam as facas e matam a sangue frio...\n",200)
					escrever_delay("Marina assiste a cena com pavor...\n",50)
					escrever_delay("[Colher] Vamos te levar para o caminho abandonado.\n",100)
					escreva("'ENTER' para contiuar\n")
					leia(enter)
					limpa()
					pare
				}
				escrever_delay("Marina acorda em seu quarto novamente\n", 50)
				escrever_delay("Que sonho estranho...\n", 50)
				
				caso 2:
				trocar_musica("HK.mp3")
				carregar(3)
			inteiro bonus_vd = 0,bonus_df = 0,bonus_dn = 0,bonus_vlc = 0
			escrever_delay("		CAPITULO 2" , 200)
			u.aguarde(250)
			escrever_delay("\n            	SELVAGENS", 50)
			u.aguarde(2500)	
			limpa()
	
	
			escrever_delay("*aos poucos marina abre os olhos novamente* \n *o trabalho aparentemente foi mais cansativo que o previsto*", 50)
			u.aguarde(100)
			escrever_delay(" \n*Ela se levanta e vai ate a frente da televisao , onde comeca a passar o jornal local:*", 50)
			u.aguarde(100)
			escrever_delay(" \n ...  \n*Marina comeca a ver a noticia que esta passando,e o que ela ve eh pior do que esperava..*",50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
			escrever_delay("\n [jornalista]: \"boa noite,ontem a noite recebemos uma denuncia proxima do centro da cidade\"", 50)
			u.aguarde(100)
			escrever_delay("\n [jornalista]: \"por volta da meia noite,uma garota foi encontrada jogada na rua com varios hematomas\"", 50)
			u.aguarde(150)
			escrever_delay("\n [jornalista]: \"conversamos com algumas destemunhas e elas dizeram que ela vinha sofrendo diversos ataques\"", 50)
			u.aguarde(200)
			escrever_delay("\n [jornalista]: \"a maioria vindo de sua propria casa e familiares...\"", 50)
			u.aguarde(100)
			leia(enter)
			limpa()
	
			escrever_delay(" \n*o jornalista comeca a contar e detalhar todas as coisas que aconteciam com aquela garota.*", 50)
			u.aguarde(100)
			escrever_delay("\n*para marina,os seres humanos sempre foram mals de alguma forma..seres selvagens disfarçados.*", 50)
			u.aguarde(300)
			escrever_delay("\n*mas vendo isso..com uma garotinha inocente e ainda no local onde era pra ser um local seguro..*", 50)
			u.aguarde(100)
	
			escreva("\n VOCE QUER CONTINUAR ASSISTINDO? \n [1] sim    [2]nao")
			leia(input)
			limpa()
	
			escolha(input)
			{
				caso 1:
	
			escrever_delay("\n*a cada segundo que passa,e mais detalhes sao dados,a crenca de marina de quao selvagens os humanos sao so almenta*", 50)
			u.aguarde(200)
			escrever_delay("\n*marina comeca a sentir um leve enjoo e uma dor de cabeca vendo e pensando em tudo que a garota passou.*", 50)
			u.aguarde(100)
			escrever_delay("\n*ela acaba nao indo ao trabalho hoje..seu unico objetivo e se deitar novamente e tentar dormir.*", 50)
			u.aguarde(100)
			leia(enter)
			limpa()
			pare
	
			caso 2:
	
			
			
			escrever_delay("\n*marina rapidamente desliga a tv,tentando tirar tudo aquilo de sua cabeca.Ela se levante e se arruma para o trabalho.*", 50)
			u.aguarde(200)
			escrever_delay("\n*enquato anda ate seu trabalho,ela fica constantemente olhando seu arredor..aquelas cenas realmente se fixaram em sua cabeca..*", 50)
			u.aguarde(100)
			escrever_delay("\n*e se tiver alguem assim por perto??? e se virem atras de mim??? eh tudo que passou em sua cabeca o dia inteiro.*", 50)
			u.aguarde(100)
			escrever_delay("\n*o dia de trabalho passa como um borrao,ela faz o que deve ser feito o mais rapido possivel so pensando em chegar em casa.*", 50)
			u.aguarde(100)
			escrever_delay("\n*o caminho pra casa eh tao paranoico quanto a ida,ate que marina chega em sua casa e se tranca,indo direto pra cama.*", 50)
			u.aguarde(100)
			leia(enter)
			limpa()
			pare
			}
	
			escrever_delay("\n*Marina deita sua cabeca no travesseiro e lentamente fecha os olhos...*", 100)
			u.aguarde(300)
			leia(enter)
			limpa()
			trocar_musica("Sava.mp3")
			escrever_delay("\n*marina lentemente acorda novamente...*", 100)
			u.aguarde(100)
			escrever_delay("\n*mas ela nao esta mais em casa...*", 50)
			u.aguarde(100)
			escrever_delay("\n*ela acorda em um tipo de floresta escura,onde aos fundos se ouvem grunidos e barrulhos que espreitam aquela area..*", 50)
			u.aguarde(100)
			escrever_delay("\n*marina,mesmo que tremendo um pouco se levanta*", 50)
			u.aguarde(100)
			leia(enter)
	
			escrever_delay("\n*a primeira coisa que marina ve em sua frente eh uma divisao entre dois caminhos...*", 50)
			u.aguarde(100)
			escrever_delay("\n\nQUAL CAMINHO VOCE QUER SEGUIR? \n   [1] esquerda     [2]direita ", 50)
			leia(input)
			u.aguarde(100)
			limpa()
	
			escolha(input)
			{
				caso 1:
				escrever_delay("\n*ela segue pela sua esquerda,passando pelas arvores da densa floresta...*", 50)
			u.aguarde(100)
				escrever_delay("\n*ate que ela olha para o chao e se depara com uma lamina enferrujada*", 50)
			u.aguarde(100)
				escrever_delay("\n*voce pega ela... \n voce ganha +2 de dano em batalha*", 50)
			u.aguarde(100)
			bonus_dn = 2
		pare
				caso 2:
				escrever_delay("\n*marina segue pela sua direita,passando pela floresta*", 50)
				u.aguarde(100)
				escrever_delay("\n*ate que ela sem querer tropeca em algo..um par de botas velhas*", 50)
				u.aguarde(100)
				escrever_delay("\n*ela acaba percebendo que estava descalca,e sem muita opcao,veste a bota*", 50)
				u.aguarde(100)
				escrever_delay("\n*voce ganhou +2 de velocidade em batalha*", 50)
				u.aguarde(100)
				bonus_vlc = 2
	pare			
			}
			leia(enter)
			limpa()
	
			escrever_delay("\n*derrepente enquanto marina seguia seu caminho...os sons de dentro da floresta comecam a se intensificar...*", 50)
				u.aguarde(100)
				escrever_delay("\n*de dentro da mata sai um animal selvagem,o que parecia ser um tipo de lobo...*", 50)
				u.aguarde(100)
				escrever_delay("\n*de qualquer modo...ela se prepara para a batalha...*", 50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
				batalha("animal selvagem", 15, 3, 8, 20, bonus_vd, bonus_df, bonus_dn, bonus_vlc)
				leia(enter)
				limpa()
	
				escrever_delay("\n*ao derrotar o inimigo,marina pega a camisa que ele estava usando e amarra em seu braco...*", 50)
				u.aguarde(100)
				escrever_delay("\n*voce ganha +2 de defesa*", 50)
				u.aguarde(100)
				bonus_df = 2
	
				escrever_delay("\n*quanto mais fundo ela vai ela comeca a ouvir varios sons distorcidos*", 50)
				u.aguarde(100)
				escrever_delay("\n*alguns parecidos com grunidos,uivos so que todos abafados por algum tipo de...voz*", 50)
				u.aguarde(100)
				escrever_delay("\n*junto com isso..vozes desesperadas implorando por socorro...*", 50)
				u.aguarde(100)
				escrever_delay("*implorando para aquilo parar...*", 100)
				u.aguarde(200)
				leia(enter)
				limpa()
	
				escrever_delay("\n*marina desesperadamente tampa seus ouvidos,andando cada vez mais rapido para sair dali logo..*", 50)
				u.aguarde(100)
				escrever_delay("\n*mas logo a frente dela..ela ve mais uma daquelas criaturas,agora encurralando uma bem menor e indefesa *", 50)
				u.aguarde(100)
				escrever_delay("\n*vendo aquilo marina nao se segura e parte pra cima da criatura...*", 50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
				batalha("animal selvagem", 20, 4, 10, 20, bonus_vd, bonus_df, bonus_dn, bonus_vlc)
				leia(enter)
				limpa()
	
				escrever_delay("\n*marina derrota a critatura,que foge para dentro da mata novamente.*", 50)
				u.aguarde(100)
				escrever_delay("\n*ela anda ate a criatura antes encurralada,que ainda esta tremendo...*", 50)
				u.aguarde(100)
				escrever_delay("\n*marina se agacha,pegando ela em seu colo,tranquilizando a criatura *", 50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
				escrever_delay("\n*pela primeira vez,marina senta uma leveza em sua consciencia.*", 50)
				u.aguarde(100)
				escrever_delay("\n*as vozes que antes a atormentavam por tras das arvores agora estao ficando mais fracas*", 50)
				u.aguarde(100)
				escrever_delay("\n*Marina olha para a criatura em seus bracos,e derrepente comeca a ouvir uma voz...*", 50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
				escrever_delay("\n[???]:Um homem constroi bomba...outro corre pela vida de alguem...", 50)
				u.aguarde(100)
				escrever_delay("\n[???]:so para que mesmo com todos seus esforco,ver tudo explodir em voce...", 50)
				u.aguarde(100)
				escrever_delay("\n[???]:seria isso um instito de sobrevivencia,ou algo que pode ser aprendido?", 50)
				u.aguarde(100)
				escrever_delay("\n[???]:voce faz isso por si mesmo,ou por algo muito maior?", 50)
				u.aguarde(100)
				leia(enter)
				limpa()
	
				escrever_delay("\n*aquelas palavras de certo modo abrem algo na mente de marina..*", 50)
				u.aguarde(100)
				escrever_delay("\n*ela lentamente comeca a ver uma luz no horizonte.*", 50)
				u.aguarde(100)
				escrever_delay("\n*ela chega ate la...finalmente saindo daquele lugar...*", 50)
				u.aguarde(100)
				
			caso 3:
			trocar_musica("HK.mp3")
			carregar(3)
			escrever_delay("      CAPITULO 3\n", 50)
			escrever_delay("       SEM FOME\n",60)
			u.aguarde(4000)
			limpa()
			escrever_delay("Marina acorda com uma ligacao de seu chefe... mas decido desligar\n",90)
			escrever_delay("Marina olha para a janela e observa a chuva e um pouco de seu reflexo quase invisivel...\n",90)
			escrever_delay("Era como se fosse a primeira vez que Marina se sentia como ela mesma...\n",90)
			u.aguarde(4500)
			trocar_musica("AnotherRoad.mp3")
			escrever_delay("[Marina] Pode ser que tenha outra estrada pra mim\n", 70)
			escrever_delay("[Marina] Ou pode ser que eu tenha errado...\n", 70)
			escrever_delay("[Marina] Acho que eu nao sou quem eu queria ser\n", 70)
			escrever_delay("[Marina] Agora meus sonhos se vão\n", 70)
			escrever_delay("[Marina] Não há pra que se apressar\n", 70)
			escrever_delay("[Marina] O tempo do meu lado está\n", 70)
			escrever_delay("[Marina] Não há preucupação\n", 70)
			escrever_delay("[Marina] Hora de me acalmar\n", 70)
			u.aguarde(8000)
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
		escreva("     /   \n ###/### \n#       #\n#       #\n #     # \n  #####  \nCARREGANDO")
		u.aguarde(500)
	     limpa()
		escreva("     /   \n ###/### \n#      ##\n#     #  \n #     # \n  #####  \nCARREGANDO")
		u.aguarde(500)
	     limpa()
		escreva("     /  \n ###/###\n#     ##\n#    #  \n #    # \n  ##### \nCARREGANDO")	
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
			se(input == "d")
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
			trocar_musica("NHAM.mp3")
			escreva("_______________________________________\n")
			escreva("|                                     |\n")
			escreva("| CAPITULO 3:                         |\n")
			escreva("| SEM FOME                            |\n")
			escreva("| sentindo-me cada vez mais eu        |\n")
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
		escreva("[a]anterior          [d]proximo")
	}
	funcao minigame(inteiro nbase , inteiro nfruta , inteiro nextra, logico tutorial, logico golpe){
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
		}
		
		
		escreva("[Cliente] gostaria de um drink com a base de ",bases[nbase],". sabor ",frutas[nfruta],". e mais ",extra[nextra],"\n")
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

		se(golpe == falso)
		{
		escolha(acertos)
		{
			caso 3:
			escreva("[Cliente] Esta perfeito, muito obrigado!")
			pare
			caso 2:
			escreva("[Cliente] Poderia ser um pouco melhor...")
			pare
			caso 1:
			escreva("[Cliente] Nao foi isso que eu pedi...")
			pare
		}
		}
		senao
		{
			escreva("[Cliente] Nao foi isso que eu pedi!")
		}
		escreva("\naperte ENTER para continuar")
		leia(enter)
		limpa()
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
	funcao batalha(cadeia nome_inimigo, inteiro vida, inteiro dano, inteiro defesa, inteiro velocidade,inteiro bonus_vida,inteiro bonus_defesa,inteiro bonus_dano,inteiro bonus_velocidade)
    {
        // Estados de combate
        logico marina_defendendo = falso, inimigo_defendendo = falso
        logico marina_esquiva = falso, inimigo_esquiva = falso

        // Atributos fixos e iniciais
      
        inteiro vida_inicio = vida
        inteiro defesa_padrao = defesa
        inteiro vida_marina = 20 + bonus_vida 
        inteiro defesa_marina = 10 + bonus_defesa
        inteiro dano_marina = 6
        inteiro velocidade_marina = 20 
        inteiro input

        enquanto (vida > 0 e vida_marina > 0)
        {
            // Reinício de turnos
            defesa_marina = 15
            marina_defendendo = falso
            marina_esquiva = falso
            u.aguarde(1000)

            // Exibe status atual
            escreva("          MARINA                                  ",nome_inimigo,"\n")
            escreva(" -----------------------                   --------------------------\n")
            escreva("  vida = ",vida_marina,"                                 vida = ",vida,"\n")
            escreva("  dano = 1d",dano_marina,"                                dano = 1d",dano,"\n")
            escreva("  defesa = ",defesa_marina,"                               defesa = ",defesa,"\n")
            escreva("  velocidade = ",velocidade_marina,"                           velocidade = ",velocidade,"\n")
            escreva(" ------------------------                   --------------------------\n")

            // Escolha do jogador
            escreva("\n[1] ATACAR       [2] DEFENDER   [3] ESQUIVAR   \n")
            leia(input)
            limpa()

            // Ação do jogador
            escolha(input)
            {
                caso 1:
                    inteiro acerto_marina = u.sorteia(1, velocidade_marina) + bonus_velocidade
                    inteiro marinadano_causado = u.sorteia(1, dano_marina) + bonus_dano
                    inteiro danoem_inimigodef = marinadano_causado - 2

                    se (acerto_marina >= defesa e inimigo_defendendo)
                    {
                        se (danoem_inimigodef < 0)
                        {
                            danoem_inimigodef = 0
                        }
                        escreva("Você atacou ",nome_inimigo," mas ele estava defendendo! Seu dano foi: ",danoem_inimigodef,"\n")
                        vida = vida - danoem_inimigodef
                    }
                    senao se (acerto_marina >= defesa e inimigo_esquiva)
                    {
                        escreva(nome_inimigo," tentou esquivar, mas você foi mais rápido! Seu dano foi: ",marinadano_causado + 3,"\n")
                        vida = vida - (marinadano_causado + 3)
                    }
                    senao se (acerto_marina >= 18)
                    {
                        escreva("Você acertou um ataque crítico em ",nome_inimigo,"! Seu dano foi: ",marinadano_causado * 2, "\n")
                        vida = vida - (marinadano_causado * 2)
                    }
                    senao se (acerto_marina >= defesa)
                    {
                        escreva("Você acertou ",nome_inimigo,"! Seu dano foi: ",marinadano_causado ,"\n")
                        vida = vida - marinadano_causado
                    }
                    senao
                    {
                        escreva("Você tentou atacar ",nome_inimigo," mas errou!\n")
                    }
                pare

                caso 2:
                    marina_defendendo = verdadeiro
                    escreva("Você está defendendo! Irá receber menos dano até o próximo turno.\n")
                pare

                caso 3:
                    marina_esquiva = verdadeiro
                    defesa_marina = defesa_marina + 3
                    escreva("Você está tentando esquivar! Terá mais defesa, mas sofrerá dano adicional se for atingida.\n")
                pare


                caso contrario:
                    escreva("Opção inválida.\n")
                pare
            }
u.aguarde(1000)
            // Ação do inimigo
            defesa = defesa_padrao
            inimigo_defendendo = falso
            inimigo_esquiva = falso

            inteiro input_inimigo = u.sorteia(1, 3)

            escolha(input_inimigo)
            {
                caso 1: // Inimigo ataca
                    inteiro acerto_inimigo = u.sorteia(1, velocidade)
                    inteiro inimigo_dano = u.sorteia(1, dano)
                    inteiro dano_marinadef = inimigo_dano - 2

                    se (acerto_inimigo >= defesa_marina e marina_defendendo)
                    {
                        se (dano_marinadef < 0)
                        {
                            dano_marinadef = 0
                        }
                        escreva(nome_inimigo," te acertou, mas você estava defendendo! Você levou: ",dano_marinadef," de dano\n")
                        vida_marina = vida_marina - dano_marinadef
                    }
                    senao se (acerto_inimigo >= defesa_marina e marina_esquiva)
                    {
                        escreva(nome_inimigo," te acertou apesar da esquiva! Você levou dano adicional: ",inimigo_dano + 3,"\n")
                        vida_marina = vida_marina - (inimigo_dano + 3)
                    }
                    senao se (acerto_inimigo == 20)
                    {
                        escreva(nome_inimigo," acertou um ataque crítico! Você levou: ",inimigo_dano * 2," de dano!\n")
                        vida_marina = vida_marina - (inimigo_dano * 2)
                    }
                    senao se (acerto_inimigo >= defesa_marina)
                    {
                        escreva(nome_inimigo," te acertou! Você levou: ",inimigo_dano," de dano\n")
                        vida_marina = vida_marina - inimigo_dano
                    }
                    senao
                    {
                        escreva(nome_inimigo," tentou te atacar, mas errou!\n")
                    }
                pare

                caso 2: // Inimigo defende
                    inimigo_defendendo = verdadeiro
                    escreva(nome_inimigo," está se defendendo!\n")
                pare

                caso 3: // Inimigo tenta esquivar
                    inimigo_esquiva = verdadeiro
                    defesa = defesa + 3
                    escreva(nome_inimigo," está tentando esquivar!\n")
                pare
            }
       
         // Fim da batalha
        se (vida <= 0)
        {
            escreva("\nVocê venceu o inimigo ", nome_inimigo, "!\n")
        }
        senao se (vida_marina <= 0)
        {
            escreva("\nVocê foi derrotada por ", nome_inimigo, "...\n")
            escrever_delay("\n TENTAR NOVAMENTE? \n [1] sim    [2] nao", 50)
            leia(input)

            escolha(input)
            {
            	caso 1:
            	vida_marina = 20
            	vida = vida_inicio
           
            caso 2:
            menu()
            }
        			
        			
        }

       
        }
    }
}
