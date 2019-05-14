#PRUEBA DOS en RUBY (desafio LATAM)
def read_alum(file_name)
    file=File.open(file_name, 'r')
    alum=file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end

def menu
    
    puts "Bienvenido al sistema de entrega de notas de curso G22 \n"
    puts "ingrese una de las siguientes opciones del menú \n"
    puts "1) Listar todos los alumnos y sus promedios: \n"
    puts "2) listar todos los alumnos y su cantidad de inasistencias : \n"
    puts "3) Listar los alumnos que aprobaron el curso, dando la posibilidad de ingresar la nota de aprobacion ( si no es entegada, esta sera 5.0 ): \n"
    puts "4) Salir del sistema de entrega de notas."

end