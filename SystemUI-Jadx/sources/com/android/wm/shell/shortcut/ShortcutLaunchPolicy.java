package com.android.wm.shell.shortcut;

import android.view.KeyEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ShortcutLaunchPolicy {
    public final ShortcutController mShortcutController;
    public final boolean mSupportMultiSplitStatus;

    public ShortcutLaunchPolicy(ShortcutController shortcutController, boolean z) {
        this.mShortcutController = shortcutController;
        this.mSupportMultiSplitStatus = z;
    }

    public abstract void handleShortCutKeys(KeyEvent keyEvent);
}
