package com.android.wm.shell.bubbles;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.UserHandle;
import android.util.Log;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.QpShellRune;
import com.android.wm.shell.bubbles.BubbleStackView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubblePositioner {
    public int mBubbleBarSize;
    public int mBubbleOffscreenAmount;
    public int mBubblePaddingTop;
    public int mBubbleSize;
    public final Context mContext;
    public int mDefaultMaxBubbles;
    public int mExpandedViewLargeScreenWidth;
    public int mExpandedViewMinHeight;
    public int mExpandedViewPadding;
    public int mImeHeight;
    public boolean mImeVisible;
    public Insets mInsets;
    public int mManageButtonHeight;
    public int mMaxBubbles;
    public int mOverflowHeight;
    public int mPointerHeight;
    public int mPointerMargin;
    public int mPointerOverlap;
    public int mPointerWidth;
    public Rect mPositionRect;
    public PointF mRestingStackPosition;
    public Rect mScreenRect;
    public boolean mShowingInBubbleBar;
    public int mSpacingBetweenBubbles;
    public int mStackOffset;
    public final WindowManager mWindowManager;
    public int mRotation = 0;
    public final int[] mPaddings = new int[4];

    public BubblePositioner(Context context, WindowManager windowManager) {
        new PointF();
        this.mContext = context;
        this.mWindowManager = windowManager;
        update();
    }

    public final RectF getAllowableStackPositionRegion(int i) {
        int i2;
        int i3;
        RectF rectF = new RectF(this.mPositionRect);
        if (this.mImeVisible) {
            i2 = this.mImeHeight;
        } else {
            i2 = 0;
        }
        if (i > 1) {
            i3 = this.mBubblePaddingTop + this.mStackOffset;
        } else {
            i3 = this.mBubblePaddingTop;
        }
        rectF.left = rectF.left - (-this.mBubbleOffscreenAmount);
        rectF.top += this.mBubblePaddingTop;
        float f = rectF.right;
        int i4 = this.mBubbleSize;
        rectF.right = f + (r3 - i4);
        rectF.bottom -= (i2 + i3) + i4;
        return rectF;
    }

    public final PointF getDefaultStartPosition() {
        boolean z;
        float f;
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(this.mContext) != 1) {
            z = true;
        } else {
            z = false;
        }
        BubbleStackView.RelativeStackPosition relativeStackPosition = new BubbleStackView.RelativeStackPosition(z, r0.getResources().getDimensionPixelOffset(R.dimen.bubble_stack_starting_offset_y) / this.mPositionRect.height());
        RectF allowableStackPositionRegion = getAllowableStackPositionRegion(1);
        if (relativeStackPosition.mOnLeft) {
            f = allowableStackPositionRegion.left;
        } else {
            f = allowableStackPositionRegion.right;
        }
        return new PointF(f, (allowableStackPositionRegion.height() * relativeStackPosition.mVerticalOffsetPercent) + allowableStackPositionRegion.top);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.PointF getExpandedBubbleXY(int r9, com.android.wm.shell.bubbles.BubbleStackView.StackViewState r10) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.BubblePositioner.getExpandedBubbleXY(int, com.android.wm.shell.bubbles.BubbleStackView$StackViewState):android.graphics.PointF");
    }

    public final int[] getExpandedViewContainerPadding(boolean z) {
        int i;
        int i2 = this.mPointerHeight - this.mPointerOverlap;
        Insets insets = this.mInsets;
        int i3 = insets.left;
        int i4 = this.mExpandedViewPadding;
        int i5 = i3 + i4;
        int i6 = insets.right + i4;
        if (showBubblesVertically()) {
            if (!z) {
                i6 += this.mBubbleSize - i2;
                i5 = (int) (i5 + 0.0f);
            } else {
                i5 += this.mBubbleSize - i2;
                i6 = (int) (i6 + 0.0f);
            }
        }
        int[] iArr = this.mPaddings;
        iArr[0] = i5;
        if (showBubblesVertically()) {
            i = 0;
        } else {
            i = this.mPointerMargin;
        }
        iArr[1] = i;
        iArr[2] = i6;
        iArr[3] = 0;
        if (QpShellRune.NOTI_BUBBLE_STYLE_TABLET) {
            int tabletSidePadding = getTabletSidePadding();
            iArr[2] = tabletSidePadding;
            iArr[0] = tabletSidePadding;
        }
        return iArr;
    }

    public final float getExpandedViewHeight(BubbleViewProvider bubbleViewProvider) {
        boolean z;
        float f;
        boolean z2 = true;
        if (bubbleViewProvider != null && !"Overflow".equals(bubbleViewProvider.getKey())) {
            z = false;
        } else {
            z = true;
        }
        if (z && showBubblesVertically()) {
            return -1.0f;
        }
        if (z) {
            f = this.mOverflowHeight;
        } else {
            Bubble bubble = (Bubble) bubbleViewProvider;
            int i = bubble.mDesiredHeightResId;
            if (i == 0) {
                z2 = false;
            }
            Context context = this.mContext;
            if (z2) {
                String str = bubble.mPackageName;
                int identifier = bubble.mUser.getIdentifier();
                if (str != null) {
                    if (identifier == -1) {
                        identifier = 0;
                    }
                    try {
                        context.createContextAsUser(UserHandle.of(identifier), 0).getPackageManager().getResourcesForApplication(str).getDimensionPixelSize(i);
                    } catch (PackageManager.NameNotFoundException unused) {
                    } catch (Resources.NotFoundException e) {
                        Log.e("Bubble", "Couldn't find desired height res id", e);
                    }
                }
                f = 0;
            } else {
                f = bubble.mDesiredHeight * context.getResources().getDisplayMetrics().density;
            }
        }
        float max = Math.max(f, this.mExpandedViewMinHeight);
        if (max > getMaxExpandedViewHeight()) {
            return -1.0f;
        }
        return max;
    }

    public final float getExpandedViewY(BubbleViewProvider bubbleViewProvider, float f) {
        boolean z;
        int i;
        if (bubbleViewProvider != null && !"Overflow".equals(bubbleViewProvider.getKey())) {
            z = false;
        } else {
            z = true;
        }
        float expandedViewHeight = getExpandedViewHeight(bubbleViewProvider);
        float expandedViewYTopAligned = getExpandedViewYTopAligned();
        if (showBubblesVertically() && expandedViewHeight != -1.0f) {
            if (z) {
                i = this.mExpandedViewPadding;
            } else {
                i = this.mManageButtonHeight;
            }
            float pointerPosition = getPointerPosition(f);
            float f2 = expandedViewHeight / 2.0f;
            float f3 = pointerPosition + f2 + i;
            float f4 = pointerPosition - f2;
            int i2 = this.mPositionRect.top;
            if (f4 > i2 && r5.bottom > f3) {
                return (pointerPosition - this.mPointerWidth) - f2;
            }
            if (f4 <= i2) {
                return expandedViewYTopAligned;
            }
            return ((r5.bottom - i) - expandedViewHeight) - this.mPointerWidth;
        }
        return expandedViewYTopAligned;
    }

    public final float getExpandedViewYTopAligned() {
        int i;
        int i2 = this.mPositionRect.top;
        if (showBubblesVertically()) {
            int i3 = (-this.mPointerWidth) + this.mExpandedViewPadding;
            if (QpShellRune.NOTI_BUBBLE_STYLE_TABLET) {
                i = -1;
            } else {
                i = 1;
            }
            return (i3 * i) + i2;
        }
        return i2 + this.mBubbleSize + this.mPointerMargin;
    }

    public final int getMaxExpandedViewHeight() {
        int i;
        int i2 = 0;
        int expandedViewYTopAligned = ((int) getExpandedViewYTopAligned()) - 0;
        if (!showBubblesVertically()) {
            i2 = this.mPointerHeight;
        }
        if (showBubblesVertically()) {
            i = this.mPointerWidth;
        } else {
            i = this.mPointerHeight + this.mPointerMargin;
        }
        return (((this.mPositionRect.height() - expandedViewYTopAligned) - i2) - i) - this.mExpandedViewPadding;
    }

    public final float getPointerPosition(float f) {
        int i = this.mBubbleSize;
        float round = (int) Math.round(Math.sqrt((((i * i) * 0.6597222f) * 4.0f) / 3.141592653589793d));
        if (showBubblesVertically()) {
            return (this.mBubbleSize / 2.0f) + f;
        }
        return ((round / 2.0f) + f) - this.mPointerWidth;
    }

    public final PointF getRestingPosition() {
        PointF pointF = this.mRestingStackPosition;
        if (pointF == null) {
            return getDefaultStartPosition();
        }
        return pointF;
    }

    public final int getTabletSidePadding() {
        return (this.mPositionRect.width() - ((int) (r4.width() * 0.85d))) / 2;
    }

    public final boolean isLandscape() {
        if (this.mContext.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public final void setRestingPosition(PointF pointF) {
        PointF pointF2 = this.mRestingStackPosition;
        if (pointF2 == null) {
            this.mRestingStackPosition = new PointF(pointF);
        } else {
            pointF2.set(pointF);
        }
    }

    public final boolean showBubblesVertically() {
        if (!isLandscape()) {
            return false;
        }
        return true;
    }

    public final void update() {
        WindowMetrics currentWindowMetrics = this.mWindowManager.getCurrentWindowMetrics();
        if (currentWindowMetrics == null) {
            return;
        }
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.statusBars() | WindowInsets.Type.displayCutout());
        Rect bounds = currentWindowMetrics.getBounds();
        this.mContext.getResources().getConfiguration();
        Log.w("Bubbles", "update positioner: rotation: " + this.mRotation + " insets: " + insetsIgnoringVisibility + " isLargeScreen: false isSmallTablet: false showingInBubbleBar: " + this.mShowingInBubbleBar + " bounds: " + bounds);
        updateInternal(this.mRotation, insetsIgnoringVisibility, bounds);
    }

    public void updateInternal(int i, Insets insets, Rect rect) {
        float width;
        float width2;
        this.mRotation = i;
        this.mInsets = insets;
        this.mScreenRect = new Rect(rect);
        Rect rect2 = new Rect(rect);
        this.mPositionRect = rect2;
        int i2 = rect2.left;
        Insets insets2 = this.mInsets;
        rect2.left = i2 + insets2.left;
        rect2.top += insets2.top;
        rect2.right -= insets2.right;
        rect2.bottom -= insets2.bottom;
        Resources resources = this.mContext.getResources();
        this.mBubbleSize = resources.getDimensionPixelSize(R.dimen.bubble_size);
        this.mSpacingBetweenBubbles = resources.getDimensionPixelSize(R.dimen.bubble_spacing);
        this.mDefaultMaxBubbles = resources.getInteger(R.integer.bubbles_max_rendered);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bubble_expanded_view_padding);
        this.mExpandedViewPadding = dimensionPixelSize;
        int i3 = dimensionPixelSize / 2;
        this.mBubblePaddingTop = resources.getDimensionPixelSize(R.dimen.bubble_padding_top);
        this.mBubbleOffscreenAmount = resources.getDimensionPixelSize(R.dimen.bubble_stack_offscreen);
        this.mStackOffset = resources.getDimensionPixelSize(R.dimen.bubble_stack_offset);
        this.mBubbleBarSize = resources.getDimensionPixelSize(R.dimen.bubblebar_size);
        if (this.mShowingInBubbleBar) {
            if (isLandscape()) {
                width2 = rect.width() * 0.4f;
            } else {
                width2 = rect.width() * 0.7f;
            }
            this.mExpandedViewLargeScreenWidth = (int) width2;
        } else {
            if (isLandscape()) {
                width = rect.width() * 0.48f;
            } else {
                width = rect.width() * 0.7f;
            }
            this.mExpandedViewLargeScreenWidth = (int) width;
        }
        resources.getDimensionPixelSize(R.dimen.bubble_expanded_view_overflow_width);
        this.mPointerWidth = resources.getDimensionPixelSize(R.dimen.bubble_pointer_width);
        this.mPointerHeight = resources.getDimensionPixelSize(R.dimen.bubble_pointer_height);
        this.mPointerMargin = resources.getDimensionPixelSize(R.dimen.bubble_pointer_margin);
        this.mPointerOverlap = resources.getDimensionPixelSize(R.dimen.bubble_pointer_overlap);
        this.mManageButtonHeight = resources.getDimensionPixelSize(R.dimen.bubble_manage_button_total_height);
        this.mExpandedViewMinHeight = resources.getDimensionPixelSize(R.dimen.bubble_expanded_default_height);
        this.mOverflowHeight = resources.getDimensionPixelSize(R.dimen.bubble_overflow_height);
        resources.getDimensionPixelSize(R.dimen.bubbles_flyout_min_width_large_screen);
        this.mMaxBubbles = this.mDefaultMaxBubbles;
    }
}
