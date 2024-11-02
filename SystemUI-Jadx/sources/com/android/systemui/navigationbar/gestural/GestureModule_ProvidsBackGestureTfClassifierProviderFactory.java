package com.android.systemui.navigationbar.gestural;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GestureModule_ProvidsBackGestureTfClassifierProviderFactory implements Provider {
    public static BackGestureTfClassifierProvider providsBackGestureTfClassifierProvider() {
        return new BackGestureTfClassifierProvider();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new BackGestureTfClassifierProvider();
    }
}
