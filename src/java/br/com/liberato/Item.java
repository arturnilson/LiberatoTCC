package br.com.liberato;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Artur
 */

public class Item {

    private int id;
    private String descricao;
    private double preco;
    private int qtde;

    public Item() {
    }

    public static List<Item> carrinho = new ArrayList();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQtde() {
        return qtde;
    }

    public void setQtde(int qtde) {
        this.qtde = qtde;
    }

}
