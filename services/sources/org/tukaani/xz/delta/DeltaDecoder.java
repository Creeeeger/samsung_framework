package org.tukaani.xz.delta;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class DeltaDecoder {
    public final int distance;
    public final byte[] history = new byte[256];
    public int pos = 0;

    public DeltaDecoder(int i) {
        if (i < 1 || i > 256) {
            throw new IllegalArgumentException();
        }
        this.distance = i;
    }
}
