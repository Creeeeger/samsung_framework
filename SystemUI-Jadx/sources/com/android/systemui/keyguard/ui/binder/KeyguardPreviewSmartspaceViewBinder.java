package com.android.systemui.keyguard.ui.binder;

import android.view.View;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardPreviewSmartspaceViewBinder {
    public static final KeyguardPreviewSmartspaceViewBinder INSTANCE = new KeyguardPreviewSmartspaceViewBinder();

    private KeyguardPreviewSmartspaceViewBinder() {
    }

    public static final void bind(View view, KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel) {
        RepeatWhenAttachedKt.repeatWhenAttached(view, EmptyCoroutineContext.INSTANCE, new KeyguardPreviewSmartspaceViewBinder$bind$1(keyguardPreviewSmartspaceViewModel, view, null));
    }
}
