package com.android.wm.shell.naturalswitching;

import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NaturalSwitchingAlgorithm {
    public int mDragTargetWindowingMode;
    public boolean mNeedToReparentCell;
    public int mPushRegion;
    public int mShrunkWindowingMode;
    public SplitScreenController mSplitScreenController;
    public int mSwapWindowingMode;
    public TaskVisibility mTaskVisibility;
    public int mToPosition;
    public boolean mUseSingleNonTarget;
    public int mDropSide = 0;
    public int mToWindowingMode = 0;
    public int mHalfTarget = 0;
    public int mSplitCreateMode = -1;

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00bc, code lost:
    
        if (r3 != 16) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(int r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NaturalSwitchingAlgorithm.update(int, int, boolean):void");
    }

    public final void updateForPush(int i) {
        int i2;
        if (this.mPushRegion != i) {
            this.mNeedToReparentCell = false;
            this.mPushRegion = i;
            int i3 = 5;
            if (i == 0) {
                if (CoreRune.MW_NATURAL_SWITCHING_PIP && this.mDragTargetWindowingMode == 2) {
                    i3 = 2;
                }
                this.mToWindowingMode = i3;
                this.mSplitCreateMode = -1;
                return;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            i2 = 0;
                        } else {
                            i2 = 64;
                        }
                    } else {
                        i2 = 32;
                    }
                } else {
                    i2 = 16;
                }
            } else {
                i2 = 8;
            }
            this.mToPosition = i2;
            this.mToWindowingMode = 3;
            int i4 = this.mDragTargetWindowingMode;
            if (i4 == 12 || NaturalSwitchingLayout.isFloating(i4)) {
                this.mNeedToReparentCell = true;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            i3 = -1;
                        } else {
                            i3 = 3;
                        }
                    } else {
                        i3 = 2;
                    }
                }
            } else {
                i3 = 4;
            }
            this.mSplitCreateMode = i3;
            this.mSwapWindowingMode = 0;
            this.mShrunkWindowingMode = 0;
        }
    }
}
