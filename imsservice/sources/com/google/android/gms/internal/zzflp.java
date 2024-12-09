package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class zzflp implements Cloneable {
    private Object value;
    private List<zzflu> zzpvs = new ArrayList();

    zzflp() {
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzq()];
        zza(zzflk.zzbf(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzdcm, reason: merged with bridge method [inline-methods] */
    public zzflp clone() {
        Object clone;
        zzflp zzflpVar = new zzflp();
        try {
            List<zzflu> list = this.zzpvs;
            if (list == null) {
                zzflpVar.zzpvs = null;
            } else {
                zzflpVar.zzpvs.addAll(list);
            }
            Object obj = this.value;
            if (obj != null) {
                if (obj instanceof zzfls) {
                    clone = (zzfls) ((zzfls) obj).clone();
                } else if (obj instanceof byte[]) {
                    clone = ((byte[]) obj).clone();
                } else {
                    int i = 0;
                    if (obj instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) obj;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzflpVar.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (obj instanceof boolean[]) {
                        clone = ((boolean[]) obj).clone();
                    } else if (obj instanceof int[]) {
                        clone = ((int[]) obj).clone();
                    } else if (obj instanceof long[]) {
                        clone = ((long[]) obj).clone();
                    } else if (obj instanceof float[]) {
                        clone = ((float[]) obj).clone();
                    } else if (obj instanceof double[]) {
                        clone = ((double[]) obj).clone();
                    } else if (obj instanceof zzfls[]) {
                        zzfls[] zzflsVarArr = (zzfls[]) obj;
                        zzfls[] zzflsVarArr2 = new zzfls[zzflsVarArr.length];
                        zzflpVar.value = zzflsVarArr2;
                        while (i < zzflsVarArr.length) {
                            zzflsVarArr2[i] = (zzfls) zzflsVarArr[i].clone();
                            i++;
                        }
                    }
                }
                zzflpVar.value = clone;
            }
            return zzflpVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        List<zzflu> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzflp)) {
            return false;
        }
        zzflp zzflpVar = (zzflp) obj;
        if (this.value != null && zzflpVar.value != null) {
            throw null;
        }
        List<zzflu> list2 = this.zzpvs;
        if (list2 != null && (list = zzflpVar.zzpvs) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(toByteArray(), zzflpVar.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    final void zza(zzflk zzflkVar) throws IOException {
        if (this.value != null) {
            throw null;
        }
        for (zzflu zzfluVar : this.zzpvs) {
            zzflkVar.zzmy(zzfluVar.tag);
            zzflkVar.zzbh(zzfluVar.zzjwl);
        }
    }

    final void zza(zzflu zzfluVar) {
        this.zzpvs.add(zzfluVar);
    }

    final int zzq() {
        if (this.value != null) {
            throw null;
        }
        int i = 0;
        for (zzflu zzfluVar : this.zzpvs) {
            i += zzflk.zzmf(zzfluVar.tag) + 0 + zzfluVar.zzjwl.length;
        }
        return i;
    }
}
