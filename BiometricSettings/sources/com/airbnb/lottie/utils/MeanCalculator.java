package com.airbnb.lottie.utils;

/* loaded from: classes.dex */
public final class MeanCalculator {
    private int n;

    public final void add() {
        int i = this.n + 1;
        this.n = i;
        if (i == Integer.MAX_VALUE) {
            this.n = i / 2;
        }
    }
}
