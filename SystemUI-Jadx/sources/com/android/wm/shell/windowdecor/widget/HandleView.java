package com.android.wm.shell.windowdecor.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.android.systemui.R;
import com.android.wm.shell.windowdecor.CaptionGlobalState;
import com.android.wm.shell.windowdecor.TaskFocusStateConsumer;
import com.samsung.android.util.InterpolatorUtils;
import com.samsung.android.util.SemViewUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class HandleView extends ImageView implements TaskFocusStateConsumer {
    public static final int[] TASK_FOCUSED_STATE = {R.attr.state_task_focused};
    public boolean mIsSplitBottom;
    public boolean mIsTaskFocused;
    public final AnimatorSet mMouseOutAnimatorSet;
    public final AnimatorSet mMouseOverAnimatorSet;
    public final int mWindowingMode;

    public HandleView(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, android.R.style.Theme.DeviceDefault.DayNight), attributeSet);
        boolean z;
        this.mMouseOverAnimatorSet = new AnimatorSet();
        this.mMouseOutAnimatorSet = new AnimatorSet();
        int windowingMode = getResources().getConfiguration().windowConfiguration.getWindowingMode();
        this.mWindowingMode = windowingMode;
        if (windowingMode == 6 && getResources().getConfiguration().windowConfiguration.getStagePosition() == 64) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSplitBottom = z;
        setHandleViewPadding();
        updateHandleViewColor();
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        super.onConfigurationChanged(configuration);
        if (this.mWindowingMode == 6 && getResources().getConfiguration().windowConfiguration.getStagePosition() == 64) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.mIsSplitBottom) {
            this.mIsSplitBottom = z;
            setHandleViewPadding();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (!this.mIsTaskFocused) {
            return super.onCreateDrawableState(i);
        }
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        ImageView.mergeDrawableStates(onCreateDrawableState, TASK_FOCUSED_STATE);
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) == 3) {
            int action = motionEvent.getAction();
            if (action != 9) {
                if (action == 10) {
                    this.mMouseOutAnimatorSet.playTogether(ObjectAnimator.ofFloat(this, "scaleX", 1.3f, 1.0f), ObjectAnimator.ofFloat(this, "scaleY", 1.3f, 1.0f));
                    this.mMouseOutAnimatorSet.setDuration(200L);
                    this.mMouseOutAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                    this.mMouseOutAnimatorSet.start();
                }
            } else {
                this.mMouseOverAnimatorSet.playTogether(ObjectAnimator.ofFloat(this, "scaleX", 1.0f, 1.3f), ObjectAnimator.ofFloat(this, "scaleY", 1.0f, 1.3f));
                this.mMouseOverAnimatorSet.setDuration(200L);
                this.mMouseOverAnimatorSet.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                this.mMouseOverAnimatorSet.start();
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean performLongClick(float f, float f2) {
        return true;
    }

    @Override // android.view.View
    public final void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        setTooltipText(charSequence);
    }

    public final void setHandleViewPadding() {
        int i;
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sec_decor_handle_padding_horizontal);
        if (this.mIsSplitBottom) {
            i = R.dimen.sec_decor_handle_padding_top_split_bottom;
        } else {
            i = R.dimen.sec_decor_handle_padding_top;
        }
        setPadding(dimensionPixelSize, resources.getDimensionPixelSize(i), dimensionPixelSize, resources.getDimensionPixelSize(R.dimen.sec_decor_handle_padding_bottom));
    }

    @Override // com.android.wm.shell.windowdecor.TaskFocusStateConsumer
    public final void setTaskFocusState(boolean z) {
        if (this.mIsTaskFocused != z) {
            this.mIsTaskFocused = z;
            refreshDrawableState();
        }
    }

    public final void updateHandleViewColor() {
        int i;
        InsetDrawable insetDrawable;
        Resources resources = getResources();
        if (SemViewUtils.isTablet()) {
            i = R.drawable.sec_decor_handle_tablet;
        } else {
            i = R.drawable.sec_decor_handle;
        }
        LayerDrawable layerDrawable = (LayerDrawable) resources.getDrawable(i, null);
        if (CaptionGlobalState.COLOR_THEME_ENABLED && (insetDrawable = (InsetDrawable) layerDrawable.findDrawableByLayerId(R.id.fill_view)) != null) {
            insetDrawable.setTintList(new ColorStateList(resources.getColorStateList(R.color.sec_decor_handle_selector, null).getStates(), new int[]{((ImageView) this).mContext.getColor(17171327), ((ImageView) this).mContext.getColor(R.color.sec_decor_handle_color_unfocused)}));
        }
        setImageDrawable(layerDrawable);
    }
}
