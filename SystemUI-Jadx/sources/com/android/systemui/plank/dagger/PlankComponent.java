package com.android.systemui.plank.dagger;

import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PlankComponent {
    public final boolean featureEnabled;
    public final Lazy lazyProtocolManager;

    public PlankComponent(boolean z, Lazy lazy) {
        this.featureEnabled = z;
        this.lazyProtocolManager = lazy;
    }
}
