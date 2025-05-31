import bicicletas.*

class Deposito {
  const bicis =  []

  method agregarBicis(listaDeBicis){
    if(listaDeBicis.any({b=>b.contains(b)})){
       // self.error("no se puede agreagr 2 veces una bici al deposito")
       throw new Exception(message="nno se puede agreagr 2 veces una bici al deposito")
    }
    if(listaDeBicis.any({bici => listaDeBicis.occurrencesOf(bici) > 1 })){
         self.error("hay bicis dupicadas dentro de la lista de las nuevas bicis")
    }

    bicis.add(listaDeBicis)
  }
}