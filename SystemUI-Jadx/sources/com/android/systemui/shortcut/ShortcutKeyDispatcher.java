package com.android.systemui.shortcut;

import android.content.Context;
import android.os.RemoteException;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;
import com.android.systemui.CoreStartable;
import com.android.systemui.shortcut.ShortcutKeyServiceProxy;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutKeyDispatcher implements CoreStartable, ShortcutKeyServiceProxy.Callbacks {
    public final Context mContext;
    public final Optional mSplitScreenOptional;
    public final ShortcutKeyServiceProxy mShortcutKeyServiceProxy = new ShortcutKeyServiceProxy(this);
    public final IWindowManager mWindowManagerService = WindowManagerGlobal.getWindowManagerService();

    public ShortcutKeyDispatcher(Context context, Optional<SplitScreenController> optional) {
        this.mContext = context;
        this.mSplitScreenOptional = optional;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        ShortcutKeyServiceProxy shortcutKeyServiceProxy = this.mShortcutKeyServiceProxy;
        IWindowManager iWindowManager = this.mWindowManagerService;
        try {
            iWindowManager.registerShortcutKey(281474976710727L, shortcutKeyServiceProxy);
        } catch (RemoteException unused) {
        }
        try {
            iWindowManager.registerShortcutKey(281474976710728L, shortcutKeyServiceProxy);
        } catch (RemoteException unused2) {
        }
    }
}
