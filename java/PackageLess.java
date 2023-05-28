public class PackageLess {
    String message;
    
    PackageLess(String message) {
        this.message = message;
    }   

    String value() { return message; }

    static class Tester {
        void run() {
            System.out.println(new PackageLess("Hello World!").value());
        }
    }

    public static void main(String[] args) {
        new Tester().run();
    }    
}
