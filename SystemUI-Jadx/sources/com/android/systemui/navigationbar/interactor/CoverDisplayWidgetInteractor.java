package com.android.systemui.navigationbar.interactor;

import android.content.Context;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverDisplayWidgetInteractor {
    public CoverDisplayWidgetInteractor$addCallback$2 callback;
    public final CoverDisplayWidgetInteractor$displayReadyRunnable$1 displayReadyRunnable = new CoverDisplayWidgetInteractor$displayReadyRunnable$1(this);
    public final SettingsHelper settingsHelper;

    public CoverDisplayWidgetInteractor(Context context, SettingsHelper settingsHelper) {
        this.settingsHelper = settingsHelper;
    }
}
