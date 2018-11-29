package pkg;

public class Frango extends Carne {
    public Frango(double peso_p, double preco_por_kg_p, String local_p){
        super(peso_p, preco_por_kg_p, local_p);
        // System.out.println("Frango construido");
    }
    
    public String getChurrasco(){
        String dica = " ";
        if(this.local.equals("Coração"))
            dica = "Há 2 modos conhecidos de se fazer, com sal somente, ou marinado no molho shouyo e logo após vai na churrasqueira no espeto.";
        else if(this.local.equals("Asa"))
            dica = "Feito na churrasqueira mesmo podendo ser comprada pré-temperada ou não.";
        else if(this.local.equals("Peito"))
            dica = "O peito pode ser feito na churrasqueira sendo ele pré-temperado ou não.";
        return dica;
    }
    
}