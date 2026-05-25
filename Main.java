public class Main {

    public static int max(int x , int y){
        return Math.max(x, y);
    }
    public static void main(String[] args){
        long [] ia = new long[10001];
        for(int i = 0; i < ia.length; i++){
            ia[i] = i*i;
        }
        long l = 5L;
        /*
        for(int i = 0; i < ia.length; i++){
            System.out.print(ia[i]+" ");
            if(i%10==9){
                System.out.println();
            }
        }
        */
    }

}
