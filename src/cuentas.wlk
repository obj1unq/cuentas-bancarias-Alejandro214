
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
  }
//if(salco<monto) { sd
  //self.error("no hay saldo sufieciente")

object julian {
	var saldo = 0
	method saldo(){
		return saldo
	}
	method depositar(unaCantidadPesos){
		saldo += unaCantidadPesos * 80 /unaCantidadPesos
	}
	method extraer(unaCantidadPesos){
		saldo-= unaCantidadPesos
		saldo-=if(saldo >= 5)5 else 0
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
 
object casa {
  var cuenta 
  var compras = 0
  
 method cuentaQuePaga(_cuenta){
 	 cuenta = _cuenta
 }
 method compra(dinero) {
 	  cuenta.extraer(dinero)
 }
 method esDerrochona(){
 	 return compras > 5000
 }
 method _compras(){
 	return compras
 }
 
}	