package com.android.systemui.tuner;

import com.android.systemui.fragments.FragmentService;
import com.android.systemui.keyguard.DisplayLifecycle;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TunerActivity$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TunerActivity$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                int i = TunerActivity.$r8$clinit;
                Iterator it = ((FragmentService) obj).mHosts.values().iterator();
                while (it.hasNext()) {
                    ((FragmentService.FragmentHostState) it.next()).mFragmentHostManager.mFragments.dispatchDestroy();
                }
                return;
            default:
                DisplayLifecycle displayLifecycle = (DisplayLifecycle) obj;
                displayLifecycle.mDisplayManager.unregisterDisplayListener(displayLifecycle.mDisplayListener);
                return;
        }
    }
}
