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

def escolhe_palavra_secreta
    puts "Escolhendo uma palavra secreta..."
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras... Boa sorte!"
    palavra_secreta 
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    nao_quero_jogar = gets.strip
    nao_quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com uma letra ou uma palavra: "
    chute = gets.strip
    chute
end

def avisa_chute_efetuado(chute)
    puts "Você já chutou #{chute}"
end 

def avisa_letra_nao_encontrada
    puts "Letra não encontrada."
end

def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes."
end 

def avisa_acertou_palavra
    puts "Parabéns! Acertou"
end 

def avisa_errou_palavra
    puts "Que pena, errou!"
end 

def avisa_pontos(pontos_ate_agora)
    puts "Você ganhou #{pontos_ate_agora} pontos."
end