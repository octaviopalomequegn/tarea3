class Nodo
	attr_accessor :value, :siguiente
  	def initialize(value)
      		@value = value
  	end
end

class LinkedList
  
  	def initialize (head)
      		@head = head
      		@tamano = head
  	end

  	def insert(agregar)
      		@tamano.siguiente = agregar
      		@tamano = @tamano.siguiente
  	end

  	def delete(numero)
    		anterior = @head
		temporal = @head
    		if temporal.value == numero
      			@head = temporal.siguiente
    		else
      			while (temporal != nil && temp.value != numero)
       				anterior = temporal
       				temporal = temporal.siguiente
      			end
      		if (temporal != nil && temporal.value == numero)
        		anterior.siguiente = temporal.siguiente
      		else puts "No se encontro el valor"
      		end
    		end
  	end

  	def print
      		temporal = @head
      		String cadena = ""
      		while temporal != nil
          		cadena.concat(temporal.value)
          		cadena.concat(", ")
          		temporal = temporal.siguiente
      		end
      		cadena = cadena[0...-1]
      		puts cadena
  	end
end

primerVal= gets.chomp
guardado = Nodo.new(primerVal)
list = LinkedList.new(guardado)

loop do 
	input = gets.chomp
	break if input == "-1" 
	list.insert(Nodo.new(input))	
end

list.print
