package com.android.systemui.navigationbar;

import android.R;
import android.content.Context;
import android.graphics.Insets;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.SystemClock;
import android.view.InsetsFrameProvider;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SafeUINavigationBarView {
    public final Context mContext;
    public final Binder mInsetsSourceOwner = new Binder();
    public View mView;
    public final WindowManager mWindowManager;

    public SafeUINavigationBarView(Context context, WindowManager windowManager) {
        this.mContext = context;
        this.mWindowManager = windowManager;
    }

    public static void sendEvent(int i) {
        long uptimeMillis = SystemClock.uptimeMillis();
        InputManager.getInstance().injectInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, i, 4, 0, 0, -1, 0, 72, 257), 0);
    }

    public final WindowManager.LayoutParams getBarLayoutParamsForRotation() {
        Context context = this.mContext;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, dimensionPixelSize, 2019, 545521768, -3);
        layoutParams.gravity = 80;
        Binder binder = this.mInsetsSourceOwner;
        InsetsFrameProvider insetsSizeOverrides = new InsetsFrameProvider(binder, 0, WindowInsets.Type.navigationBars()).setInsetsSizeOverrides(new InsetsFrameProvider.InsetsSizeOverride[]{new InsetsFrameProvider.InsetsSizeOverride(2011, (Insets) null)});
        if (dimensionPixelSize2 != -1) {
            insetsSizeOverrides.setInsetsSize(Insets.of(0, 0, 0, dimensionPixelSize2));
        }
        insetsSizeOverrides.setFlags(!context.getResources().getBoolean(17891777) ? 1 : 0, 1);
        InsetsFrameProvider insetsFrameProvider = new InsetsFrameProvider(binder, 0, WindowInsets.Type.tappableElement());
        if (context.getResources().getBoolean(17891779)) {
            insetsFrameProvider.setInsetsSize(Insets.NONE);
        }
        layoutParams.providedInsets = new InsetsFrameProvider[]{insetsSizeOverrides, insetsFrameProvider, new InsetsFrameProvider(binder, 0, WindowInsets.Type.mandatorySystemGestures()), new InsetsFrameProvider(binder, 0, WindowInsets.Type.systemGestures()).setSource(0).setInsetsSize(Insets.of(0, 0, 0, 0)).setMinimalInsetsSizeInDisplayCutoutSafe(Insets.of(0, 0, 0, 0)), new InsetsFrameProvider(binder, 1, WindowInsets.Type.systemGestures()).setSource(0).setInsetsSize(Insets.of(0, 0, 0, 0)).setMinimalInsetsSizeInDisplayCutoutSafe(Insets.of(0, 0, 0, 0))};
        layoutParams.token = new Binder();
        layoutParams.accessibilityTitle = context.getString(com.android.systemui.R.string.nav_bar);
        layoutParams.privateFlags |= 16781312;
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.windowAnimations = 0;
        layoutParams.setTitle("SafeUINavigationBar" + context.getDisplayId());
        layoutParams.setFitInsetsTypes(0);
        layoutParams.setTrustedOverlay();
        return layoutParams;
    }
}
