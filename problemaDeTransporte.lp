\* Problema_de_distribución *\
Minimize
Suma_de_costos_de_transporte: 10 ruta_A_Almacen_1 + 2 ruta_A_Almacen_2
 + 20 ruta_A_Almacen_3 + 11 ruta_A_Almacen_4 + 12 ruta_B_Almacen_1
 + 17 ruta_B_Almacen_2 + 9 ruta_B_Almacen_3 + 20 ruta_B_Almacen_4
 + 4 ruta_C_Almacen_1 + 14 ruta_C_Almacen_2 + 16 ruta_C_Almacen_3
 + 18 ruta_C_Almacen_4
Subject To
Sum_of_Products_into_AlmacenAlmacen_1: ruta_A_Almacen_1 + ruta_B_Almacen_1
 + ruta_C_Almacen_1 >= 5
Sum_of_Products_into_AlmacenAlmacen_2: ruta_A_Almacen_2 + ruta_B_Almacen_2
 + ruta_C_Almacen_2 >= 15
Sum_of_Products_into_AlmacenAlmacen_3: ruta_A_Almacen_3 + ruta_B_Almacen_3
 + ruta_C_Almacen_3 >= 15
Sum_of_Products_into_AlmacenAlmacen_4: ruta_A_Almacen_4 + ruta_B_Almacen_4
 + ruta_C_Almacen_4 >= 15
Suma_de_Productos_que_salen_de_las_granjas_A: ruta_A_Almacen_1
 + ruta_A_Almacen_2 + ruta_A_Almacen_3 + ruta_A_Almacen_4 <= 15
Suma_de_Productos_que_salen_de_las_granjas_B: ruta_B_Almacen_1
 + ruta_B_Almacen_2 + ruta_B_Almacen_3 + ruta_B_Almacen_4 <= 25
Suma_de_Productos_que_salen_de_las_granjas_C: ruta_C_Almacen_1
 + ruta_C_Almacen_2 + ruta_C_Almacen_3 + ruta_C_Almacen_4 <= 10
Bounds
 0 <= ruta_A_Almacen_1
 0 <= ruta_A_Almacen_2
 0 <= ruta_A_Almacen_3
 0 <= ruta_A_Almacen_4
 0 <= ruta_B_Almacen_1
 0 <= ruta_B_Almacen_2
 0 <= ruta_B_Almacen_3
 0 <= ruta_B_Almacen_4
 0 <= ruta_C_Almacen_1
 0 <= ruta_C_Almacen_2
 0 <= ruta_C_Almacen_3
 0 <= ruta_C_Almacen_4
Generals
ruta_A_Almacen_1
ruta_A_Almacen_2
ruta_A_Almacen_3
ruta_A_Almacen_4
ruta_B_Almacen_1
ruta_B_Almacen_2
ruta_B_Almacen_3
ruta_B_Almacen_4
ruta_C_Almacen_1
ruta_C_Almacen_2
ruta_C_Almacen_3
ruta_C_Almacen_4
End
