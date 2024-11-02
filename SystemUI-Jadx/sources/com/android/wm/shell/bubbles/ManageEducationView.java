package com.android.wm.shell.bubbles;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.taskview.TaskView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ManageEducationView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final long ANIMATE_DURATION;
    public BubbleExpandedView bubbleExpandedView;
    public final Lazy gotItButton$delegate;
    public boolean isHiding;
    public final Lazy manageButton$delegate;
    public final Lazy manageView$delegate;
    public final BubblePositioner positioner;
    public final Rect realManageButtonRect;

    public ManageEducationView(Context context, BubblePositioner bubblePositioner) {
        super(context);
        this.ANIMATE_DURATION = 200L;
        this.positioner = bubblePositioner;
        this.manageView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.bubbles.ManageEducationView$manageView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (ViewGroup) ManageEducationView.this.findViewById(R.id.manage_education_view);
            }
        });
        this.manageButton$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.bubbles.ManageEducationView$manageButton$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (Button) ManageEducationView.this.findViewById(R.id.settings_button);
            }
        });
        this.gotItButton$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.bubbles.ManageEducationView$gotItButton$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (Button) ManageEducationView.this.findViewById(R.id.got_it);
            }
        });
        this.realManageButtonRect = new Rect();
        LayoutInflater.from(context).inflate(R.layout.bubbles_manage_button_education, this);
        setVisibility(8);
        setElevation(getResources().getDimensionPixelSize(R.dimen.bubble_elevation));
        setLayoutDirection(3);
    }

    public final Button getManageButton() {
        return (Button) this.manageButton$delegate.getValue();
    }

    public final ViewGroup getManageView() {
        return (ViewGroup) this.manageView$delegate.getValue();
    }

    public final void hide() {
        TaskView taskView;
        BubbleExpandedView bubbleExpandedView = this.bubbleExpandedView;
        if (bubbleExpandedView != null && (taskView = bubbleExpandedView.mTaskView) != null) {
            taskView.mObscuredTouchRegion = null;
        }
        if (getVisibility() == 0 && !this.isHiding) {
            animate().withStartAction(new Runnable() { // from class: com.android.wm.shell.bubbles.ManageEducationView$hide$1
                @Override // java.lang.Runnable
                public final void run() {
                    ManageEducationView.this.isHiding = true;
                }
            }).alpha(0.0f).setDuration(this.ANIMATE_DURATION).withEndAction(new Runnable() { // from class: com.android.wm.shell.bubbles.ManageEducationView$hide$2
                @Override // java.lang.Runnable
                public final void run() {
                    ManageEducationView manageEducationView = ManageEducationView.this;
                    manageEducationView.isHiding = false;
                    manageEducationView.setVisibility(8);
                }
            });
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setLayoutDirection(getResources().getConfiguration().getLayoutDirection());
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i) {
        int i2;
        super.setLayoutDirection(i);
        ViewGroup manageView = getManageView();
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            i2 = R.drawable.bubble_stack_user_education_bg_rtl;
        } else {
            i2 = R.drawable.bubble_stack_user_education_bg;
        }
        manageView.setBackgroundResource(i2);
    }

    public final void show(final BubbleExpandedView bubbleExpandedView) {
        int i;
        final boolean z;
        TypedArray obtainStyledAttributes = ((LinearLayout) this).mContext.obtainStyledAttributes(new int[]{android.R.^attr-private.colorProgressBackgroundNormal});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        getManageButton().setTextColor(((LinearLayout) this).mContext.getColor(android.R.color.Teal_700));
        getManageButton().setBackgroundDrawable(new ColorDrawable(color));
        ((Button) this.gotItButton$delegate.getValue()).setBackgroundDrawable(new ColorDrawable(color));
        if (getVisibility() == 0) {
            return;
        }
        this.bubbleExpandedView = bubbleExpandedView;
        TaskView taskView = bubbleExpandedView.mTaskView;
        if (taskView != null) {
            taskView.mObscuredTouchRegion = new Region(new Rect(this.positioner.mScreenRect));
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        this.positioner.getClass();
        if (this.positioner.isLandscape()) {
            i = getContext().getResources().getDimensionPixelSize(R.dimen.bubbles_user_education_width);
        } else {
            i = -1;
        }
        layoutParams.width = i;
        setAlpha(0.0f);
        setVisibility(0);
        bubbleExpandedView.mManageButton.getBoundsOnScreen(this.realManageButtonRect);
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(((LinearLayout) this).mContext) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            getManageView().setPadding(getManageView().getPaddingLeft(), getManageView().getPaddingTop(), (this.positioner.mScreenRect.right - this.realManageButtonRect.right) - ((LinearLayout.LayoutParams) bubbleExpandedView.mManageButton.getLayoutParams()).getMarginStart(), getManageView().getPaddingBottom());
        } else {
            getManageView().setPadding(this.realManageButtonRect.left - ((LinearLayout.LayoutParams) bubbleExpandedView.mManageButton.getLayoutParams()).getMarginStart(), getManageView().getPaddingTop(), getManageView().getPaddingRight(), getManageView().getPaddingBottom());
        }
        post(new Runnable() { // from class: com.android.wm.shell.bubbles.ManageEducationView$show$1
            @Override // java.lang.Runnable
            public final void run() {
                ManageEducationView manageEducationView = ManageEducationView.this;
                int i2 = ManageEducationView.$r8$clinit;
                Button manageButton = manageEducationView.getManageButton();
                final ManageEducationView manageEducationView2 = ManageEducationView.this;
                final BubbleExpandedView bubbleExpandedView2 = bubbleExpandedView;
                manageButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.bubbles.ManageEducationView$show$1.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageEducationView.this.hide();
                        bubbleExpandedView2.findViewById(R.id.settings_button).performClick();
                    }
                });
                Button button = (Button) ManageEducationView.this.gotItButton$delegate.getValue();
                final ManageEducationView manageEducationView3 = ManageEducationView.this;
                button.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.bubbles.ManageEducationView$show$1.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageEducationView.this.hide();
                    }
                });
                final ManageEducationView manageEducationView4 = ManageEducationView.this;
                manageEducationView4.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.bubbles.ManageEducationView$show$1.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ManageEducationView.this.hide();
                    }
                });
                Rect rect = new Rect();
                ManageEducationView.this.getManageButton().getDrawingRect(rect);
                ManageEducationView.this.getManageView().offsetDescendantRectToMyCoords(ManageEducationView.this.getManageButton(), rect);
                if (z) {
                    ManageEducationView.this.positioner.getClass();
                    if (ManageEducationView.this.positioner.isLandscape()) {
                        ManageEducationView.this.setTranslationX(r1.positioner.mScreenRect.right - r1.getWidth());
                        ManageEducationView.this.setTranslationY(r1.realManageButtonRect.top - rect.top);
                        ManageEducationView.this.bringToFront();
                        ManageEducationView.this.animate().setDuration(ManageEducationView.this.ANIMATE_DURATION).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).alpha(1.0f);
                    }
                }
                ManageEducationView.this.setTranslationX(0.0f);
                ManageEducationView.this.setTranslationY(r1.realManageButtonRect.top - rect.top);
                ManageEducationView.this.bringToFront();
                ManageEducationView.this.animate().setDuration(ManageEducationView.this.ANIMATE_DURATION).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).alpha(1.0f);
            }
        });
        getContext().getSharedPreferences(getContext().getPackageName(), 0).edit().putBoolean("HasSeenBubblesManageOnboarding", true).apply();
    }
}
