package com.android.systemui.statusbar.pipeline.shared.ui.binder;

import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import com.android.systemui.statusbar.phone.PhoneStatusBarView;
import com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragment;
import com.android.systemui.statusbar.pipeline.shared.ui.viewmodel.CollapsedStatusBarViewModel;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CollapsedStatusBarViewBinderImpl implements CollapsedStatusBarViewBinder {
    public final void bind(PhoneStatusBarView phoneStatusBarView, CollapsedStatusBarViewModel collapsedStatusBarViewModel, CollapsedStatusBarFragment.AnonymousClass5 anonymousClass5) {
        RepeatWhenAttachedKt.repeatWhenAttached(phoneStatusBarView, EmptyCoroutineContext.INSTANCE, new CollapsedStatusBarViewBinderImpl$bind$1(collapsedStatusBarViewModel, anonymousClass5, null));
    }
}
