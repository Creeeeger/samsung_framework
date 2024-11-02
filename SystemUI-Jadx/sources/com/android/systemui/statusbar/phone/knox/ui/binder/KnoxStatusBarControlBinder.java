package com.android.systemui.statusbar.phone.knox.ui.binder;

import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import com.android.systemui.statusbar.phone.knox.ui.viewmodel.KnoxStatusBarControlViewModel;
import com.android.systemui.statusbar.phone.knox.ui.viewmodel.KnoxStatusBarViewControl;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlBinder {
    static {
        new KnoxStatusBarControlBinder();
    }

    private KnoxStatusBarControlBinder() {
    }

    public static final void bind(KnoxStatusBarControlViewModel knoxStatusBarControlViewModel, KnoxStatusBarViewControl knoxStatusBarViewControl) {
        RepeatWhenAttachedKt.repeatWhenAttached(knoxStatusBarViewControl.getStatusBarView(), EmptyCoroutineContext.INSTANCE, new KnoxStatusBarControlBinder$bind$1(knoxStatusBarControlViewModel, knoxStatusBarViewControl, null));
    }
}
