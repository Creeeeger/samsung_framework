package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzflo implements Cloneable {
    private static final zzflp zzpvn = new zzflp();
    private int mSize;
    private boolean zzpvo;
    private int[] zzpvp;
    private zzflp[] zzpvq;

    zzflo() {
        this(10);
    }

    private zzflo(int i) {
        this.zzpvo = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzpvp = new int[idealIntArraySize];
        this.zzpvq = new zzflp[idealIntArraySize];
        this.mSize = 0;
    }

    private static int idealIntArraySize(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        return i2 / 4;
    }

    private final int zznb(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzpvp[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzflo zzfloVar = new zzflo(i);
        System.arraycopy(this.zzpvp, 0, zzfloVar.zzpvp, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            zzflp zzflpVar = this.zzpvq[i2];
            if (zzflpVar != null) {
                zzfloVar.zzpvq[i2] = (zzflp) zzflpVar.clone();
            }
        }
        zzfloVar.mSize = i;
        return zzfloVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzflo)) {
            return false;
        }
        zzflo zzfloVar = (zzflo) obj;
        int i = this.mSize;
        if (i != zzfloVar.mSize) {
            return false;
        }
        int[] iArr = this.zzpvp;
        int[] iArr2 = zzfloVar.zzpvp;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            }
            if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            zzflp[] zzflpVarArr = this.zzpvq;
            zzflp[] zzflpVarArr2 = zzfloVar.zzpvq;
            int i3 = this.mSize;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!zzflpVarArr[i4].equals(zzflpVarArr2[i4])) {
                    z2 = false;
                    break;
                }
                i4++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzpvp[i2]) * 31) + this.zzpvq[i2].hashCode();
        }
        return i;
    }

    final void zza(int i, zzflp zzflpVar) {
        int zznb = zznb(i);
        if (zznb >= 0) {
            this.zzpvq[zznb] = zzflpVar;
            return;
        }
        int i2 = ~zznb;
        int i3 = this.mSize;
        if (i2 < i3) {
            zzflp[] zzflpVarArr = this.zzpvq;
            if (zzflpVarArr[i2] == zzpvn) {
                this.zzpvp[i2] = i;
                zzflpVarArr[i2] = zzflpVar;
                return;
            }
        }
        if (i3 >= this.zzpvp.length) {
            int idealIntArraySize = idealIntArraySize(i3 + 1);
            int[] iArr = new int[idealIntArraySize];
            zzflp[] zzflpVarArr2 = new zzflp[idealIntArraySize];
            int[] iArr2 = this.zzpvp;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            zzflp[] zzflpVarArr3 = this.zzpvq;
            System.arraycopy(zzflpVarArr3, 0, zzflpVarArr2, 0, zzflpVarArr3.length);
            this.zzpvp = iArr;
            this.zzpvq = zzflpVarArr2;
        }
        int i4 = this.mSize;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.zzpvp;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            zzflp[] zzflpVarArr4 = this.zzpvq;
            System.arraycopy(zzflpVarArr4, i2, zzflpVarArr4, i5, this.mSize - i2);
        }
        this.zzpvp[i2] = i;
        this.zzpvq[i2] = zzflpVar;
        this.mSize++;
    }

    final zzflp zzmz(int i) {
        zzflp zzflpVar;
        int zznb = zznb(i);
        if (zznb < 0 || (zzflpVar = this.zzpvq[zznb]) == zzpvn) {
            return null;
        }
        return zzflpVar;
    }
}
