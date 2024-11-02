package kotlinx.coroutines.internal;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AtomicDesc {
    public AtomicOp atomicOp;

    public abstract void complete(AtomicOp atomicOp, Object obj);

    public abstract Object prepare(AtomicOp atomicOp);
}
