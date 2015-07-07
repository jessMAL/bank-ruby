class Account 
    attr_reader :name, :balance
    
    def initialize(name,balance=100)
        @name = name 
        @balance = balance
    end
    
    public 
    def display_balance(pin_number)
        if(pin_number == pin)
            puts "Saldo: #{@balance}."
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number,amount)
        if(pin_number == pin)
            if(@balance < amount)
                puts "Fundos insuficientes!"
            else    
                @balance -= amount
                puts "Retirado $#{amount}. \nNovo saldo: $#{@balance}"
            end
        else
            puts pin_error
        end
    end
    
    def deposit(amount)
        @balance += amount
        puts "Depositado $#{amount}. \nNovo saldo: $#{@balance}"        
    end
    
    private 
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Acesso negado: PIN incorreto."
    end
end

checking_account = Account.new("Jess",1_000_000)
opcao = -1
while (opcao != 0)
    puts "Olá #{checking_account.name}, \nO que deseja fazer?"
    puts "1 - Saque"
    puts "2 - Deposito"
    puts "3 - Saldo"
    puts "0 - Sair"
    opcao = gets.chomp.to_i
    if(opcao == 1)
        puts "Digite a senha:"
        senha = gets.chomp.to_i
        puts "Quanto deseja sacar?"
        valor = gets.chomp.to_i
        checking_account.withdraw(senha, valor)
    elsif (opcao == 2)
        puts "Quanto deseja depositar?"
        valor = gets.chomp.to_i
        checking_account.deposit(valor)
    elsif (opcao == 3)
        puts "Olá, #{checking_account.name}"
        puts "Digite a senha:"
        senha = gets.chomp.to_i
        checking_account.display_balance(senha)
    elsif (opcao == 0)
        break    
    else
        puts "Opção inválida!"
    end
end   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

