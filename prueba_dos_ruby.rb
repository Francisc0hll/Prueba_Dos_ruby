#PRUEBA DOS en RUBY (desafio LATAM)
def read_alum(file_name)
    file=File.open(file_name, 'r')
    alum=file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end

def menu
    
    
    puts "\nBienvenido al sistema de entrega de notas de curso G22 \n"
    puts "########################################################\n"
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

def cantidad_inasistencias(arreglo)
    arreglo.each_with_index do |elemento, index|
        contador_inasistencias = 0
        elemento.each_with_index do |elem, indice|
            contador_inasistencias += 1 if elem == 'A' && indice != 0
        end
        puts "Alumno : #{elemento[0]}, tiene : #{contador_inasistencias} inasistencias \n"
    end
end

def alumnos_aprobados(arreglo, nota_aprobacion = 5.0)
    arreglo.each_with_index do |elemento, index|
        promedio = 0
        suma = 0
        elemento.each_with_index do |elem, indice|
            suma += elem.to_i if indice != 0
        end
        promedio = suma.to_f/(elemento.length-1)
        if promedio >= nota_aprobacion
            puts "Alumno : #{elemento[0]} Aprobo con nota : #{promedio}\n"
        end
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

        cantidad_inasistencias(arreglo_alumnos)

    when 3

        aux_nota = 0
        puts "\n \t ingrese nota de aprobacion, si no es ingresada por defecto sera un 5.0 \n"
        aux_nota = gets.chomp.to_f
        if aux_nota != 0.0
            alumnos_aprobados(arreglo_alumnos,aux_nota)
        else
            alumnos_aprobados(arreglo_alumnos)
        end
        
    when 4

        puts "salio de sistema de notas de curso.\n Adios."

    else

        puts "opcion invalida, ingrese una opcion que corresponda: \n"

    end
end