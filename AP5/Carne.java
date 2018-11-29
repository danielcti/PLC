package pkg;

abstract class Carne {
    protected double peso;
    protected double preco_por_kg;
    protected String local;
    
    public Carne(double peso_p, double preco_por_kg_p, String local_p){
        this.peso = peso_p;
        this.preco_por_kg = preco_por_kg_p;
        this.local = local_p;
    }
    public abstract String getChurrasco();
    
    public void printParameters() {
    	System.out.println("Peso : " + this.peso);
    	System.out.println("Preco por quilo : " + this.preco_por_kg);
    	System.out.println("Local : " + this.local);
    }
}