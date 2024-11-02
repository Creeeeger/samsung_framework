package com.android.systemui.statusbar.policy;

import android.os.Parcelable;
import com.android.systemui.statusbar.policy.ZenModeController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ZenModeControllerImpl$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Parcelable f$0;

    public /* synthetic */ ZenModeControllerImpl$$ExternalSyntheticLambda0(Parcelable parcelable, int i) {
        this.$r8$classId = i;
        this.f$0 = parcelable;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((ZenModeController.Callback) obj).onConfigChanged$1();
                return;
            case 1:
                ((ZenModeController.Callback) obj).getClass();
                return;
            default:
                ((ZenModeController.Callback) obj).getClass();
                return;
        }
    }
}
