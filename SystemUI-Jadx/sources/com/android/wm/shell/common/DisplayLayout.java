package com.android.wm.shell.common;

import android.R;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.RotationUtils;
import android.util.Size;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.InsetsState;
import android.view.WindowInsets;
import com.android.internal.policy.SystemBarUtils;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.rune.CoreRune;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisplayLayout {
    public DisplayCutout mCutout;
    public int mDensityDpi;
    public int mHeight;
    public int mRotation;
    public int mUiMode;
    public int mWidth;
    public final Rect mNonDecorInsets = new Rect();
    public final Rect mStableInsets = new Rect();
    public boolean mHasNavigationBar = false;
    public boolean mHasStatusBar = false;
    public int mNavBarFrameHeight = 0;
    public boolean mAllowSeamlessRotationDespiteNavBarMoving = false;
    public boolean mNavigationBarCanMove = false;
    public boolean mReverseDefaultRotation = false;
    public InsetsState mInsetsState = new InsetsState();
    public final Rect mStableInsetsIgnoringCutout = new Rect();
    public final Rect mImmersiveStableInsets = new Rect();
    public final Rect mNaviStarStableInsets = new Rect();
    public final Rect mTempRect = new Rect();

    public DisplayLayout() {
    }

    public static DisplayCutout computeSafeInsets(DisplayCutout displayCutout, int i, int i2) {
        if (displayCutout == DisplayCutout.NO_CUTOUT) {
            return null;
        }
        Size size = new Size(i, i2);
        if (size.getWidth() != size.getHeight()) {
            return displayCutout.replaceSafeInsets(new Rect(Math.max(displayCutout.getWaterfallInsets().left, findCutoutInsetForSide(size, displayCutout.getBoundingRectLeft(), 3)), Math.max(displayCutout.getWaterfallInsets().top, findCutoutInsetForSide(size, displayCutout.getBoundingRectTop(), 48)), Math.max(displayCutout.getWaterfallInsets().right, findCutoutInsetForSide(size, displayCutout.getBoundingRectRight(), 5)), Math.max(displayCutout.getWaterfallInsets().bottom, findCutoutInsetForSide(size, displayCutout.getBoundingRectBottom(), 80))));
        }
        throw new UnsupportedOperationException("not implemented: display=" + size + " cutout=" + displayCutout);
    }

    public static int findCutoutInsetForSide(Size size, Rect rect, int i) {
        if (rect.isEmpty()) {
            return 0;
        }
        if (i != 3) {
            if (i != 5) {
                if (i != 48) {
                    if (i == 80) {
                        return Math.max(0, size.getHeight() - rect.top);
                    }
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown gravity: ", i));
                }
                return Math.max(0, rect.bottom);
            }
            return Math.max(0, size.getWidth() - rect.left);
        }
        return Math.max(0, rect.right);
    }

    public static int navigationBarPosition(Resources resources, int i, int i2, int i3) {
        boolean z;
        boolean z2 = false;
        if (i != i2 && resources.getBoolean(17891775)) {
            z = true;
        } else {
            z = false;
        }
        if (!CoreRune.FW_NAVBAR_MOVABLE_POLICY) {
            z2 = z;
        }
        if (z2 && i > i2) {
            if (i3 != 1) {
                return 1;
            }
            return 2;
        }
        return 4;
    }

    public final float density() {
        return this.mDensityDpi * 0.00625f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayLayout)) {
            return false;
        }
        DisplayLayout displayLayout = (DisplayLayout) obj;
        if (this.mUiMode == displayLayout.mUiMode && this.mWidth == displayLayout.mWidth && this.mHeight == displayLayout.mHeight && Objects.equals(this.mCutout, displayLayout.mCutout) && this.mRotation == displayLayout.mRotation && this.mDensityDpi == displayLayout.mDensityDpi && Objects.equals(this.mNonDecorInsets, displayLayout.mNonDecorInsets) && Objects.equals(this.mStableInsets, displayLayout.mStableInsets) && this.mHasNavigationBar == displayLayout.mHasNavigationBar && this.mHasStatusBar == displayLayout.mHasStatusBar && this.mAllowSeamlessRotationDespiteNavBarMoving == displayLayout.mAllowSeamlessRotationDespiteNavBarMoving && this.mNavigationBarCanMove == displayLayout.mNavigationBarCanMove && this.mReverseDefaultRotation == displayLayout.mReverseDefaultRotation && this.mNavBarFrameHeight == displayLayout.mNavBarFrameHeight && Objects.equals(this.mInsetsState, displayLayout.mInsetsState)) {
            return true;
        }
        return false;
    }

    public final void getDisplayBounds(Rect rect) {
        rect.set(0, 0, this.mWidth, this.mHeight);
    }

    public final void getStableBounds(Rect rect, boolean z) {
        rect.set(0, 0, this.mWidth, this.mHeight);
        rect.inset(stableInsets(z));
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.mUiMode), Integer.valueOf(this.mWidth), Integer.valueOf(this.mHeight), this.mCutout, Integer.valueOf(this.mRotation), Integer.valueOf(this.mDensityDpi), this.mNonDecorInsets, this.mStableInsets, Boolean.valueOf(this.mHasNavigationBar), Boolean.valueOf(this.mHasStatusBar), Integer.valueOf(this.mNavBarFrameHeight), Boolean.valueOf(this.mAllowSeamlessRotationDespiteNavBarMoving), Boolean.valueOf(this.mNavigationBarCanMove), Boolean.valueOf(this.mReverseDefaultRotation), this.mInsetsState);
    }

    public final void init(DisplayInfo displayInfo, Resources resources, boolean z, boolean z2) {
        this.mUiMode = resources.getConfiguration().uiMode;
        this.mWidth = displayInfo.logicalWidth;
        this.mHeight = displayInfo.logicalHeight;
        this.mRotation = displayInfo.rotation;
        this.mCutout = displayInfo.displayCutout;
        this.mDensityDpi = displayInfo.logicalDensityDpi;
        this.mHasNavigationBar = z;
        this.mHasStatusBar = z2;
        this.mAllowSeamlessRotationDespiteNavBarMoving = resources.getBoolean(R.bool.config_animateScreenLights);
        this.mNavigationBarCanMove = resources.getBoolean(17891775);
        this.mReverseDefaultRotation = resources.getBoolean(17891810);
        recalcInsets(resources);
    }

    public void recalcInsets(Resources resources) {
        int i;
        boolean z;
        boolean z2;
        int dimensionPixelSize;
        int i2;
        int i3;
        int i4 = this.mRotation;
        int i5 = this.mWidth;
        int i6 = this.mHeight;
        DisplayCutout displayCutout = this.mCutout;
        InsetsState insetsState = this.mInsetsState;
        int i7 = this.mUiMode;
        boolean z3 = this.mHasNavigationBar;
        Rect rect = this.mNonDecorInsets;
        rect.setEmpty();
        Rect rect2 = new Rect();
        Insets calculateInsets = insetsState.calculateInsets(insetsState.getDisplayFrame(), WindowInsets.Type.navigationBars(), false);
        boolean z4 = true;
        if (z3) {
            Insets calculateInsets2 = insetsState.calculateInsets(insetsState.getDisplayFrame(), WindowInsets.Type.navigationBars(), false);
            int navigationBarPosition = navigationBarPosition(resources, i5, i6, i4);
            if (i5 > i6) {
                z = true;
            } else {
                z = false;
            }
            if ((i7 & 15) == 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (navigationBarPosition == 4) {
                    if (z) {
                        i3 = R.dimen.text_size_display_4_material;
                    } else {
                        i3 = R.dimen.text_size_display_2_material;
                    }
                    dimensionPixelSize = resources.getDimensionPixelSize(i3);
                } else {
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.text_size_medium_material);
                }
            } else if (navigationBarPosition == 4) {
                if (z) {
                    i2 = R.dimen.text_size_display_3_material;
                } else {
                    i2 = R.dimen.text_size_display_1_material;
                }
                dimensionPixelSize = resources.getDimensionPixelSize(i2);
            } else {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.text_size_large_material);
            }
            if (navigationBarPosition == 4) {
                rect.bottom = Math.max(calculateInsets2.bottom, dimensionPixelSize);
            } else if (navigationBarPosition == 2) {
                rect.right = Math.max(calculateInsets2.right, dimensionPixelSize);
            } else if (navigationBarPosition == 1) {
                rect.left = Math.max(calculateInsets2.left, dimensionPixelSize);
            }
        } else if (!calculateInsets.toRect().equals(rect2)) {
            int i8 = calculateInsets.bottom;
            if (i8 != 0) {
                rect.bottom = i8;
            } else {
                int i9 = calculateInsets.right;
                if (i9 != 0) {
                    rect.right = i9;
                } else {
                    int i10 = calculateInsets.left;
                    if (i10 != 0) {
                        rect.left = i10;
                    }
                }
            }
        }
        if (displayCutout != null) {
            rect.left = displayCutout.getSafeInsetLeft() + rect.left;
            rect.top = displayCutout.getSafeInsetTop() + rect.top;
            rect.right = displayCutout.getSafeInsetRight() + rect.right;
            rect.bottom = displayCutout.getSafeInsetBottom() + rect.bottom;
        }
        Rect rect3 = this.mStableInsets;
        rect3.set(rect);
        if (this.mHasStatusBar && !resources.getConfiguration().isDexMode()) {
            DisplayCutout displayCutout2 = this.mCutout;
            if (this.mHasStatusBar) {
                rect3.top = Math.max(rect3.top, SystemBarUtils.getStatusBarHeight(resources, displayCutout2));
            }
        }
        if (this.mWidth <= this.mHeight) {
            z4 = false;
        }
        if (z4) {
            i = R.dimen.text_size_body_1_material;
        } else {
            i = R.dimen.text_line_spacing_multiplier_material;
        }
        this.mNavBarFrameHeight = resources.getDimensionPixelSize(i);
        this.mImmersiveStableInsets.setEmpty();
        this.mNaviStarStableInsets.set(rect3.left, rect3.top, rect3.right, 0);
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT && this.mCutout != null) {
            Rect rect4 = this.mStableInsetsIgnoringCutout;
            rect4.set(rect3);
            if (this.mCutout.getSafeInsetLeft() > 0) {
                rect4.left -= this.mCutout.getSafeInsetLeft();
            }
            if (this.mCutout.getSafeInsetRight() > 0) {
                rect4.right -= this.mCutout.getSafeInsetRight();
            }
            if (this.mHasNavigationBar && navigationBarPosition(resources, this.mWidth, this.mHeight, this.mRotation) == 4 && this.mCutout.getSafeInsetBottom() > 0) {
                rect4.bottom -= this.mCutout.getSafeInsetBottom();
            }
        }
    }

    public final void rotateTo(int i, Resources resources) {
        boolean z;
        DisplayCutout displayCutout;
        boolean z2;
        int i2;
        int i3;
        int i4 = ((i - this.mRotation) + 4) % 4;
        if (i4 % 2 != 0) {
            z = true;
        } else {
            z = false;
        }
        int i5 = this.mWidth;
        int i6 = this.mHeight;
        this.mRotation = i;
        if (z) {
            this.mWidth = i6;
            this.mHeight = i5;
        }
        DisplayCutout displayCutout2 = this.mCutout;
        if (displayCutout2 != null && !displayCutout2.isEmpty()) {
            DisplayCutout displayCutout3 = this.mCutout;
            if (displayCutout3 != null && displayCutout3 != DisplayCutout.NO_CUTOUT) {
                if (i4 == 0) {
                    displayCutout = computeSafeInsets(displayCutout3, i5, i6);
                } else {
                    Insets rotateInsets = RotationUtils.rotateInsets(displayCutout3.getWaterfallInsets(), i4);
                    if (i4 != 1 && i4 != 3) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    Rect[] boundingRectsAll = displayCutout3.getBoundingRectsAll();
                    Rect[] rectArr = new Rect[boundingRectsAll.length];
                    Rect rect = new Rect(0, 0, i5, i6);
                    for (int i7 = 0; i7 < boundingRectsAll.length; i7++) {
                        Rect rect2 = new Rect(boundingRectsAll[i7]);
                        if (!rect2.isEmpty()) {
                            RotationUtils.rotateBounds(rect2, rect, i4);
                        }
                        int i8 = i7 - i4;
                        if (i8 < 0) {
                            i8 += 4;
                        }
                        rectArr[i8] = rect2;
                    }
                    DisplayCutout.CutoutPathParserInfo cutoutPathParserInfo = displayCutout3.getCutoutPathParserInfo();
                    DisplayCutout constructDisplayCutout = DisplayCutout.constructDisplayCutout(rectArr, rotateInsets, new DisplayCutout.CutoutPathParserInfo(cutoutPathParserInfo.getDisplayWidth(), cutoutPathParserInfo.getDisplayHeight(), cutoutPathParserInfo.getPhysicalDisplayWidth(), cutoutPathParserInfo.getPhysicalDisplayHeight(), cutoutPathParserInfo.getDensity(), cutoutPathParserInfo.getCutoutSpec(), i, cutoutPathParserInfo.getScale(), cutoutPathParserInfo.getPhysicalPixelDisplaySizeRatio()));
                    if (z2) {
                        i2 = i6;
                    } else {
                        i2 = i5;
                    }
                    if (z2) {
                        i3 = i5;
                    } else {
                        i3 = i6;
                    }
                    displayCutout = computeSafeInsets(constructDisplayCutout, i2, i3);
                }
            } else {
                displayCutout = null;
            }
            this.mCutout = displayCutout;
        }
        recalcInsets(resources);
    }

    public final void set(DisplayLayout displayLayout) {
        this.mUiMode = displayLayout.mUiMode;
        this.mWidth = displayLayout.mWidth;
        this.mHeight = displayLayout.mHeight;
        this.mCutout = displayLayout.mCutout;
        this.mRotation = displayLayout.mRotation;
        this.mDensityDpi = displayLayout.mDensityDpi;
        this.mHasNavigationBar = displayLayout.mHasNavigationBar;
        this.mHasStatusBar = displayLayout.mHasStatusBar;
        this.mAllowSeamlessRotationDespiteNavBarMoving = displayLayout.mAllowSeamlessRotationDespiteNavBarMoving;
        this.mNavigationBarCanMove = displayLayout.mNavigationBarCanMove;
        this.mReverseDefaultRotation = displayLayout.mReverseDefaultRotation;
        this.mNavBarFrameHeight = displayLayout.mNavBarFrameHeight;
        this.mNonDecorInsets.set(displayLayout.mNonDecorInsets);
        Rect rect = displayLayout.mStableInsets;
        Rect rect2 = this.mStableInsets;
        rect2.set(rect);
        this.mInsetsState.set(displayLayout.mInsetsState, true);
        this.mImmersiveStableInsets.set(displayLayout.mImmersiveStableInsets);
        this.mNaviStarStableInsets.set(rect2.left, rect2.top, rect2.right, 0);
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT) {
            this.mStableInsetsIgnoringCutout.set(displayLayout.mStableInsetsIgnoringCutout);
        }
    }

    public final Rect stableInsets(boolean z) {
        Rect rect = this.mTempRect;
        if (z && MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED) {
            rect.set(this.mImmersiveStableInsets);
            return rect;
        }
        if (z && MultiWindowCoreState.MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED) {
            rect.set(this.mNaviStarStableInsets);
            return rect;
        }
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT && z && this.mCutout != null) {
            rect.set(this.mStableInsetsIgnoringCutout);
            return rect;
        }
        rect.set(this.mStableInsets);
        return rect;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(super.toString());
        sb.append("\n{ mWidth=");
        sb.append(this.mWidth);
        sb.append(", mHeight=");
        sb.append(this.mHeight);
        sb.append(", mRotation=");
        sb.append(this.mRotation);
        sb.append(", mNonDecorInsets=");
        sb.append(this.mNonDecorInsets);
        sb.append(", mStableInsets=");
        sb.append(this.mStableInsets);
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT) {
            sb.append(", mStableInsetsWithoutCutout=");
            sb.append(this.mStableInsetsIgnoringCutout);
        }
        sb.append(", mHasNavigationBar=" + this.mHasNavigationBar);
        sb.append(", mImmersiveStableInsets=");
        sb.append(this.mImmersiveStableInsets);
        sb.append(", mNaviStarStableInsets=");
        sb.append(this.mNaviStarStableInsets);
        sb.append(" }");
        return sb.toString();
    }

    public DisplayLayout(DisplayInfo displayInfo, Resources resources, boolean z, boolean z2) {
        init(displayInfo, resources, z, z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
    
        if (r4 != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DisplayLayout(android.content.Context r7, android.view.Display r8) {
        /*
            r6 = this;
            r6.<init>()
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r6.mNonDecorInsets = r0
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r6.mStableInsets = r0
            r0 = 0
            r6.mHasNavigationBar = r0
            r6.mHasStatusBar = r0
            r6.mNavBarFrameHeight = r0
            r6.mAllowSeamlessRotationDespiteNavBarMoving = r0
            r6.mNavigationBarCanMove = r0
            r6.mReverseDefaultRotation = r0
            android.view.InsetsState r1 = new android.view.InsetsState
            r1.<init>()
            r6.mInsetsState = r1
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r6.mStableInsetsIgnoringCutout = r1
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r6.mImmersiveStableInsets = r1
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r6.mNaviStarStableInsets = r1
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r6.mTempRect = r1
            int r1 = r8.getDisplayId()
            android.view.DisplayInfo r2 = new android.view.DisplayInfo
            r2.<init>()
            r8.getDisplayInfo(r2)
            android.content.res.Resources r8 = r7.getResources()
            r3 = 1
            if (r1 != 0) goto L79
            java.lang.String r4 = "qemu.hw.mainkeys"
            java.lang.String r4 = android.os.SystemProperties.get(r4)
            java.lang.String r5 = "1"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L64
            goto La1
        L64:
            java.lang.String r5 = "0"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L6d
            goto La3
        L6d:
            android.content.res.Resources r7 = r7.getResources()
            r4 = 17891826(0x11101f2, float:2.663369E-38)
            boolean r7 = r7.getBoolean(r4)
            goto La4
        L79:
            int r4 = r2.type
            r5 = 5
            if (r4 != r5) goto L86
            int r4 = r2.ownerUid
            r5 = 1000(0x3e8, float:1.401E-42)
            if (r4 == r5) goto L86
            r4 = r3
            goto L87
        L86:
            r4 = r0
        L87:
            android.content.ContentResolver r7 = r7.getContentResolver()
            java.lang.String r5 = "force_desktop_mode_on_external_displays"
            int r7 = android.provider.Settings.Global.getInt(r7, r5, r0)
            if (r7 == 0) goto L95
            r7 = r3
            goto L96
        L95:
            r7 = r0
        L96:
            int r5 = r2.flags
            r5 = r5 & 64
            if (r5 != 0) goto La3
            if (r7 == 0) goto La1
            if (r4 != 0) goto La1
            goto La3
        La1:
            r7 = r0
            goto La4
        La3:
            r7 = r3
        La4:
            if (r1 != 0) goto La7
            r0 = r3
        La7:
            r6.init(r2, r8, r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.DisplayLayout.<init>(android.content.Context, android.view.Display):void");
    }

    public DisplayLayout(DisplayLayout displayLayout) {
        set(displayLayout);
    }
}
