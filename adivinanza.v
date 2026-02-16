import os
import rand

fn main() {
	
	/* Adivinanza entre 0 y 10 */
	adivinanza_ordenador := rand.intn(10) or {0};

	// println("HACK | Adivinanza de ordenador: {${adivinanza_ordenador}}\n"); /* Por si lo necesitas para ver si el programa va bien */

	intentos_disponibles := 3;

	bucle_juego(adivinanza_ordenador, intentos_disponibles);

}

fn bucle_juego(adivinanza_ordenador int, intentos_disponibles int) {
	mut intentos_disponibles_mut := intentos_disponibles;

	if intentos_disponibles_mut == 0 {
		println("Lo siento, fin del juego, ya no tienes más intentos");
		exit(0);
	}
	entrada_de_usuario := os.input("Introduce adivinar el número entre 0 y 10 (tienes ${intentos_disponibles_mut} intentos): ");

	entrada_de_usuario_int := entrada_de_usuario.int();

	if entrada_de_usuario_int == adivinanza_ordenador {
		println("HAS ADIVINADO | EL NÚMERO POR ADIVINAR ERA: ${adivinanza_ordenador}");

	} else {
		println("Número incorrecto...\n");
		intentos_disponibles_mut -= 1;
		bucle_juego(adivinanza_ordenador, intentos_disponibles_mut);
	}

}