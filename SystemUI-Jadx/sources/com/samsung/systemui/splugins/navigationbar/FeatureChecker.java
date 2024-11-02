package com.samsung.systemui.splugins.navigationbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface FeatureChecker {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static boolean isNavigationBarMigrated(FeatureChecker featureChecker) {
            return false;
        }

        public static boolean isSupportSearcle(FeatureChecker featureChecker) {
            return false;
        }
    }

    boolean isDeviceSupportLargeCoverScreen();

    boolean isDeviceSupportTaskbar();

    boolean isFoldableTypeFlip();

    boolean isFoldableTypeFold();

    boolean isNavigationBarMigrated();

    boolean isOpenThemeSupported();

    boolean isSupportSearcle();

    boolean isTablet();
}
