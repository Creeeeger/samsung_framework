package com.google.android.material.internal;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.core.view.WindowInsetsControllerCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EdgeToEdgeUtils {
    private EdgeToEdgeUtils() {
    }

    public static void setLightStatusBar(Window window, boolean z) {
        WindowInsetsControllerCompat.Impl30 impl30 = new WindowInsetsControllerCompat(window, window.getDecorView()).mImpl;
        WindowInsetsController windowInsetsController = impl30.mInsetsController;
        Window window2 = impl30.mWindow;
        if (z) {
            if (window2 != null) {
                View decorView = window2.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            windowInsetsController.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window2 != null) {
            View decorView2 = window2.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        windowInsetsController.setSystemBarsAppearance(0, 8);
    }
}
