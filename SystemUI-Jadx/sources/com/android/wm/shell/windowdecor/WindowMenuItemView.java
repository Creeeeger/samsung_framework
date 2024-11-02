package com.android.wm.shell.windowdecor;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.widget.ImageButton;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WindowMenuItemView extends ImageButton implements TaskFocusStateConsumer {
    public static final int[] TASK_FOCUSED_STATE = {R.attr.state_task_focused};
    public final boolean mHasIconBackground;
    public final Paint mIconBackgroundPaint;
    public final int mIconSize;
    public boolean mIsRtlLayout;
    public boolean mIsTaskFocused;
    public boolean mShowIconBackground;
    public int mTopFrameInset;

    public WindowMenuItemView(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, android.R.style.Theme.DeviceDefault.DayNight), attributeSet);
        Paint paint = new Paint();
        this.mIconBackgroundPaint = paint;
        TypedArray obtainStyledAttributes = ((ImageButton) this).mContext.obtainStyledAttributes(attributeSet, com.android.wm.shell.R.styleable.WindowMenuItemView);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        this.mHasIconBackground = z;
        obtainStyledAttributes.recycle();
        setFocusable(false);
        CharSequence contentDescription = getContentDescription();
        if (contentDescription != null) {
            semSetHoverPopupType(0);
            setTooltipText(contentDescription);
        }
        updateRippleBackground();
        if (z) {
            Resources resources = getResources();
            this.mIconSize = resources.getDimensionPixelSize(R.dimen.sec_decor_icon_size);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(resources.getColor(R.color.sec_decor_icon_circle_background_color, null));
            paint.setAntiAlias(true);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (!this.mIsTaskFocused) {
            return super.onCreateDrawableState(i);
        }
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        ImageButton.mergeDrawableStates(onCreateDrawableState, TASK_FOCUSED_STATE);
        return onCreateDrawableState;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int paddingStart;
        if (this.mHasIconBackground && this.mShowIconBackground) {
            if (this.mIsRtlLayout) {
                width = (getWidth() - this.mIconSize) / 2;
                paddingStart = (getPaddingEnd() - getPaddingStart()) / 2;
            } else {
                width = (getWidth() - this.mIconSize) / 2;
                paddingStart = (getPaddingStart() - getPaddingEnd()) / 2;
            }
            canvas.drawOval(paddingStart + width, ((getHeight() - this.mIconSize) - this.mTopFrameInset) / 2, r1 + r2, r2 + r0, this.mIconBackgroundPaint);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        setTooltipText(charSequence);
    }

    @Override // com.android.wm.shell.windowdecor.TaskFocusStateConsumer
    public final void setTaskFocusState(boolean z) {
        if (isEnabled() && this.mIsTaskFocused != z) {
            this.mIsTaskFocused = z;
            refreshDrawableState();
        }
    }

    public final void updateRippleBackground() {
        int i;
        int i2;
        int i3;
        RippleDrawable rippleDrawable = (RippleDrawable) ((ImageButton) this).mContext.getDrawable(R.drawable.sec_decor_caption_button_ripple);
        if (rippleDrawable == null) {
            return;
        }
        Resources resources = ((ImageButton) this).mContext.getResources();
        if (resources.getConfiguration().isDexMode()) {
            i = R.dimen.decor_button_padding_desktop;
        } else {
            i = R.dimen.decor_button_padding;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(i);
        if (resources.getConfiguration().isDexMode()) {
            i2 = R.dimen.sec_decor_desktop_button_size;
        } else {
            i2 = R.dimen.sec_decor_button_size;
        }
        int dimensionPixelSize2 = resources.getDimensionPixelSize(i2);
        if (resources.getConfiguration().isDexMode()) {
            i3 = R.dimen.sec_decor_button_desktop_ripple_size;
        } else {
            i3 = R.dimen.sec_decor_button_ripple_size;
        }
        int dimensionPixelSize3 = (dimensionPixelSize2 - resources.getDimensionPixelSize(i3)) / 2;
        this.mTopFrameInset = dimensionPixelSize - getPaddingTop();
        boolean z = true;
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(((ImageButton) this).mContext) != 1) {
            z = false;
        }
        this.mIsRtlLayout = z;
        if (z) {
            if (getPaddingEnd() > dimensionPixelSize) {
                rippleDrawable.setLayerInset(0, (getPaddingEnd() - dimensionPixelSize) + dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, dimensionPixelSize3, dimensionPixelSize3);
            } else if (getPaddingStart() > dimensionPixelSize) {
                rippleDrawable.setLayerInset(0, dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, (getPaddingStart() - dimensionPixelSize) + dimensionPixelSize3, dimensionPixelSize3);
            } else {
                rippleDrawable.setLayerInset(0, dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, dimensionPixelSize3, dimensionPixelSize3);
            }
        } else if (getPaddingStart() > dimensionPixelSize) {
            rippleDrawable.setLayerInset(0, (getPaddingStart() - dimensionPixelSize) + dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, dimensionPixelSize3, dimensionPixelSize3);
        } else if (getPaddingEnd() > dimensionPixelSize) {
            rippleDrawable.setLayerInset(0, dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, (getPaddingEnd() - dimensionPixelSize) + dimensionPixelSize3, dimensionPixelSize3);
        } else {
            rippleDrawable.setLayerInset(0, dimensionPixelSize3, dimensionPixelSize3 - this.mTopFrameInset, dimensionPixelSize3, dimensionPixelSize3);
        }
        setBackground(rippleDrawable);
    }
}
