package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmu extends zzflm<zzfmu> {
    private static volatile zzfmu[] zzpzr;
    public String zzpzs = "";

    public zzfmu() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzfmu[] zzddi() {
        if (zzpzr == null) {
            synchronized (zzflq.zzpvt) {
                if (zzpzr == null) {
                    zzpzr = new zzfmu[0];
                }
            }
        }
        return zzpzr;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzpzs = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }
}
