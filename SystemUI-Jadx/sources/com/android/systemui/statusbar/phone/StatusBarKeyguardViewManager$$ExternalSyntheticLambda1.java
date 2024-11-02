package com.android.systemui.statusbar.phone;

import android.view.View;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StatusBarKeyguardViewManager$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((View) obj).animate().alpha(0.0f).setDuration(125L).start();
                return;
            default:
                ((View) obj).animate().alpha(1.0f).setDuration(125L).start();
                return;
        }
    }
}
