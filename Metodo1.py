from pulp import LpProblem, LpVariable, LpMinimize, LpStatus, makeDict, LpInteger

prob = LpProblem("Problema de distribución", LpMinimize)

# Creamos lista 
granjas = ["A", "B", "C"]

# diccionario con la capacidad de oferta de cada granja
oferta = {"A": 15,
          "B": 25,
          "C": 10}

# Creamos la lista de los bares o nodos de demanda
almacenes = ["Almacen 1", "Almacen 2", "Almacen 3", "Almacen 4"]

# diccionario con la capacidad de demanda de cada almacen
demanda = {"Almacen 1":5,
           "Almacen 2":15,
           "Almacen 3":15,
           "Almacen 4":15}

# Lista con los costos de transporte de cada nodo
costos = [   #Almacen
         #1  2  3  4 
         [10,2,20,11],#A   
         [12,17,9,20],#B     Granjas
         [4,14,16,18] #C
         ]

# Convertimos los costos en un diccionario de PuLP
costos = makeDict([granjas, almacenes], costos,0)

# Creamos una lista de tuplas que contiene todas las posibles rutas de tranporte.
rutas = [(c,b) for c in granjas for b in almacenes]

# creamos diccionario x que contendrá la candidad enviada en las rutas
x = LpVariable.dicts("ruta", (granjas, almacenes), 
                        lowBound = 0,
                        cat = LpInteger)

# Agregamos la función objetivo al problema
prob += sum([x[c][b]*costos[c][b] for (c,b) in rutas]), \
            "Suma_de_costos_de_transporte"

# Agregamos la restricción de máxima oferta de cada granja al problema.
for c in granjas:
    prob += sum([x[c][b] for b in almacenes]) <= oferta[c], \
            "Suma_de_Productos_que_salen_de_las_granjas_%s"%c

# Agregamos la restricción de demanda mínima de cada almacen
for b in almacenes:
    prob += sum([x[c][b] for c in granjas]) >= demanda[b], \
    "Sum_of_Products_into_Almacen%s"%b
                   
# Los datos del problema son exportado a archivo .lp
prob.writeLP("problemaDeTransporte.lp")

# Resolviendo el problema.
prob.solve()

# Imprimimos el estado del problema.
print("Status: {}".format(LpStatus[prob.status]))

# Imprimimos cada variable con su solución óptima.
for v in prob.variables():
    print("{0:} = {1:}".format(v.name, v.varValue))

# Imprimimos el valor óptimo de la función objetivo   
print("Costo total de transporte = {}".format(prob.objective.value()))



