package com.android.systemui.qs.animator;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SecQSFragmentAnimatorBase) obj).onRtlChanged();
                return;
            case 1:
                ((SecQSFragmentAnimatorBase) obj).onPanelClosed();
                return;
            case 2:
                ((SecQSFragmentAnimatorBase) obj).destroyQSViews();
                return;
            default:
                ((SecQSFragmentAnimatorBase) obj).updateAnimators();
                return;
        }
    }
}
