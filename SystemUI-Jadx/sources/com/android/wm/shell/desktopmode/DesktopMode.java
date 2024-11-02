package com.android.wm.shell.desktopmode;

import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda0;
import com.android.systemui.wmshell.WMShell;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface DesktopMode {
    void addDesktopGestureExclusionRegionListener(Executor executor, EdgeBackGestureHandler$$ExternalSyntheticLambda0 edgeBackGestureHandler$$ExternalSyntheticLambda0);

    void addVisibleTasksListener(WMShell.AnonymousClass14 anonymousClass14, Executor executor);
}
