import os

fn main() {

	opcion_de_calculadora := os.input("Introduce la opción de calculadora que quieras (suma|resta|multiplicacion <- sin tildes por favor para el programa | division <- tampoco con tildes): \n");

	num1 := os.input("Introduce el primer número: ");
	num2 := os.input("Introduce el segundo número: ");

	if opcion_de_calculadora == "suma" {
		realizar_suma(num1, num2);

	} else if opcion_de_calculadora == "resta" {
		realizar_resta(num1, num2);

	} else if opcion_de_calculadora == "multiplicacion" {
		realizar_multiplicacion(num1, num2);

	} else if opcion_de_calculadora == "division" {
		realizar_division(num1, num2);
	}
	
}

fn realizar_suma(num1 string, num2 string) {
	suma := num1.int() + num2.int();

	println("Resultado de la suma: ${suma}");

}

fn realizar_resta(num1 string, num2 string) {
	resta := num1.int() - num2.int();

	println("Resultado de la resta: ${resta}");

}

fn realizar_multiplicacion(num1 string, num2 string) {
	multiplicacion := num1.int() * num2.int();

	println("Resultado de la multiplicación: ${multiplicacion}");

}

fn realizar_division(num1 string, num2 string) {
	if num1.int() == 0 || num2.int() == 0 {
		println("ERROR DE DIVISIÓN POR CERO | NO SE PUEDE DIVIDIR POR CERO NINGÚN NUMERO BAJO NINGUNA CIRCUNSTANCIA");

	} else {
		division := num1.int() / num2.int();

		println("Resultado de la división: ${division}");
	}

}