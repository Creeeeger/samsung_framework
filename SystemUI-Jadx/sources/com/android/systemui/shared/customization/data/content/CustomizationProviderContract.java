package com.android.systemui.shared.customization.data.content;

import android.net.Uri;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomizationProviderContract {
    public static final Uri BASE_URI;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LockScreenQuickAffordances {
        public static final LockScreenQuickAffordances INSTANCE = new LockScreenQuickAffordances();
        public static final Uri LOCK_SCREEN_QUICK_AFFORDANCE_BASE_URI = CustomizationProviderContract.BASE_URI.buildUpon().path("lockscreen_quickaffordance").build();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class SelectionTable {
            public static final SelectionTable INSTANCE = new SelectionTable();
            public static final Uri URI = LockScreenQuickAffordances.LOCK_SCREEN_QUICK_AFFORDANCE_BASE_URI.buildUpon().appendPath("selections").build();

            private SelectionTable() {
            }
        }

        private LockScreenQuickAffordances() {
        }

        public static String qualifiedTablePath(String str) {
            return "lockscreen_quickaffordance/".concat(str);
        }
    }

    static {
        new CustomizationProviderContract();
        BASE_URI = new Uri.Builder().scheme("content").authority("com.android.systemui.customization").build();
    }

    private CustomizationProviderContract() {
    }
}
