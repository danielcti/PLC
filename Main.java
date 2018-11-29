package pkg;

public class Main {

    public static void main(String[] args) {
        Menu menu = new Menu();
        double pesoAtual = 0;
        double pesoMax = menu.welcome();
        int opt = 0;
        int animal;
        String localizacao;
        double peso;
        double preco_por_kg;
        Carne animais[] = new Carne[100];
        int index = 0;
        while(pesoAtual < pesoMax) {
        	while(opt < 1 || opt >2) {
        		opt = menu.opcoes();	
        	}
        	if(opt == 2) // sair
        		break;
        	
        	animal = menu.tipoAnimal();
        	localizacao = menu.localizacao(animal);
        	peso = menu.getPeso();
        	preco_por_kg = menu.getPreco();
        	if(pesoAtual + peso > pesoMax) //Estorou o limite, nao adiciona
        		break;
        	if(animal == 2) { // FRANGO
        		Frango f = new Frango(peso, preco_por_kg, localizacao);
        		animais[index] = f;
        	}else if(animal == 1) { // BOI
        		Boi b = new Boi(peso, preco_por_kg, localizacao);
        		animais[index] = b;
        	}
        	pesoAtual += peso;
        	index++;
        	opt = 0;
        }
        System.out.println("Até mais Jovem Gafanhoto!");
        System.out.println("Peso total de carne : " + pesoAtual);
        menu.imprimeInfo(animais);
        System.out.println(animais[0].getChurrasco());
        animais = null;
    }

}