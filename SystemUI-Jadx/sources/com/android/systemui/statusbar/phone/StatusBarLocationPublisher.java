package com.android.systemui.statusbar.phone;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.systemui.statusbar.policy.CallbackController;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarLocationPublisher implements CallbackController {
    public final Set listeners = new LinkedHashSet();

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
        this.listeners.add(new WeakReference(null));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
        Set<WeakReference> set = this.listeners;
        WeakReference weakReference = null;
        for (WeakReference weakReference2 : set) {
            if (Intrinsics.areEqual(weakReference2.get(), null)) {
                weakReference = weakReference2;
            }
        }
        if (weakReference != null) {
            set.remove(weakReference);
        }
    }
}
