package com.android.wm.shell;

import android.view.WindowManagerGlobal;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.pip.PinnedStackListenerForwarder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WindowManagerShellWrapper {
    public final PinnedStackListenerForwarder mPinnedStackListenerForwarder;

    public WindowManagerShellWrapper(ShellExecutor shellExecutor) {
        this.mPinnedStackListenerForwarder = new PinnedStackListenerForwarder(shellExecutor);
    }

    public final void addPinnedStackListener(PinnedStackListenerForwarder.PinnedTaskListener pinnedTaskListener) {
        PinnedStackListenerForwarder pinnedStackListenerForwarder = this.mPinnedStackListenerForwarder;
        pinnedStackListenerForwarder.mListeners.add(pinnedTaskListener);
        WindowManagerGlobal.getWindowManagerService().registerPinnedTaskListener(0, pinnedStackListenerForwarder.mListenerImpl);
    }
}
