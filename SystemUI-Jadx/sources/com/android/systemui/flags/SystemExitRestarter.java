package com.android.systemui.flags;

import android.util.Log;
import com.android.internal.statusbar.IStatusBarService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemExitRestarter implements Restarter {
    public SystemExitRestarter(IStatusBarService iStatusBarService) {
    }

    @Override // com.android.systemui.flags.Restarter
    public final void restartSystemUI(String str) {
        Log.d("SysUIFlags", "Restarting SystemUI: ".concat(str));
        System.exit(0);
    }
}
