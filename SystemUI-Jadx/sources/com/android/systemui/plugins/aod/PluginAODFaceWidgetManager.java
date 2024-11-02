package com.android.systemui.plugins.aod;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginAODFaceWidgetManager extends PluginAODBaseManager {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        int getClockSidePadding();

        int getClockType();

        String getCurrentPageKey();

        int getMinTopMargin();

        View getPage(String str);

        int getPluginLockClockGravity();

        int getPluginLockTopMargin();

        boolean hasMultiplePages();

        void requestAODState(boolean z, boolean z2);

        void setPage(String str);

        void setPageTransformer(boolean z);
    }

    void onClockPageTransitionEnded();
}
