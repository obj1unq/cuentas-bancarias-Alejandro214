
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
	

}

object julian {
	var saldo = 100
	method saldo(){
		return saldo
	}
	method depositar(unaCantidadPesos){
		saldo += unaCantidadPesos * 80 /unaCantidadPesos
	}
	method extraer(unaCantidadPesos){
		saldo-= unaCantidadPesos
		saldo-=if(saldo >= 5) 5 else 0
	}
}

object papa {
	var saldoEnDolares = 0
	method saldo(){
		return saldoEnDolares * self.precioCompra()
	}
	method depositar(unaCantidadPesos){
		saldoEnDolares += unaCantidadPesos/self.precioVenta()
	}
	method extraer(unaCantidadPesos){
		saldoEnDolares-= unaCantidadPesos/self.precioCompra()
	}
	method precioCompra(){
		return 15.70
	}
	method precioVenta(){
		return 15.10
	}
	}
	