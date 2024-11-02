package com.samsung.android.knox.zt.service.wrapper;

import dalvik.system.PathClassLoader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ClassLoaderHelper {
    public static volatile ClassLoaderHelper sInstance;
    public final ClassLoader mSakClassLoader = new PathClassLoader("/system/framework/samsungkeystoreutils.jar", ClassLoader.getSystemClassLoader());

    private ClassLoaderHelper() {
    }

    public static ClassLoaderHelper getInstance() {
        if (sInstance == null) {
            synchronized (ClassLoaderHelper.class) {
                if (sInstance == null) {
                    sInstance = new ClassLoaderHelper();
                }
            }
        }
        return sInstance;
    }

    public final ClassLoader getSakClassLoader() {
        return this.mSakClassLoader;
    }
}
