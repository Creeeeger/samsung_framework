package com.android.systemui.qs.animator;

import android.content.res.Configuration;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SecQSFragmentAnimatorBase) obj).onPanelExpansionChanged((ShadeExpansionChangeEvent) this.f$0);
                return;
            case 1:
                ((SecQSFragmentAnimatorBase) obj).setQs((QS) this.f$0);
                return;
            case 2:
                ((SecQSFragmentAnimatorBase) obj).onConfigurationChanged((Configuration) this.f$0);
                return;
            case 3:
                ((ArrayList) this.f$0).addAll((ArrayList) obj);
                return;
            case 4:
                ((SecQSFragmentAnimatorBase) obj).setPanelViewController((NotificationPanelViewController) this.f$0);
                return;
            case 5:
                ((SecQSFragmentAnimatorBase) obj).setExpandImmediateSupplier((BooleanSupplier) this.f$0);
                return;
            default:
                ((SecQSFragmentAnimatorBase) obj).setNotificationStackScrollerController((NotificationStackScrollLayoutController) this.f$0);
                return;
        }
    }
}
