package org.tukaani.xz;

import java.io.InputStream;

/* loaded from: classes2.dex */
public class DeltaOptions extends FilterOptions {
    public int distance = 1;

    public DeltaOptions(int i) {
        setDistance(i);
    }

    public void setDistance(int i) {
        if (i < 1 || i > 256) {
            throw new UnsupportedOptionsException("Delta distance must be in the range [1, 256]: " + i);
        }
        this.distance = i;
    }

    @Override // org.tukaani.xz.FilterOptions
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new DeltaInputStream(inputStream, this.distance);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
