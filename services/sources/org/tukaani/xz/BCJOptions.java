package org.tukaani.xz;

/* loaded from: classes2.dex */
public abstract class BCJOptions extends FilterOptions {
    public final int alignment;
    public int startOffset = 0;

    public BCJOptions(int i) {
        this.alignment = i;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
