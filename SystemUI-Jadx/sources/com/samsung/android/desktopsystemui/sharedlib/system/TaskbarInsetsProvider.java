package com.samsung.android.desktopsystemui.sharedlib.system;

import android.graphics.Insets;
import android.os.Binder;
import android.view.InsetsFrameProvider;
import android.view.WindowInsets;
import android.view.WindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TaskbarInsetsProvider {
    private static final TaskbarInsetsProvider sInstance = new TaskbarInsetsProvider();
    private final Binder mInsetsSourceOwner = new Binder();

    private TaskbarInsetsProvider() {
    }

    private InsetsFrameProvider[] getInsetsFrameProvider(int i) {
        InsetsFrameProvider insetsSizeOverrides = new InsetsFrameProvider(this.mInsetsSourceOwner, 0, WindowInsets.Type.navigationBars()).setInsetsSizeOverrides(new InsetsFrameProvider.InsetsSizeOverride[]{new InsetsFrameProvider.InsetsSizeOverride(2011, (Insets) null)});
        if (i != -1) {
            insetsSizeOverrides.setInsetsSize(Insets.of(0, 0, 0, i));
        }
        return new InsetsFrameProvider[]{insetsSizeOverrides};
    }

    private InsetsFrameProvider[] getInsetsFrameProviderWithGesture(int i) {
        InsetsFrameProvider insetsSizeOverrides = new InsetsFrameProvider(this.mInsetsSourceOwner, 0, WindowInsets.Type.navigationBars()).setInsetsSizeOverrides(new InsetsFrameProvider.InsetsSizeOverride[]{new InsetsFrameProvider.InsetsSizeOverride(2011, (Insets) null)});
        if (i != -1) {
            insetsSizeOverrides.setInsetsSize(Insets.of(0, 0, 0, i));
        }
        return new InsetsFrameProvider[]{insetsSizeOverrides, new InsetsFrameProvider(this.mInsetsSourceOwner, 0, WindowInsets.Type.mandatorySystemGestures())};
    }

    public static TaskbarInsetsProvider getInstance() {
        return sInstance;
    }

    public void setProvidedInsets(WindowManager.LayoutParams layoutParams, int i) {
        layoutParams.providedInsets = getInsetsFrameProvider(i);
    }

    public void setProvidedInsetsWithGesture(WindowManager.LayoutParams layoutParams, int i) {
        layoutParams.providedInsets = getInsetsFrameProviderWithGesture(i);
    }
}
