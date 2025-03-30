//Alumno: Uriel Bove

class Materia{
  const nombre
  const correlativas = [Materia]

  method chequearCorrelativas(alumno) = correlativas.all{correlativa => alumno.estaAprobada(correlativa)}
}

class Inscripcion{
  const materiasDeseadas = [Materia]
  const alumno

  method aprobada() = materiasDeseadas.all({materia => materia.chequearCorrelativas(alumno)})
}

class Alumno{
  const nombre
  const apellido
  const materiasAprobadas = [Materia]

  method estaAprobada(materia) = materiasAprobadas.contains(materia)
}