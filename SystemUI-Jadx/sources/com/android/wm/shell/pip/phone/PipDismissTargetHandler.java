package com.android.wm.shell.pip.phone;

import android.content.Context;
import android.view.ViewTreeObserver;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.pip.PipUiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipDismissTargetHandler implements ViewTreeObserver.OnPreDrawListener {
    public PipDismissTargetHandler(Context context, PipUiEventLogger pipUiEventLogger, PipMotionHelper pipMotionHelper, ShellExecutor shellExecutor) {
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        return true;
    }
}
