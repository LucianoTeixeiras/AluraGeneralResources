package Aula06_Condicionais;

public class Condicionais01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("Testando Condicionais");

		int idade = 16;
		int quantidadePessoas = 3;

		if (idade >= 18) {

			System.out.println("Voc� tem mais de 1 anos!!!");
			System.out.println("Seja bem vindo!!!");
		} else {
			if (quantidadePessoas >= 2) {
				System.out.println("Voc� � menor de 18 anos, mas pode entrar " + "pois est� acompanhado!!!");
			} else {

				System.out.println("Infelizmente voc� n�o pode entrar!!!");
			}

		}

	}

}
