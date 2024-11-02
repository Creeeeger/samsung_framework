package com.android.wm.shell.freeform;

import android.app.ActivityThread;
import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.systemui.R;
import com.samsung.android.multiwindow.MultiWindowUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DexSnappingGuide {
    public final int mBoundaryFinger;
    public final int mBoundaryMouse;
    public boolean mIsAttached;
    public int mPointerAlpha;
    public final DexSnappingGuideView mView;
    public final WindowManager mWindowManager;
    public final Rect mSnappingBounds = new Rect();
    public final Rect mSnappingOtherBounds = new Rect();
    public final Rect mVisibleFrame = new Rect();
    public int mLastSnapType = 0;
    public int mPointerPosition = 0;

    public DexSnappingGuide(Context context) {
        this.mIsAttached = false;
        context = context == null ? ActivityThread.currentActivityThread().getSystemUiContext() : context;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.mWindowManager = windowManager;
        DexSnappingGuideView dexSnappingGuideView = (DexSnappingGuideView) LayoutInflater.from(context).inflate(R.layout.dex_snapping_guide, (ViewGroup) null);
        this.mView = dexSnappingGuideView;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 66328, -2);
        layoutParams.setTitle("DexSnappingGuideWindow");
        layoutParams.gravity = 8388659;
        layoutParams.privateFlags |= 16;
        windowManager.addView(dexSnappingGuideView, layoutParams);
        this.mIsAttached = true;
        this.mBoundaryMouse = context.getResources().getDimensionPixelSize(R.dimen.dex_snapping_guide_boundary_mouse);
        this.mBoundaryFinger = context.getResources().getDimensionPixelSize(R.dimen.dex_snapping_guide_boundary_finger);
    }

    public static void calculateGuideSize(int i, int i2, Rect rect, Rect rect2, Rect rect3) {
        rect2.set(rect);
        rect3.set(rect);
        int width = (rect.width() / 2) - i2;
        int height = rect.height() / 2;
        if ((i & 1) != 0) {
            rect2.right = width;
        }
        if ((i & 2) != 0 && (i == 3 || i == 6)) {
            rect2.bottom = height;
        }
        if ((i & 4) != 0) {
            rect2.left = width + i2;
        }
        if ((i & 8) != 0) {
            rect2.top = height;
        }
        if (i == 1) {
            rect3.left = width + i2;
            return;
        }
        if (i == 2) {
            rect3.setEmpty();
        } else if (i == 4) {
            rect3.right = width;
        } else {
            rect3.setEmpty();
        }
    }

    public final int show(float f, float f2, TaskInfo taskInfo, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        int i5;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        Rect rect = this.mVisibleFrame;
        int width = rect.width();
        int height = rect.height();
        int round = Math.round(f);
        int round2 = Math.round(f2);
        if (z) {
            i3 = this.mBoundaryFinger;
        } else {
            i3 = this.mBoundaryMouse;
        }
        if (round >= 0 && round <= i3) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        if (round2 >= 0 && round2 <= i3) {
            i4 |= 2;
        }
        if (round >= width - i3) {
            i4 |= 4;
        }
        if (round2 >= height - i3) {
            i4 |= 8;
        }
        if (i4 == 8) {
            i4 = 0;
        }
        if (taskInfo.getConfiguration().dexCompatEnabled == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        DexSnappingGuideView dexSnappingGuideView = this.mView;
        if ((!z2 && taskInfo.supportsMultiWindow) || i4 == 2) {
            int windowingMode = taskInfo.getWindowingMode();
            if (taskInfo.getConfiguration().isNewDexMode() && taskInfo.getConfiguration().windowConfiguration.isSplitScreen()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (windowingMode != 1 && i4 == (i5 = this.mLastSnapType) && !z3) {
                return i5;
            }
            Rect rect2 = this.mSnappingBounds;
            rect2.setEmpty();
            Rect rect3 = this.mSnappingOtherBounds;
            rect3.setEmpty();
            if (windowingMode != 1 && !z3) {
                if (i4 == 0) {
                    dexSnappingGuideView.setVisibility(4);
                } else {
                    if (MultiWindowUtils.isTablet() && !taskInfo.getConfiguration().isDesktopModeEnabled() && (i != 3 || i4 != 2)) {
                        return 0;
                    }
                    calculateGuideSize(i4, i2, rect, rect2, rect3);
                    dexSnappingGuideView.show(i4, rect2);
                }
            } else if (i4 == 0) {
                int width2 = rect.width();
                Rect rect4 = taskInfo.snappingGuideBounds;
                if (this.mPointerPosition == 0) {
                    int round3 = Math.round(f);
                    int i6 = width2 - round3;
                    if (round3 > i6) {
                        this.mPointerAlpha = i6;
                        this.mPointerPosition = 4;
                    } else {
                        this.mPointerAlpha = round3;
                        this.mPointerPosition = 1;
                    }
                }
                int round4 = Math.round(f);
                int round5 = Math.round(f2);
                rect2.top = round5;
                rect2.bottom = rect4.height() + round5;
                if (this.mPointerAlpha >= rect4.width() / 2) {
                    int width3 = round4 - (rect4.width() / 2);
                    rect2.left = width3;
                    rect2.right = rect4.width() + width3;
                } else {
                    int i7 = this.mPointerPosition;
                    if (i7 == 1) {
                        int i8 = round4 - this.mPointerAlpha;
                        rect2.left = i8;
                        rect2.right = rect4.width() + i8;
                    } else if (i7 == 4) {
                        int i9 = round4 + this.mPointerAlpha;
                        rect2.right = i9;
                        rect2.left = i9 - rect4.width();
                    }
                }
                rect3.setEmpty();
                dexSnappingGuideView.show(i4, rect2);
            } else if ((i4 & 1) != 0 || (i4 & 4) != 0) {
                calculateGuideSize(i4, i2, rect, rect2, rect3);
                dexSnappingGuideView.show(i4, rect2);
            }
            this.mLastSnapType = i4;
            return i4;
        }
        dexSnappingGuideView.setVisibility(4);
        this.mLastSnapType = 0;
        return 0;
    }
}
