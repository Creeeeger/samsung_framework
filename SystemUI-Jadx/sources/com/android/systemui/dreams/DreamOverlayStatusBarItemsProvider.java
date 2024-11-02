package com.android.systemui.dreams;

import com.android.systemui.statusbar.policy.CallbackController;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamOverlayStatusBarItemsProvider implements CallbackController {
    public final Executor mExecutor;
    public final List mItems = new ArrayList();
    public final List mCallbacks = new ArrayList();

    public DreamOverlayStatusBarItemsProvider(Executor executor) {
        this.mExecutor = executor;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        this.mExecutor.execute(new DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0(this, (DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4) obj, 1));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.mExecutor.execute(new DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0(this, (DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4) obj, 0));
    }
}
