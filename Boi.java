package pkg;

public class Boi extends Carne {
    public Boi(double peso_p, double preco_por_kg_p, String local_p){
        super(peso_p, preco_por_kg_p, local_p);
        // System.out.println("Boi construido");
    }
    
    public String getChurrasco(){
        String dica = " ";
        if(this.local.equals("Coxa"))
            dica = "A carne bovina encontrada na coxa é a Picanha, sendo feita ao alho, na propria gordura, na churrasqueira ou na chapa, sempre fica bom!";
        else if(this.local.equals("Traseiro"))
            dica = "Famoso contra-file, carne muito comum em receitas com os mais variados molhos, mas em churrasco você pode deixar ela marinando em um pouco" 
            + "de oleo vegetal e sal grosso por 20 mim e depois partir para o espeto.";
        else if(this.local.equals("Costela"))
            dica = "Feito na churrasqueira com sal grosso a gosto, sem misterios.";
        return dica;
    }
}