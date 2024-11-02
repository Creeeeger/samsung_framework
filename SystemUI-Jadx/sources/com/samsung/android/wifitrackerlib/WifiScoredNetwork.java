package com.samsung.android.wifitrackerlib;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class WifiScoredNetwork {
    public final String bssid;
    public final int[] levels;
    public final int networkType;

    public WifiScoredNetwork(String str, int i, int[] iArr) {
        this.bssid = str;
        this.networkType = i;
        this.levels = iArr;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("key:");
        sb.append(this.bssid);
        sb.append(", networkType:");
        sb.append(this.networkType);
        sb.append(", speed:[");
        for (int i : this.levels) {
            sb.append(i);
            sb.append(" ");
        }
        sb.append("]");
        return sb.toString();
    }
}
