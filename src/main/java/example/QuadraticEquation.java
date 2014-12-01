package example;

import example.exceptions.AnyXException;

import static java.lang.Math.*;

/**
 * Квадратное уравнение
 */
public class QuadraticEquation {
    /**
     * Точность вычислений
     */
    private static final double EPS = 1e-15;

    /**
     * Коэффициенты уравнения
     */
    private final double a, b, c;

    public QuadraticEquation(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    /**
     * Решение уравнения
     *
     * @return решения уравнения (список x)
     */
    public double[] solve() throws AnyXException {
        if (abs(a) < EPS) {
            if (abs(b) < EPS) {
                if (abs(c) < EPS) {
                    throw new AnyXException("x-любое");
                }
                return new double[0];
            }
            return new double[]{-c / b};
        }
        double D = pow(b, 2.0) - 4 * a * c;
        if (abs(D) < EPS)
            return new double[]{-b / (2 * a)};
        if (D < 0)
            return new double[0];

        double d = sqrt(D);
        return new double[]{
                (-b - d) / (2 * a),
                (-b + d) / (2 * a),
        };
    }

    /**
     * Значение в точке x
     *
     * @param x аргумент
     * @return значение
     */
    public double calc(double x) {
        return a * pow(x, 2.0) + b * x + c;
    }
}
