package com.android.wm.shell.sysui;

import android.os.Build;
import android.os.SystemClock;
import android.util.Pair;
import android.view.SurfaceControl;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShellInit {
    public boolean mHasInitialized;
    public final ArrayList mInitCallbacks = new ArrayList();

    public ShellInit(ShellExecutor shellExecutor) {
    }

    public final void addInitCallback(Runnable runnable, Object obj) {
        if (this.mHasInitialized) {
            if (!Build.isDebuggable()) {
                return;
            } else {
                throw new IllegalArgumentException("Can not add callback after init");
            }
        }
        String simpleName = obj.getClass().getSimpleName();
        this.mInitCallbacks.add(new Pair(simpleName, runnable));
        if (ShellProtoLogCache.WM_SHELL_INIT_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_INIT, 1988667565, 0, "Adding init callback for %s", simpleName);
        }
    }

    public void init() {
        boolean z = ShellProtoLogCache.WM_SHELL_INIT_enabled;
        ArrayList arrayList = this.mInitCallbacks;
        if (z) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_INIT, -1361799684, 1, "Initializing Shell Components: %d", Long.valueOf(arrayList.size()));
        }
        SurfaceControl.setDebugUsageAfterRelease(true);
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            long uptimeMillis = SystemClock.uptimeMillis();
            ((Runnable) pair.second).run();
            long uptimeMillis2 = SystemClock.uptimeMillis();
            if (ShellProtoLogCache.WM_SHELL_INIT_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_INIT, 1745263573, 4, "\t%s init took %dms", String.valueOf(pair.first), Long.valueOf(uptimeMillis2 - uptimeMillis));
            }
        }
        arrayList.clear();
        this.mHasInitialized = true;
    }
}
