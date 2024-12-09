package com.google.android.gms.internal;

import com.google.android.gms.internal.zzflm;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzflm<M extends zzflm<M>> extends zzfls {
    protected zzflo zzpvl;

    protected final boolean zza(zzflj zzfljVar, int i) throws IOException {
        zzflp zzmz;
        int position = zzfljVar.getPosition();
        if (!zzfljVar.zzlg(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzflu zzfluVar = new zzflu(i, zzfljVar.zzao(position, zzfljVar.getPosition() - position));
        zzflo zzfloVar = this.zzpvl;
        if (zzfloVar == null) {
            this.zzpvl = new zzflo();
            zzmz = null;
        } else {
            zzmz = zzfloVar.zzmz(i2);
        }
        if (zzmz == null) {
            zzmz = new zzflp();
            this.zzpvl.zza(i2, zzmz);
        }
        zzmz.zza(zzfluVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzdck, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        zzflq.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzdcl */
    public /* synthetic */ zzfls clone() throws CloneNotSupportedException {
        return (zzflm) clone();
    }
}
