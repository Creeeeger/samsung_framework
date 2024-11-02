package com.android.systemui.shade;

import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationPanelViewController$$ExternalSyntheticLambda9 implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        boolean z;
        NotificationPanelView notificationPanelView = (NotificationPanelView) obj;
        float floatValue = ((Float) obj2).floatValue();
        int i = (int) floatValue;
        notificationPanelView.mCurrentPanelAlpha = i;
        if (notificationPanelView.mStatusBarState == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            notificationPanelView.setAlpha(floatValue / 255.0f);
        } else {
            notificationPanelView.mAlphaPaint.setARGB(i, 255, 255, 255);
        }
        notificationPanelView.invalidate();
    }
}
