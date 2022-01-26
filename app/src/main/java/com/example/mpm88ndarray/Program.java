package com.example.mpm88ndarray;

import java.util.Map;

public class Program {
    private Kernel[] kernels;
    private Ndarray[] ndarrays;

    public Program(Kernel[] kernels, Ndarray[] ndarrays) {
        this.kernels = kernels;
        this.ndarrays = ndarrays;
    }

    public Kernel[] getKernels() {
        return kernels;
    }

    public Ndarray[] getNdarrays() { return ndarrays; }
}
