def da_boas_vindas
    puts
    puts "        P  /_\\  P                              "
    puts "       /_\\_|_|_/_\\                            "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao     "
    puts "   |_|_|nnnn nnnn|_|_|         Jogo da Forca!   "
    puts "  |' '  |  |_|  |'  ' |                         "
    puts "  |_____| ' _ ' |_____|                         " 
    puts "        \\__|_|__/                              "

    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n"
    puts "Começaremos o jogo para você, #{nome}."
    puts "\n"
    nome
end

def desenha_forca(erros)
    cabeca = "   "
    corpo = " "
    bracos = "   "
    pernas = "   "
    if erros >= 1
        cabeca = "(_)"
    end
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{cabeca}  "
    puts " |      #{bracos}  "
    puts " |       #{corpo}  "
    puts " |      #{pernas}  "
    puts " |              "
    puts "_|___           "
    puts

end

def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "\n\n"
    desenha_forca erros
    puts "Palavra secreta: #{mascara}"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end

def avisa_escolhendo_palavra
    puts "Escolhendo uma palavra secreta..."
end

def avisa_palavra_escolhida(palavra_secreta)
    puts "Palavra secreta com #{palavra_secreta.size} letras... Boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    nao_quero_jogar = gets.strip
    nao_quero_jogar.upcase == "N"
end

def pede_um_chute
    puts "Entre com uma letra ou uma palavra: "
    chute = gets.strip.downcase
    chute
end

def avisa_chute_repetido(chute)
    puts "Você já chutou #{chute}"
end 

def avisa_letra_nao_encontrada
    puts "Letra não encontrada."
end

def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes."
end 

def avisa_acertou_palavra
    puts "\nParabéns, você ganhou!"
    puts

    puts "       ___________      "
    puts "      '._==_==_=_.'     "
    puts "      .-\\:      /-.    "
    puts "     | (|:.     |) |    "
    puts "      '-|:.     |-'     "
    puts "        \\::.    /      "
    puts "         '::. .'        "
    puts "           ) (          "
    puts "         _.' '._        "
    puts "        '-------'       "
    puts
end 

def avisa_errou_palavra
    puts "Que pena, errou!"
end 

def avisa_pontos(pontos_ate_agora)
    puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_pontos_totais(pontos_totais)
    puts "Você possui #{pontos_totais} pontos!"
end

def avisa_campeao_atual(dados)
    puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end 