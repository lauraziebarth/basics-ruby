def da_boas_vindas
    puts
    puts "        P  /_\\  P                              "
    puts "       /_\\_|_|_/_\\                            "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao     "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação! "
    puts "  |' '  |  |_|  |'  ' |                         "
    puts "  |_____| ' _ ' |_____|                         " 
    puts "        \\__|_|__/                              "

    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "Começaremos o jogo para você, #{nome}"
    puts "\n"
end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end

def pede_dificuldade
    puts "Qual o nivel de dificuldade que deseja?"
    puts "(1) muito fácil (2) fácil (3) normal (4) difícil (5) impossível"
    puts "\n"
    puts "Escolha: "
    dificuldade = gets.to_i 
end 

def sorteia_numero_secreto(dificuldade)
    case dificuldade 
    when 1  
        maximo = 30
    when 2 
        maximo = 60
    when 3 
        maximo = 100
    when 4 
        maximo = 150
    else 
        maximo = 200
    end
    puts "\n"
    puts "Escolhendo um número secreto entre 1 e #{maximo}..."
    sorteado = rand(maximo) + 1
    puts "\n"
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    puts "\n"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}" 
    puts "Entre com o número"
    chute = gets.strip
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        ganhou
        return true
    end
    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
    false
end

def joga(dificuldade)
    numero_secreto = sorteia_numero_secreto(dificuldade)

    pontos_ate_agora = 1000
    limite_de_tentativas = 5
    chutes = []
    
    for tentativa in 1..limite_de_tentativas
        chute = pede_um_numero chutes, tentativa, limite_de_tentativas
        chutes << chute 
    
        pontos_a_perder = (chute - numero_secreto).abs / 2.0
        pontos_ate_agora -= pontos_a_perder
        
        if verifica_se_acertou numero_secreto, chute
            break
        end
    end
    
    puts "Você ganhou #{pontos_ate_agora} pontos."
end    

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    nao_quero_jogar = gets.strip
    nao_quero_jogar.upcase == 'N'  
end

da_boas_vindas
dificuldade = pede_dificuldade

loop do
    joga dificuldade
    if nao_quer_jogar?
        break
    end
end