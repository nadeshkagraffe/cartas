class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_reader :numero_cuenta, :vip

    def initialize(nombre_de_usuario, numero_cuenta, vip = 0)
        if numero_cuenta.digits.count == 8
            @nombre_de_usuario = nombre_de_usuario
            @numero_cuenta = numero_cuenta
            @vip = vip  
        else
        raise RangeError, 'ERROR!!  el numero de cuenta debe contener 8 digitos'
        end
    end

    def numero_de_cuenta
        if self.vip == 1
          "1-#{self.numero_cuenta}"
        else
          "0-#{self.numero_cuenta}"
        end
    end
end

bci = CuentaBancaria.new('Juan',12345678,1)
puts bci.numero_de_cuenta

banco_estado = CuentaBancaria.new('Patricia',87654321)
puts banco_estado.numero_de_cuenta

bbva = CuentaBancaria.new('Patricia',123)