package com.android.systemui.dagger;

import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import com.android.systemui.unfold.progress.UnfoldTransitionProgressForwarder;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SysUIComponent$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SysUIComponent$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SysUIComponent) this.f$0).getUnfoldTransitionProgressForwarder().ifPresent(new SysUIComponent$$ExternalSyntheticLambda1((UnfoldTransitionProgressProvider) obj, 1));
                return;
            default:
                ((UnfoldTransitionProgressProvider) this.f$0).addCallback((UnfoldTransitionProgressForwarder) obj);
                return;
        }
    }
}
