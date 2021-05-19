/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Escola;

/**
 *
 * @author erick
 */
public class Alunos {

    private String nome;
    private int RA;
    private double nota1;
    private double nota2;
    private double nota3;
    private double nota4;
    private double media;

    public Alunos(String nome, int RA, double nota1, double nota2, double nota3, double nota4) {
        this.nome = nome;
        this.RA = RA;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.nota4 = nota4;
    }

    public String getNome() {
        return nome;
    }

    public int getRA() {
        return RA;
    }

    public double getNota1() {
        return nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public double getNota4() {
        return nota4;
    }

    public void setMedia(double nota1, double nota2, double nota3, double nota4) {
        this.media = (nota1 + nota2 + nota3 + nota4) / 4;
    }

    public double getMedia() {
        return media;
    }

}
