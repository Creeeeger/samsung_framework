package org.tukaani.xz;

/* loaded from: classes2.dex */
public class ArrayCache {
    public static volatile ArrayCache defaultCache;
    public static final ArrayCache dummyCache;

    public void putArray(byte[] bArr) {
    }

    static {
        ArrayCache arrayCache = new ArrayCache();
        dummyCache = arrayCache;
        defaultCache = arrayCache;
    }

    public static ArrayCache getDefaultCache() {
        return defaultCache;
    }

    public byte[] getByteArray(int i, boolean z) {
        return new byte[i];
    }
}
