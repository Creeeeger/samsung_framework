package com.android.systemui.statusbar.notification.stack;

import com.android.systemui.statusbar.notification.row.ExpandableView;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationStackSizeCalculator$showableChildren$1 extends Lambda implements Function1 {
    final /* synthetic */ NotificationStackSizeCalculator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationStackSizeCalculator$showableChildren$1(NotificationStackSizeCalculator notificationStackSizeCalculator) {
        super(1);
        this.this$0 = notificationStackSizeCalculator;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(NotificationStackSizeCalculator.isShowable((ExpandableView) obj, this.this$0.onLockscreen()));
    }
}
