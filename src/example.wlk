/** First Wollok example */
object galvan{
	var salario = 150000
	var dinero = 0
	var deuda = 0
	
	method sueldo(){
		return salario
	}
	
	method cambioSueldo(nuevoImporte){
		salario = nuevoImporte
	}
		
	method cobrarSueldo(){
		if(deuda > 0){
			dinero += (salario - deuda)
			dinero = dinero.max(0)
			deuda -= salario
			deuda = deuda.max(0)
		}
		dinero = dinero + salario
	}
	
	method totalDinero(){
		return dinero
	}
	
	method gastar(cuanto){
		if(dinero <=0){
			deuda += cuanto
		} else{
			dinero -= cuanto
		}
	}
	
	method totalDeuda(){
		return deuda
	}
}

object baigorria{
	var salarioPorEmpanada = 150
	var empanadasVendidas = 0
	var dinero = 0
	var cobrado = 0
	
	method sueldo(){
		return salarioPorEmpanada * empanadasVendidas
	}
	
	method empanadasVendidas(cantidad){
		empanadasVendidas += cantidad
	}
	
	method totalCobrado(){
		return cobrado
	}
		
	method totalDinero(){
		return dinero
	}
	
	method cobrarSueldo(){
		dinero += self.sueldo()
		cobrado += self.sueldo()
	}
	
	method empanadasVendidas(){
		return empanadasVendidas
	}
	
	method nuevoSalario(monto){
		salarioPorEmpanada = monto
	}
}

object gimenez{
	var dinero = 3000000
	
	method pagarA(empleado){
			dinero -= empleado.sueldo()
			empleado.cobrarSueldo()		
	}
}