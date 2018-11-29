package pkg;
import java.util.Scanner;

public class Menu {
	Scanner reader = new Scanner(System.in);
	public double welcome() {
		System.out.println("Bom dia Jovem Gafanhoto das Carnes!");
        System.out.println("Qual o limite de peso?");
        double peso = 0;
        peso = reader.nextDouble();
        while(peso <= 0) {
        	System.out.println("Valor invalido. Digite novamente!");
        	peso = reader.nextDouble();
        }
        return peso;
	}
	public int opcoes() {
        System.out.println("O que você deseja fazer?");
        System.out.println("1-Adicionar peças de carne.");
        System.out.println("2-Sair.");
        return reader.nextInt();
	}
	public int tipoAnimal() {
		System.out.println("Carne de qual animal?");
		System.out.println("1 - Boi");
		System.out.println("2 - Frango");
		return reader.nextInt();
	}
	public String localizacao(int tipo) {
		if(tipo == 2) // FRANGO
			System.out.println("Diga a localização da carne no animal(Coração, Asa ou Peito):");
		else if(tipo == 1) // BOI
			System.out.println("Diga a localização da carne no animal(Coxa, Traseiro ou Costela):");
	
		return reader.next();
	}
	public double getPeso() {
		System.out.println("Qual o peso da carne em quilos?");
		return reader.nextDouble();
	}
	public double getPreco() {
		System.out.println("Qual o preço da carne por quilo?");
		return reader.nextDouble();
	}
	public void sucesso() {
		System.out.println("Carne adicionada com sucesso!");
	}
	public void imprimeInfo(Carne animais[]) {
		for(int i = 0; animais[i] != null; i++) {
			String className = animais[i].getClass().getName();
			System.out.println("Carne nº " + (i+1));
			if(className.equals("pkg.Boi")) // é boi
				System.out.println("Carne Bovina");
			else if(className.equals("pkg.Frango")) // é frango
				System.out.println("Carne de Ave");
			
			animais[i].printParameters();
			System.out.println(animais[i].getChurrasco());
		}
	}
}
