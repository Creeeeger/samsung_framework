package com.android.systemui.statusbar.iconsOnly;

import com.android.systemui.statusbar.LockscreenNotificationInfo;
import java.util.Comparator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        long j = ((LockscreenNotificationInfo) obj).mSbn.getNotification().when;
        long j2 = ((LockscreenNotificationInfo) obj2).mSbn.getNotification().when;
        if (j < j2) {
            return 1;
        }
        if (j > j2) {
            return -1;
        }
        return 0;
    }
}
