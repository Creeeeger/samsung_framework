package com.android.server.asks;

/* compiled from: UnknownStore.java */
/* loaded from: classes.dex */
public class PKGINFO {
    public int SA;
    public int isExecuteBlock;
    public int policy;
    public int policyTarget;
    public int regexDomain;
    public int reportedTarget;

    public void set(int i, int i2, int i3, int i4, int i5, int i6) {
        this.policy = i;
        this.isExecuteBlock = i2;
        this.SA = i3;
        this.policyTarget = i4;
        this.reportedTarget = i5;
        this.regexDomain = i6;
    }

    public int getSA() {
        return this.SA;
    }
}
