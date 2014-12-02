package example;

import static java.lang.Math.pow;
import static java.lang.Math.sqrt;

public class QE {

    private final double a, b, c;

    public QE (double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }
    public double[] solve() {

        double D = pow(b, 2.0) - 4 * a * c;

        if (D == 0) {
            return new double[]{-b / (2 * a)};
        } else if (D < 0) {
                return new double[0];
        } else {double d = sqrt(D);
                return new double[]{
                        (-b - d) / (2 * a),
                        (-b + d) / (2 * a),
                };
        }

    }


}