package com.android.systemui.keyguard.ui.binder;

import android.view.View;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewClockViewModel;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardPreviewClockViewBinder {
    static {
        new KeyguardPreviewClockViewBinder();
    }

    private KeyguardPreviewClockViewBinder() {
    }

    public static final void bind(View view, View view2, KeyguardPreviewClockViewModel keyguardPreviewClockViewModel) {
        RepeatWhenAttachedKt.repeatWhenAttached(view, EmptyCoroutineContext.INSTANCE, new KeyguardPreviewClockViewBinder$bind$1(keyguardPreviewClockViewModel, view, null));
        RepeatWhenAttachedKt.repeatWhenAttached(view2, EmptyCoroutineContext.INSTANCE, new KeyguardPreviewClockViewBinder$bind$2(keyguardPreviewClockViewModel, view2, null));
    }
}
