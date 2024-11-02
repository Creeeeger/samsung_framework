package com.android.wm.shell.dagger;

import android.content.Context;
import android.view.WindowManager;
import com.android.wm.shell.bubbles.BubblePositioner;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideBubblePositionerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider windowManagerProvider;

    public WMShellModule_ProvideBubblePositionerFactory(Provider provider, Provider provider2) {
        this.contextProvider = provider;
        this.windowManagerProvider = provider2;
    }

    public static BubblePositioner provideBubblePositioner(Context context, WindowManager windowManager) {
        return new BubblePositioner(context, windowManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new BubblePositioner((Context) this.contextProvider.get(), (WindowManager) this.windowManagerProvider.get());
    }
}
