package com.android.systemui.statusbar.notification;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NotificationFadeAware {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface FadeOptimizedNotification extends NotificationFadeAware {
    }

    static void setLayerTypeForFaded(View view, boolean z) {
        int i;
        if (view != null) {
            if (z) {
                i = 2;
            } else {
                i = 0;
            }
            view.setLayerType(i, null);
        }
    }
}
