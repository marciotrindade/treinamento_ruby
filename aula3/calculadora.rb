class Calculadora
  def soma(a, b)
    a + b
	  #fail ArgumentError, "Invalid parameters" if (a.to_i == 0 || b.to_i == 0)
    #a.to_i + b.to_i
  end

  def divide(a, b)
	#begin
		a / b
	#rescue
    #raise Exception, "Nao pode fazer essa divisao"
	#exit
	#end
  end

  def multiplica(a, b)
    a * b
  end

  def subtrai(a, b)
    a - b
  end
end
