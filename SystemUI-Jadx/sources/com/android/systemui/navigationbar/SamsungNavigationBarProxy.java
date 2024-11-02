package com.android.systemui.navigationbar;

import com.android.systemui.navigationbar.store.SystemBarProxy;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungNavigationBarProxy implements SystemBarProxy {
    public static final Companion Companion = new Companion(null);
    public static volatile SamsungNavigationBarProxy INSTANCE;
    public int navbarTransitionMode;
    public final List rotationLockCallback;
    public boolean rotationLocked;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SamsungNavigationBarProxy() {
        SystemBarProxy.Companion.getClass();
        this.rotationLockCallback = new ArrayList();
    }
}
