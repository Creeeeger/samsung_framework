package com.samsung.systemui.splugins.navigationbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface LayoutProviderContainer {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static LayoutProvider updateLayoutProvider(LayoutProviderContainer layoutProviderContainer, boolean z, boolean z2) {
            return null;
        }

        public static /* synthetic */ LayoutProvider updateLayoutProvider$default(LayoutProviderContainer layoutProviderContainer, boolean z, boolean z2, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    z = false;
                }
                return layoutProviderContainer.updateLayoutProvider(z, z2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayoutProvider");
        }
    }

    LayoutProvider updateLayoutProvider(boolean z, boolean z2);
}
