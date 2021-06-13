/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analyzer;

import java.io.File;

/**
 *
 * @author intellisys
 */
public class index {
    public static void main(String[] args) {
        String route = "/Users/intellisys/NetBeansProjects/AnalizadorLexico/src/analyzer/rules.flex";
        generateRules(route);
    }
    public static void generateRules(String route) {
        File file = new File(route);
        JFlex.Main.generate(file);
    }
}
