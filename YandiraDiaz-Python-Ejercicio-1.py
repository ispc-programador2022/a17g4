# Ejercicio 1 - Python:

# 1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

# 28957346,  Juan,  Perez, 4789689,  Belgrano 101

# Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). 
# Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

Dueno = [ 28957346,  "Juan",  "Perez", 4789689,  "Belgrano 101"]

if Dueno[0] > 26000000:
    print("El telefono del dueño es: ", Dueno[3])

