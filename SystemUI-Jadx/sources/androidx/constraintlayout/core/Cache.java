package androidx.constraintlayout.core;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Cache {
    public final Pools$SimplePool arrayRowPool;
    public SolverVariable[] mIndexedVariables;
    public final Pools$SimplePool solverVariablePool;

    public Cache() {
        new Pools$SimplePool(256);
        this.arrayRowPool = new Pools$SimplePool(256);
        this.solverVariablePool = new Pools$SimplePool(256);
        this.mIndexedVariables = new SolverVariable[32];
    }
}
