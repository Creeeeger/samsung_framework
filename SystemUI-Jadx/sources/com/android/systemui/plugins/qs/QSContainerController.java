package com.android.systemui.plugins.qs;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface QSContainerController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static void setCustomizerShowing(QSContainerController qSContainerController, boolean z) {
            qSContainerController.setCustomizerShowing(z, 0L);
        }
    }

    void setCustomizerAnimating(boolean z);

    void setCustomizerShowing(boolean z);

    void setCustomizerShowing(boolean z, long j);

    void setDetailShowing(boolean z);
}
