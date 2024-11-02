package com.android.systemui.dreams;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DreamOverlayStatusBarViewController f$0;

    public /* synthetic */ DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0(DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = dreamOverlayStatusBarViewController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                DreamOverlayNotificationCountProvider dreamOverlayNotificationCountProvider = (DreamOverlayNotificationCountProvider) obj;
                DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3 dreamOverlayStatusBarViewController$$ExternalSyntheticLambda3 = this.f$0.mNotificationCountCallback;
                ArrayList arrayList = (ArrayList) dreamOverlayNotificationCountProvider.mCallbacks;
                if (!arrayList.contains(dreamOverlayStatusBarViewController$$ExternalSyntheticLambda3)) {
                    arrayList.add(dreamOverlayStatusBarViewController$$ExternalSyntheticLambda3);
                    dreamOverlayStatusBarViewController$$ExternalSyntheticLambda3.onNotificationCountChanged(((HashSet) dreamOverlayNotificationCountProvider.mNotificationKeys).size());
                    return;
                }
                return;
            default:
                ((ArrayList) ((DreamOverlayNotificationCountProvider) obj).mCallbacks).remove(this.f$0.mNotificationCountCallback);
                return;
        }
    }
}
