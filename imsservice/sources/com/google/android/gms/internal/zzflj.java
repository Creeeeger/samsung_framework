package com.google.android.gms.internal;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzflj {
    private final byte[] buffer;
    private int zzpoc;
    private int zzpoh;
    private int zzpoj;
    private final int zzpom;
    private final int zzpvi;
    private int zzpvj;
    private int zzpvk;
    private int zzpok = Integer.MAX_VALUE;
    private int zzpod = 64;
    private int zzpoe = 67108864;

    private zzflj(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzpvi = i;
        int i3 = i2 + i;
        this.zzpvj = i3;
        this.zzpom = i3;
        this.zzpvk = i;
    }

    private final void zzcyu() {
        int i = this.zzpvj + this.zzpoh;
        this.zzpvj = i;
        int i2 = this.zzpok;
        if (i <= i2) {
            this.zzpoh = 0;
            return;
        }
        int i3 = i - i2;
        this.zzpoh = i3;
        this.zzpvj = i - i3;
    }

    private final byte zzcyv() throws IOException {
        int i = this.zzpvk;
        if (i == this.zzpvj) {
            throw zzflr.zzdcn();
        }
        byte[] bArr = this.buffer;
        this.zzpvk = i + 1;
        return bArr[i];
    }

    private final void zzlk(int i) throws IOException {
        if (i < 0) {
            throw zzflr.zzdco();
        }
        int i2 = this.zzpvk;
        int i3 = i2 + i;
        int i4 = this.zzpok;
        if (i3 > i4) {
            zzlk(i4 - i2);
            throw zzflr.zzdcn();
        }
        if (i > this.zzpvj - i2) {
            throw zzflr.zzdcn();
        }
        this.zzpvk = i2 + i;
    }

    public static zzflj zzo(byte[] bArr, int i, int i2) {
        return new zzflj(bArr, 0, i2);
    }

    public final int getPosition() {
        return this.zzpvk - this.zzpvi;
    }

    public final String readString() throws IOException {
        int zzcym = zzcym();
        if (zzcym < 0) {
            throw zzflr.zzdco();
        }
        int i = this.zzpvj;
        int i2 = this.zzpvk;
        if (zzcym > i - i2) {
            throw zzflr.zzdcn();
        }
        String str = new String(this.buffer, i2, zzcym, zzflq.UTF_8);
        this.zzpvk += zzcym;
        return str;
    }

    public final void zza(zzfls zzflsVar) throws IOException {
        int zzcym = zzcym();
        if (this.zzpoc >= this.zzpod) {
            throw zzflr.zzdcq();
        }
        int zzli = zzli(zzcym);
        this.zzpoc++;
        zzflsVar.zza(this);
        zzlf(0);
        this.zzpoc--;
        zzlj(zzli);
    }

    public final byte[] zzao(int i, int i2) {
        if (i2 == 0) {
            return zzflv.zzpwe;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzpvi + i, bArr, 0, i2);
        return bArr;
    }

    final void zzap(int i, int i2) {
        int i3 = this.zzpvk;
        int i4 = this.zzpvi;
        if (i > i3 - i4) {
            int i5 = this.zzpvk - this.zzpvi;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i5);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i >= 0) {
            this.zzpvk = i4 + i;
            this.zzpoj = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final int zzcxx() throws IOException {
        if (this.zzpvk == this.zzpvj) {
            this.zzpoj = 0;
            return 0;
        }
        int zzcym = zzcym();
        this.zzpoj = zzcym;
        if (zzcym != 0) {
            return zzcym;
        }
        throw new zzflr("Protocol message contained an invalid tag (zero).");
    }

    public final long zzcxz() throws IOException {
        return zzcyr();
    }

    public final int zzcya() throws IOException {
        return zzcym();
    }

    public final int zzcym() throws IOException {
        int i;
        byte zzcyv = zzcyv();
        if (zzcyv >= 0) {
            return zzcyv;
        }
        int i2 = zzcyv & ReqMsg.request_update_sign_digest_response;
        byte zzcyv2 = zzcyv();
        if (zzcyv2 >= 0) {
            i = zzcyv2 << 7;
        } else {
            i2 |= (zzcyv2 & ReqMsg.request_update_sign_digest_response) << 7;
            byte zzcyv3 = zzcyv();
            if (zzcyv3 >= 0) {
                i = zzcyv3 << 14;
            } else {
                i2 |= (zzcyv3 & ReqMsg.request_update_sign_digest_response) << 14;
                byte zzcyv4 = zzcyv();
                if (zzcyv4 < 0) {
                    int i3 = i2 | ((zzcyv4 & ReqMsg.request_update_sign_digest_response) << 21);
                    byte zzcyv5 = zzcyv();
                    int i4 = i3 | (zzcyv5 << 28);
                    if (zzcyv5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (zzcyv() >= 0) {
                            return i4;
                        }
                    }
                    throw zzflr.zzdcp();
                }
                i = zzcyv4 << 21;
            }
        }
        return i | i2;
    }

    public final long zzcyr() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & ReqMsg.request_update_sign_digest_response) << i;
            if ((zzcyv() & 128) == 0) {
                return j;
            }
        }
        throw zzflr.zzdcp();
    }

    public final int zzcys() throws IOException {
        byte zzcyv = zzcyv();
        byte zzcyv2 = zzcyv();
        byte zzcyv3 = zzcyv();
        return ((zzcyv() & 255) << 24) | (zzcyv & 255) | ((zzcyv2 & 255) << 8) | ((zzcyv3 & 255) << 16);
    }

    public final long zzcyt() throws IOException {
        return ((zzcyv() & 255) << 8) | (zzcyv() & 255) | ((zzcyv() & 255) << 16) | ((zzcyv() & 255) << 24) | ((zzcyv() & 255) << 32) | ((zzcyv() & 255) << 40) | ((zzcyv() & 255) << 48) | ((zzcyv() & 255) << 56);
    }

    public final void zzlf(int i) throws zzflr {
        if (this.zzpoj != i) {
            throw new zzflr("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzlg(int i) throws IOException {
        int zzcxx;
        int i2 = i & 7;
        if (i2 == 0) {
            zzcym();
            return true;
        }
        if (i2 == 1) {
            zzcyt();
            return true;
        }
        if (i2 == 2) {
            zzlk(zzcym());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new zzflr("Protocol message tag had invalid wire type.");
            }
            zzcys();
            return true;
        }
        do {
            zzcxx = zzcxx();
            if (zzcxx == 0) {
                break;
            }
        } while (zzlg(zzcxx));
        zzlf(((i >>> 3) << 3) | 4);
        return true;
    }

    public final int zzli(int i) throws zzflr {
        if (i < 0) {
            throw zzflr.zzdco();
        }
        int i2 = i + this.zzpvk;
        int i3 = this.zzpok;
        if (i2 > i3) {
            throw zzflr.zzdcn();
        }
        this.zzpok = i2;
        zzcyu();
        return i3;
    }

    public final void zzlj(int i) {
        this.zzpok = i;
        zzcyu();
    }
}
