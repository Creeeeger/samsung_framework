package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.phone.SimpleStatusBarIconController;
import java.util.Comparator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SimpleStatusBarIconController$$ExternalSyntheticLambda0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        SimpleStatusBarIconController.TimeOrderKey timeOrderKey = (SimpleStatusBarIconController.TimeOrderKey) obj;
        SimpleStatusBarIconController.TimeOrderKey timeOrderKey2 = (SimpleStatusBarIconController.TimeOrderKey) obj2;
        boolean z = timeOrderKey.isCallChipNotif;
        long j = timeOrderKey.when;
        if (!z || j != 0) {
            boolean z2 = timeOrderKey2.isCallChipNotif;
            long j2 = timeOrderKey2.when;
            if ((z2 && j2 == 0) || j < j2) {
                return 1;
            }
            if (j <= j2) {
                return 0;
            }
        }
        return -1;
    }
}
