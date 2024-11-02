package com.android.systemui.recents;

import android.os.Bundle;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.unfold.progress.UnfoldTransitionProgressForwarder;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OverviewProxyService$$ExternalSyntheticLambda4 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ OverviewProxyService$$ExternalSyntheticLambda4(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((OverviewProxyService) this.f$0).mInputFocusTransferStarted = false;
                ((CentralSurfacesImpl) ((CentralSurfaces) obj)).onInputFocusTransfer(0.0f, false, true);
                return;
            default:
                Bundle bundle = (Bundle) this.f$0;
                UnfoldTransitionProgressForwarder unfoldTransitionProgressForwarder = (UnfoldTransitionProgressForwarder) obj;
                unfoldTransitionProgressForwarder.getClass();
                bundle.putBinder("extra_unfold_animation", unfoldTransitionProgressForwarder);
                return;
        }
    }
}
