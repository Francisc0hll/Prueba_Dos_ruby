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

def promedio_alumnos(arreglo)
    arreglo.each_with_index do |elemento, index|
        suma = 0
        elemento.each_with_index do |elem, indice|
            suma += elem.to_i if indice != 0
        end
        puts "Alumno : #{elemento[0]}, Promedio : #{suma.to_f/(elemento.length-1)} \n"
    end
end

arreglo_alumnos = read_alum('alumnos.csv')

opcion = 0

while opcion != 4
    menu
    opcion = gets.chomp.to_i
    
    case opcion
        
    when 1
        promedio_alumnos(arreglo_alumnos)
    when 2
        
    when 3
        
    when 4
        puts "salio de sistema de notas de curso.\n Adios."
    else
        puts "opcion invalida, ingrese una opcion que corresponda: \n"
    end
end