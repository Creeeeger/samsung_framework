package com.android.systemui.keyguard;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DismissCallbackRegistry {
    public final ArrayList mDismissCallbacks = new ArrayList();
    public final Executor mUiBgExecutor;

    public DismissCallbackRegistry(Executor executor) {
        this.mUiBgExecutor = executor;
    }

    public final void notifyDismissCancelled() {
        ArrayList arrayList = this.mDismissCallbacks;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DismissCallbackWrapper dismissCallbackWrapper = (DismissCallbackWrapper) arrayList.get(size);
            Objects.requireNonNull(dismissCallbackWrapper);
            this.mUiBgExecutor.execute(new DismissCallbackRegistry$$ExternalSyntheticLambda0(dismissCallbackWrapper, 0));
        }
        arrayList.clear();
    }

    public final void notifyDismissSucceeded() {
        ArrayList arrayList = this.mDismissCallbacks;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DismissCallbackWrapper dismissCallbackWrapper = (DismissCallbackWrapper) arrayList.get(size);
            Objects.requireNonNull(dismissCallbackWrapper);
            this.mUiBgExecutor.execute(new DismissCallbackRegistry$$ExternalSyntheticLambda0(dismissCallbackWrapper, 1));
        }
        arrayList.clear();
    }
}
