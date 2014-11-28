package example;

import example.exceptions.AnyXException;
import org.junit.Assert;
import org.junit.Test;

/**
 * Тестирование класса, который решает квадратные уравнения
 */
public class QuadraticEquationTest extends Assert {
    /**
     * Точность проверки решения
     */
    public static final double EPS = 1e-15;

    /**
     * Проверка вычисления функции в точке
     */
    @Test
    public void testCalc() {
        QuadraticEquation equation = new QuadraticEquation(1, 2, 3);
        assertEquals(1 + 2 + 3, equation.calc(1.0), EPS);
        assertEquals(1 * 2 * 2 + 2 * 2 + 3, equation.calc(2.0), EPS);
    }

    @Test
    public void testSolve() throws AnyXException {
        assertEquals(1, check(1.0, 0.0, 0.0));
        assertEquals(0, check(1.0, 2.0, 3.0));
        assertEquals(1, check(1.0, -2.0, 1.0));
        assertEquals(2, check(1.0, -2.0, 0.8));

        assertEquals(1, check(0.0, 1.0, 0.8));
        assertEquals(1, check(0.0, -2.0, 0.8));

        assertEquals(0, check(0.0, 0.0, 0.8));

        try {
            assertEquals(1, check(0.0, 0.0, 0.0));
            fail("Должно быть исключение");
        } catch (AnyXException ex) {
            assertEquals("x-любое", ex.getMessage());
        }
    }

    /**
     * Проверка, что все корни уравнения действительно являются корнями (дают значение 0)
     *
     * @param a коэффициент перед x^2
     * @param b коэффициент перед x
     * @param c свободный член
     * @return количество корней
     */
    private int check(double a, double b, double c) throws AnyXException {
        QuadraticEquation equation = new QuadraticEquation(a, b, c);
        // Корни уравнения
        double[] roots = equation.solve();
        // Проверка всех x
        for (double x : roots) {
            assertEquals(0.0, equation.calc(x), EPS);
        }
        return roots.length;
    }

}
