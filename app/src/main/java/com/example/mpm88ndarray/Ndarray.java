package com.example.mpm88ndarray;

public class Ndarray {
    private String name;
    private String type;
    private int row;
    private int col;
    private int dim;
    private int ssbo;
    private int shape;
    public boolean init;

    public Ndarray(String name, String type, int dim, int shape, int row, int col) {
        this.name = name;
        this.type = type;
        this.dim = dim;
        this.shape = shape;
        this.row = row;
        this.col = col;
        this.init = false;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public int getDim() {
        return dim;
    }

    public int getSsbo() {
        return ssbo;
    }

    public void setSsbo(int ssbo) {
        this.ssbo = ssbo;
    }

    public void setShape(int shape) {
        this.shape = shape;
    }

    public int getShape() {
        return shape;
    }

    public int getRow() {
        return row;
    }

    public int getCol() {
        return col;
    }
}
