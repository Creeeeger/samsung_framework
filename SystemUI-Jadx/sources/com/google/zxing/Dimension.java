package com.google.zxing;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Dimension {
    public final int height;
    public final int width;

    public Dimension(int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            this.width = i;
            this.height = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Dimension)) {
            return false;
        }
        Dimension dimension = (Dimension) obj;
        if (this.width != dimension.width || this.height != dimension.height) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public final String toString() {
        return this.width + "x" + this.height;
    }
}
