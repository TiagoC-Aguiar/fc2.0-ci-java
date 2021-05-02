package com.cursoci;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {

    @Test
    public void deveSomarDoisNumeros() {
        Calculator calc = new Calculator();
        int soma = calc.soma(10, 20);

        assertEquals(30, soma);
    }
}
