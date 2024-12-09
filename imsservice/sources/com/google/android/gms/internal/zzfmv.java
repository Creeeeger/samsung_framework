package com.google.android.gms.internal;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmv extends zzflm<zzfmv> {
    public String zzpzs = "";
    public String zzpzt = "";
    public long zzpzu = 0;
    public String zzpzv = "";
    public long zzpzw = 0;
    public long zzgoc = 0;
    public String zzpzx = "";
    public String zzpzy = "";
    public String zzpzz = "";
    public String zzqaa = "";
    public String zzqab = "";
    public int zzqac = 0;
    public zzfmu[] zzqad = zzfmu.zzddi();

    public zzfmv() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzfmv zzbi(byte[] bArr) throws zzflr {
        return (zzfmv) zzfls.zza(new zzfmv(), bArr);
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 10:
                    this.zzpzs = zzfljVar.readString();
                    break;
                case 18:
                    this.zzpzt = zzfljVar.readString();
                    break;
                case 24:
                    this.zzpzu = zzfljVar.zzcxz();
                    break;
                case 34:
                    this.zzpzv = zzfljVar.readString();
                    break;
                case 40:
                    this.zzpzw = zzfljVar.zzcxz();
                    break;
                case 48:
                    this.zzgoc = zzfljVar.zzcxz();
                    break;
                case 58:
                    this.zzpzx = zzfljVar.readString();
                    break;
                case 66:
                    this.zzpzy = zzfljVar.readString();
                    break;
                case 74:
                    this.zzpzz = zzfljVar.readString();
                    break;
                case 82:
                    this.zzqaa = zzfljVar.readString();
                    break;
                case MNO.DLOG /* 90 */:
                    this.zzqab = zzfljVar.readString();
                    break;
                case 96:
                    this.zzqac = zzfljVar.zzcya();
                    break;
                case 106:
                    int zzb = zzflv.zzb(zzfljVar, 106);
                    zzfmu[] zzfmuVarArr = this.zzqad;
                    int length = zzfmuVarArr == null ? 0 : zzfmuVarArr.length;
                    int i = zzb + length;
                    zzfmu[] zzfmuVarArr2 = new zzfmu[i];
                    if (length != 0) {
                        System.arraycopy(zzfmuVarArr, 0, zzfmuVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        zzfmu zzfmuVar = new zzfmu();
                        zzfmuVarArr2[length] = zzfmuVar;
                        zzfljVar.zza(zzfmuVar);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzfmu zzfmuVar2 = new zzfmu();
                    zzfmuVarArr2[length] = zzfmuVar2;
                    zzfljVar.zza(zzfmuVar2);
                    this.zzqad = zzfmuVarArr2;
                    break;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
                    break;
            }
        }
    }
}
