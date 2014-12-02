package example;

/**
 * Created by Boss on 02.12.14.
 */




    public class Solve {
        double a, b, c,x1, x2;
    public int i;
        public String rez;


        public Solve(double a, double b, double c) {
            this.a = a;
            this.b = b;
            this.c = c;
        }
        public double[] solve() {
            double d = (b * b) - (4 * a * c);
            if (d < 0) {
                x1=0;
                return new double []{x1};

            }
            if (d == 0) {
                x1 = (-b) / (2 * a);

                return new double []{x1};
            } else {
                x1 = (-b + Math.sqrt(d)) / (2 * a);
                x2 = (-b - Math.sqrt(d)) / (2 * a);
                return new double [] {x1,x2};
            }



        }
        }

