import ui {window, run}
import os

fn main() {
	println("\nPrograma inicializado correctamente\n\n");

	window := window(
		width: 800
		height: 600
		title: 'Software'
	);

	run(window);

}