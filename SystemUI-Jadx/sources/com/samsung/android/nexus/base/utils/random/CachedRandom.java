package com.samsung.android.nexus.base.utils.random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class CachedRandom {
    public static final NexusRandom sRandom = new NexusRandom();
    public final double mMax;
    public final double mMin;
    public final int mCacheSize = 100000;
    public final int mIndexLimit = 99999;
    public int mIndex = 0;
    public int mRewind = 0;
    public boolean mNeedRefresh = true;

    public CachedRandom(double d, double d2) {
        this.mMin = d;
        this.mMax = d2;
        onCreate();
    }

    public abstract void onCreate();
}
