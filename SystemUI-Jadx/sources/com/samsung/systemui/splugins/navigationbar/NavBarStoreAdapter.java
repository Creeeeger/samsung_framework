package com.samsung.systemui.splugins.navigationbar;

import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface NavBarStoreAdapter {
    void addBand(String str, Runnable runnable, int i, List<String> list);

    void addBand(String str, Runnable runnable, int i, List<String> list, Object obj);

    void addPack();

    void apply(String str, int i);

    void apply(String str, String str2, int i);

    Object getNavBarState(String str, int i);

    Object getValue(String str, int i);

    void initPack();

    void removeBand(String str);

    void removePack();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void apply(NavBarStoreAdapter navBarStoreAdapter, String str, String str2, int i) {
        }
    }
}
