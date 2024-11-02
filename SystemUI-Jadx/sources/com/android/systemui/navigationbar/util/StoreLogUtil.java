package com.android.systemui.navigationbar.util;

import com.android.systemui.basic.util.LogWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StoreLogUtil {
    public boolean allowLogging;
    public int lastDepth;
    public final LogWrapper logWrapper;
    public final boolean loggingStarted = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public StoreLogUtil(LogWrapper logWrapper) {
        this.logWrapper = logWrapper;
    }

    public final void printLog(int i, String str) {
        this.lastDepth = i;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("--");
        }
        sb.append(str);
        this.logWrapper.d("Store", sb.toString());
    }
}
