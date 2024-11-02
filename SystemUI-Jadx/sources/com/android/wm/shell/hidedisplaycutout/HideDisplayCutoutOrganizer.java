package com.android.wm.shell.hidedisplaycutout;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.Log;
import android.util.RotationUtils;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.SurfaceControl;
import android.window.DisplayAreaInfo;
import android.window.DisplayAreaOrganizer;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.internal.policy.SystemBarUtils;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.ShellExecutor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HideDisplayCutoutOrganizer extends DisplayAreaOrganizer {
    public final Context mContext;
    public Insets mCurrentCutoutInsets;
    final Rect mCurrentDisplayBounds;
    public Insets mDefaultCutoutInsets;
    public final Rect mDefaultDisplayBounds;
    ArrayMap<WindowContainerToken, SurfaceControl> mDisplayAreaMap;
    public final DisplayController mDisplayController;
    public final AnonymousClass1 mListener;
    int mOffsetX;
    int mOffsetY;
    int mRotation;
    public int mStatusBarHeight;

    /* renamed from: -$$Nest$monDisplayChanged, reason: not valid java name */
    public static void m2462$$Nest$monDisplayChanged(HideDisplayCutoutOrganizer hideDisplayCutoutOrganizer, int i) {
        if (i != 0) {
            hideDisplayCutoutOrganizer.getClass();
            return;
        }
        boolean z = false;
        DisplayLayout displayLayout = hideDisplayCutoutOrganizer.mDisplayController.getDisplayLayout(0);
        if (displayLayout != null) {
            int i2 = hideDisplayCutoutOrganizer.mRotation;
            int i3 = displayLayout.mRotation;
            if (i2 != i3) {
                z = true;
            }
            hideDisplayCutoutOrganizer.mRotation = i3;
            if (z || hideDisplayCutoutOrganizer.isDisplayBoundsChanged()) {
                hideDisplayCutoutOrganizer.updateBoundsAndOffsets(true);
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                synchronized (hideDisplayCutoutOrganizer) {
                    hideDisplayCutoutOrganizer.mDisplayAreaMap.forEach(new HideDisplayCutoutOrganizer$$ExternalSyntheticLambda0(hideDisplayCutoutOrganizer, windowContainerTransaction, transaction));
                }
                hideDisplayCutoutOrganizer.applyTransaction(windowContainerTransaction, transaction);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.wm.shell.hidedisplaycutout.HideDisplayCutoutOrganizer$1] */
    public HideDisplayCutoutOrganizer(Context context, DisplayController displayController, ShellExecutor shellExecutor) {
        super(shellExecutor);
        this.mDisplayAreaMap = new ArrayMap<>();
        this.mDefaultDisplayBounds = new Rect();
        this.mCurrentDisplayBounds = new Rect();
        Insets insets = Insets.NONE;
        this.mDefaultCutoutInsets = insets;
        this.mCurrentCutoutInsets = insets;
        this.mListener = new DisplayController.OnDisplaysChangedListener() { // from class: com.android.wm.shell.hidedisplaycutout.HideDisplayCutoutOrganizer.1
            @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
            public final void onDisplayAdded(int i) {
                HideDisplayCutoutOrganizer.m2462$$Nest$monDisplayChanged(HideDisplayCutoutOrganizer.this, i);
            }

            @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
            public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
                HideDisplayCutoutOrganizer.m2462$$Nest$monDisplayChanged(HideDisplayCutoutOrganizer.this, i);
            }
        };
        this.mContext = context;
        this.mDisplayController = displayController;
    }

    public boolean addDisplayAreaInfoAndLeashToMap(DisplayAreaInfo displayAreaInfo, SurfaceControl surfaceControl) {
        synchronized (this) {
            if (displayAreaInfo.displayId != 0) {
                return false;
            }
            if (this.mDisplayAreaMap.containsKey(displayAreaInfo.token)) {
                Log.w("HideDisplayCutoutOrganizer", "Already appeared token: " + displayAreaInfo.token);
                return false;
            }
            this.mDisplayAreaMap.put(displayAreaInfo.token, surfaceControl);
            return true;
        }
    }

    public void applyBoundsAndOffsets(WindowContainerToken windowContainerToken, SurfaceControl surfaceControl, WindowContainerTransaction windowContainerTransaction, SurfaceControl.Transaction transaction) {
        windowContainerTransaction.setBounds(windowContainerToken, this.mCurrentDisplayBounds);
        transaction.setPosition(surfaceControl, this.mOffsetX, this.mOffsetY);
        transaction.setWindowCrop(surfaceControl, this.mCurrentDisplayBounds.width(), this.mCurrentDisplayBounds.height());
    }

    public void applyTransaction(WindowContainerTransaction windowContainerTransaction, SurfaceControl.Transaction transaction) {
        applyTransaction(windowContainerTransaction);
        transaction.apply();
    }

    public Rect getDisplayBoundsOfNaturalOrientation() {
        int i;
        int i2;
        DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(0);
        if (displayLayout == null) {
            return new Rect();
        }
        int i3 = this.mRotation;
        boolean z = true;
        if (i3 != 1 && i3 != 3) {
            z = false;
        }
        if (z) {
            i = displayLayout.mHeight;
        } else {
            i = displayLayout.mWidth;
        }
        if (z) {
            i2 = displayLayout.mWidth;
        } else {
            i2 = displayLayout.mHeight;
        }
        return new Rect(0, 0, i, i2);
    }

    public Insets getDisplayCutoutInsetsOfNaturalOrientation() {
        Insets insets;
        Display display = this.mDisplayController.getDisplay(0);
        if (display == null) {
            return Insets.NONE;
        }
        DisplayCutout cutout = display.getCutout();
        if (cutout != null) {
            insets = Insets.of(cutout.getSafeInsets());
        } else {
            insets = Insets.NONE;
        }
        int i = this.mRotation;
        if (i != 0) {
            return RotationUtils.rotateInsets(insets, 4 - i);
        }
        return insets;
    }

    public int getStatusBarHeight() {
        return SystemBarUtils.getStatusBarHeight(this.mContext);
    }

    public final boolean isDisplayBoundsChanged() {
        boolean z;
        int i;
        int i2;
        DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(0);
        if (displayLayout == null) {
            return false;
        }
        int i3 = this.mRotation;
        if (i3 != 1 && i3 != 3) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = displayLayout.mHeight;
        } else {
            i = displayLayout.mWidth;
        }
        if (z) {
            i2 = displayLayout.mWidth;
        } else {
            i2 = displayLayout.mHeight;
        }
        if (!this.mDefaultDisplayBounds.isEmpty() && this.mDefaultDisplayBounds.width() == i && this.mDefaultDisplayBounds.height() == i2) {
            return false;
        }
        return true;
    }

    public final void onDisplayAreaAppeared(DisplayAreaInfo displayAreaInfo, SurfaceControl surfaceControl) {
        surfaceControl.setUnreleasedWarningCallSite("HideDisplayCutoutOrganizer.onDisplayAreaAppeared");
        if (!addDisplayAreaInfoAndLeashToMap(displayAreaInfo, surfaceControl)) {
            return;
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        applyBoundsAndOffsets(displayAreaInfo.token, surfaceControl, windowContainerTransaction, transaction);
        applyTransaction(windowContainerTransaction, transaction);
    }

    public final void onDisplayAreaVanished(DisplayAreaInfo displayAreaInfo) {
        synchronized (this) {
            if (!this.mDisplayAreaMap.containsKey(displayAreaInfo.token)) {
                Log.w("HideDisplayCutoutOrganizer", "Unrecognized token: " + displayAreaInfo.token);
                return;
            }
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            SurfaceControl surfaceControl = this.mDisplayAreaMap.get(displayAreaInfo.token);
            applyBoundsAndOffsets(displayAreaInfo.token, surfaceControl, windowContainerTransaction, transaction);
            applyTransaction(windowContainerTransaction, transaction);
            surfaceControl.release();
            this.mDisplayAreaMap.remove(displayAreaInfo.token);
        }
    }

    public void updateBoundsAndOffsets(boolean z) {
        boolean z2 = false;
        if (!z) {
            this.mCurrentDisplayBounds.setEmpty();
            this.mOffsetX = 0;
            this.mOffsetY = 0;
            return;
        }
        if (isDisplayBoundsChanged()) {
            this.mDefaultDisplayBounds.set(getDisplayBoundsOfNaturalOrientation());
            this.mDefaultCutoutInsets = getDisplayCutoutInsetsOfNaturalOrientation();
            this.mDefaultDisplayBounds.width();
            this.mDefaultDisplayBounds.height();
        }
        this.mCurrentDisplayBounds.set(this.mDefaultDisplayBounds);
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mCurrentCutoutInsets = RotationUtils.rotateInsets(this.mDefaultCutoutInsets, this.mRotation);
        int i = this.mRotation;
        if (i == 1 || i == 3) {
            z2 = true;
        }
        if (z2) {
            Rect rect = this.mCurrentDisplayBounds;
            rect.set(rect.top, rect.left, rect.bottom, rect.right);
        }
        this.mCurrentDisplayBounds.inset(this.mCurrentCutoutInsets);
        int statusBarHeight = getStatusBarHeight();
        this.mStatusBarHeight = statusBarHeight;
        int i2 = this.mCurrentCutoutInsets.top;
        if (i2 != 0) {
            this.mCurrentDisplayBounds.top = Math.max(statusBarHeight, i2);
        }
        Rect rect2 = this.mCurrentDisplayBounds;
        this.mOffsetX = rect2.left;
        this.mOffsetY = rect2.top;
    }
}
