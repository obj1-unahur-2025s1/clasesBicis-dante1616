class Bici {
  const rodado = 1
  const largo = 2
  const marca = "bici2"
  const accesorio = #{}

  method altura() = rodado * 2.5 + 15
  method velocidadCruzada() = if(largo > 120) rodado + 6 else rodado +2
  method carga() = accesorio.sum({a => a.carga()})
  method agregarAccesorio(unAccesorio) {accesorio.add(unAccesorio)}    
  method sacarAccesorio(unAccesorio) {accesorio.remove(unAccesorio)}    
  method pesoTotal() = rodado / 2 + self.pesoAccesorio()
  method pesoAccesorio() = accesorio.sum({a =>a.peso()}) 
  method tieneLuz() = accesorio.any({a => a.esLuminosos()}) 
  method consultarCantAccLivianos() = accesorio.count({a => a.peso() < 1})

}

class Farolito {
  method carga() = 0
  method peso() = 0
   method esLuminoso() = true 
}

class Canasto {
  const volumen 
  method peso() = volumen / 10 
  method carga() = volumen * 2  
  method esLuminoso()  = false  

  method initialize() {
    if(volumen.between(1, 20)){
        self.error(volumen.toString() + " no es un valor entre 1 y 20")
    }
  }
}

class Morral {
  const largo 
  var tieneOjoDeGato 

  method ponerOjoDeGato() {
    tieneOjoDeGato = true
  }

  method quitarOjoDeGato() {
    tieneOjoDeGato = false
  }

  method esLuminoso() = tieneOjoDeGato

  method peso() =  1.2

  method carga() = largo / 3
}