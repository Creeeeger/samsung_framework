package org.tukaani.xz.delta;

/* loaded from: classes2.dex */
public abstract class DeltaCoder {
    public final int distance;
    public final byte[] history = new byte[256];
    public int pos = 0;

    public DeltaCoder(int i) {
        if (i < 1 || i > 256) {
            throw new IllegalArgumentException();
        }
        this.distance = i;
    }
}
