import 'package:flutter/material.dart';

class Pagina1Page extends StatefulWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  State<Pagina1Page> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1Page> {
  int posicaoArtigo = 0;

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("")),
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Internet e Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Samara Lopes Ninahuaman",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Psicóloga do Colégio Adventista da Granja Viana",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "21 de Setembro de 2017",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Recentemente fiz uma pesquisa perguntando aos pais de minha escola quais assuntos gostariam que fossem trabalhados. Um dos que mais apareceu foi a questão dos malefícios do uso excessivo da internet. \nAcho bastante interessante pensar sobre este assunto, já que é bastante atual e pode ser tanto uma gigantesca ferramenta para o crescimento como pode ser a tragédia na vida de muitas pessoas.\nA internet chegou não faz muito tempo, surgiu no período da Guerra Fria, com o objetivo de servir como meio de comunicação caso os outros meios mais convencionais fossem destruídos por um ataque.\nTambém era utilizada por estudantes e professores universitários para troca de ideias, mensagens e descobertas científicas. Popularizou-se somente em 1990 quando o engenheiro inglês Tim Bernes-Lee desenvolveu o tão conhecido Worl Wide Web (www) utilizado para acessar sites com todo tipo de conteúdo disponível.\nA internet teve uma expansão muito acelerada, pois resolvia rapidamente aparentemente qualquer problema e facilitava a vida de todo mundo.\nHoje em dia você pode fazer compras sem sair de casa, receber seu produto vindo do outro lado do mundo por um preço muito mais acessível.\nPode realizar pesquisas em qualquer área e se tornar um especialista sem sair de casa. Augusto Cury, um escritor famoso comenta que “hoje, uma criança de sete anos tem mais informação do que um imperador romano”.\nPode estudar a distancia, ter acesso a diversos vídeos com tutoriais de faça você mesmo, estudar línguas, ter noticias sobre o mundo todo em tempo real e sem gastar um centavo.\nPode se entreter com series e filmes, jogos, tanto de forma gratuita como paga.\nPode ate mesmo ter um bichinho virtual caso seu apartamento não aceite animais.\nPode conversar e ver um parente, amigo que mora em outro país como se estivessem os dois na mesma sala, conhecer pessoas de outros países e outras culturas sem precisar viajar longas distâncias.\nUma pessoa tímida e retraída pode falar livremente sem precisar mostrar sua insegurança através de um chat de relacionamentos.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '"A internet e as tecnologias possuem muitos pontos positivos.\nPorém, também possuem pontos negativos."\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Hoje em dia, você pode acessar conteúdo violento a qualquer momento do dia, que muitas vezes não precisava ser visto, e que pode gerar ansiedade e insegurança.\nPode acessar conteúdo não indicado para sua faixa etária, e desenvolver vícios que podem perdurar pela vida inteira prejudicando relacionamentos importantes.\nPode estar acessível e a mercê de pessoas mal intencionadas que geralmente se passam por pessoas atenciosas e interessadas demais na sua vida. Se colocando em situações perigosas.\nPode ser viciante fingir ser outra pessoa e nunca mostrar o seu realmente eu para alguém. Com o tempo você vai se acostumando com essa mascara e começa a acreditar de verdade que ela é melhor do que você jamais seria capaz de ser.\nA internet tanto nos notebooks como nos smartphones pode ser viciante com suas pequenas recompensas que não possuem um valor real, como um like no facebook, ou seguidores no instagram.\nTambém pode ser um gerador de ansiedade, com os constantes avisos de mensagem. Geralmente as pessoas passam 15 minutos ou menos sem checar o celular atrás de alguma novidade, e geralmente se sentem ansiosas por poderem estar perdendo algo, ate que olham o celular e aliviam a tensão, mesmo não tendo nenhuma notificação realmente importante. Estão constantemente em estado de alerta e as notificações do celular as fizeram ficar assim. Isso atrapalha muito na concentração e também pode levar a sintomas físicos como aumento de pressão, dos níveis de cortisol, como o psicólogo Dr. Larry Rosen da Universidade do estado da Califórnia vem estudando recentemente.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '"E o pior de todos em minha opinião."\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Pode esquecer-se de viver plenamente com todos os sentidos, experimentando o mundo apenas através de uma tela e ensinar esse comportamento para seus filhos.\nVocê já parou para pensar por que é tão nocivo para o desenvolvimento de uma criança/adolescente ter um pai/mãe depressivo?\nA depressão é um assunto tão vasto que seria melhor trabalhar em outra ocasião, mas de forma bastante resumida ela causa esse afastamento, esse desligamento da realidade, deixa você preso em outro momento, outra circunstância, quase tão nociva quanto à ansiedade, faz com que você não consiga se conectar verdadeiramente ao outro.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '"Uma pesquisa feita com pais que utilizavam muito o celular tinham filhos com os mesmos efeitos colaterais de pais que sofriam de depressão?"\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Nossas tecnologias têm facilitado nos relacionarmos com o mundo inteiro em um click, porém tem nos afastado daqueles que estão tão próximos.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '"Afinal o que é relacionar-se?\nComo podemos ensinar nossas crianças a se relacionar, se pouco sabemos sobre a textura do outro, seu cheiro, seu tom de pele, sua voz?"\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Depois de muito pensar sobre o assunto, chego à conclusão de que a internet não é nociva aos nossos filhos, ela é apenas uma ferramenta neutra, a forma como é utilizada que vai determinar sua qualidade.\nE quem a utiliza somos nós: Pais, Professores, Sociedade. Nossos filhos estão de olho em como estamos utilizando a internet e estão imitando nossos comportamentos.\nAlgo esperado dentro do processo de desenvolvimento, quando pedimos que arrumem seus quartos, sejam gentis e educados, mas que esquecemos que também ocorre nos comportamentos compulsivos de comer, usar as tecnologias, entre outros.\nEu particularmente me preocupo muito mais com todos os momentos que me pego olhando o celular sem um motivo maior ao invés de estar brincando ou observando os comportamentos das crianças sob minha responsabilidade.\nA internet e as tecnologias são prejudiciais quando elas afetam o meu relacionamento interpessoal direto, aquele que esta ali do meu lado, querendo interagir, chamando minha atenção de todas as formas possíveis.\nPrecisamos dar atenção para o que realmente importa, estabelecer prioridades, saber quando dizer não, quando desligar o celular, a televisão, o notebook, e simplesmente olhar nos olhos do outro ser humano que precisa ser visto para existir, que precisa ser notado para se sentir amado e que precisa se relacionar para aprender a se relacionar.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Algumas dicas para pais e filhos:\n",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "• Estabeleça horários específicos para usar e tenha sempre em mente o objetivo para o qual escolheu utilizar a Internet/tecnologias.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "• Esteja sempre atento ao que você realmente precisa e o que está empurrando para você comprar nos diversos ads que aparecem em sites, Facebook, Aplicativos e E-mails.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "• Busque diariamente um momento para estar off-line e realmente se conectar com quem está ao seu redor.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "• Sempre que for postar algo, uma foto, um texto ou uma informação sobre você ou sua família na Internet, pense duas vezes e tenha em mente que o que está na rede não sai mais da rede e pode ter consequências eternas que podem afetar sua vida off-line.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "• Ao invés de checar o Facebook para saber as novidades na vida de alguém, gaste 5 minutos e ligue para essa pessoa, escute ela contar em primeira mão os ocorridos, isso vai fazer com que ela se sinta mais feliz e amada do que apenas recebendo um like na rede social.\n",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '"A vida é muito boa e passa muito rápido para vivermos apenas parte de toda a experiência que poderíamos viver!"\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
