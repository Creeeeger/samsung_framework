package com.android.systemui.statusbar.phone;

import android.util.Log;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SamsungLightBarControlHelper {
    public NavigationBarModel navigationBarModel;
    public StatusBarModel statusBarModel;

    public final void updateStatusBarModel(String str, int i, ArrayList arrayList, int i2, String str2) {
        StatusBarModel statusBarModel = new StatusBarModel(str, i, arrayList, i2, str2, 0, false, 96, null);
        StatusBarModel statusBarModel2 = this.statusBarModel;
        if (statusBarModel2 == null || !Intrinsics.areEqual(statusBarModel2, statusBarModel)) {
            this.statusBarModel = statusBarModel;
            Log.d("SamsungLightBarControlHelper", "updateStatusBar " + statusBarModel);
        }
    }
}
