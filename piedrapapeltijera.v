import os
import rand

fn main() {
	mut opciones := ["Piedra", "Papel", "Tijeras"];

	opcion_usuario := os.input("Introduce Piedra, Papel o Tijeras: ");

	opcion_cpu := opciones[rand.intn(opciones.len) or {0}];

	println("El ordenador eligió esta opción: ${opcion_cpu}");


	/* EL USUARIO GANA Y EL ORDENADOR PIERDE PIERDE */

	if opcion_cpu == opcion_usuario {
		println("Empate | Los dos hemos elegido la misma opción");

	} else if opcion_cpu == "Tijeras" && opcion_usuario == "Piedra" {
		println("El usuario ha ganado | El usuario ha elegido ${opcion_usuario} y el ordenador eligió ${opcion_cpu}");

	} else if opcion_cpu == "Papel" && opcion_usuario == "Tijera" {
		println("El usuario ha ganado | El usuario ha elegido ${opcion_usuario} y el ordenador eligió ${opcion_cpu}");

	} else if opcion_cpu == "Piedra" && opcion_usuario == "Papel" {
		println("El usuario ha ganado | El usuario ha elegido ${opcion_usuario} y el ordenador eligió ${opcion_cpu}");


	/* EL USUARIO PIERDE Y EL ORDENADOR GANA */


	} else if opcion_cpu == "Tijeras" && opcion_usuario == "Papel" {
		println("El ordenador ha ganado | El ordenador ha elegido ${opcion_cpu} y el usuario eligió ${opcion_usuario}");

	} else if opcion_cpu == "Papel" && opcion_usuario == "Piedra" {
		println("El ordenador ha ganado | El ordenador ha elegido ${opcion_cpu} y el usuario eligió ${opcion_usuario}");

	} else if opcion_cpu == "Piedra" && opcion_usuario == "Tijeras" {
		println("El ordenador ha ganado | El ordenador ha elegido ${opcion_cpu} y el usuario eligió ${opcion_usuario}");

	
	/* Entrada de usuario incorrecta */


	} else {
		println("Entrada incorrecta | Revisa tu entrada, debe ser: (Piedra, Papel, Tijeras) y la primera letra en mayúscula");
	}


}