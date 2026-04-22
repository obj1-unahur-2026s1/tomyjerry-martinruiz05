object tom {
    var energia = 50
    var distanciaRecorrida = 0

    method correr(metros) {
        energia = energia - (metros / 2)
        distanciaRecorrida = distanciaRecorrida + metros
    }

    method comerRaton(raton) {
        energia = energia + (12 + raton.peso())
    }

    method velocidadMaxima() {
        return 5 + (energia / 10)
    }

method energiaQueGastaria(distancia) {
    return distancia / 2
}
method puedeRecorrer(distancia) {
    return energia >= energiaQueGastaria(distancia)
}
method puedeCazar(raton, distancia) {
    return puedeRecorrer(distancia)
}
method cazar(raton, distancia) {
    if (puedeCazar(raton, distancia)) {
        correr(distancia)
    }
}

}


class raton {
    method peso() {
        return 0
    }
   
}

object jerry inherits raton {
    var edad = 2
    
    method cumplirAños() {
        edad = edad + 1
    }
    method peso() {
        return (edad * 20)
    }



  
}

object nibbles inherits raton {
    method peso() {
        return 35
    }
  
} // Inventar otro ratón// Inventar otro ratón