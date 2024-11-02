package com.google.android.material.snackbar;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.reflect.widget.SeslTextViewReflector;
import com.android.systemui.R;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import com.samsung.systemui.splugins.volume.VolumePanelValues;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Snackbar extends BaseTransientBottomBar {
    public static final int[] SNACKBAR_CONTENT_STYLE_ATTRS = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};
    public static boolean mIsCoordinatorLayoutParent = false;
    public final AccessibilityManager accessibilityManager;
    public boolean hasAction;

    private Snackbar(Context context, ViewGroup viewGroup, View view, ContentViewCallback contentViewCallback) {
        super(context, viewGroup, view, contentViewCallback);
        this.accessibilityManager = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static Snackbar make(View view, CharSequence charSequence, int i) {
        boolean z;
        ViewGroup viewGroup;
        int i2;
        mIsCoordinatorLayoutParent = false;
        ViewGroup viewGroup2 = null;
        while (true) {
            z = true;
            if (view instanceof CoordinatorLayout) {
                mIsCoordinatorLayoutParent = true;
                viewGroup = (ViewGroup) view;
                break;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup != null) {
            Context context = viewGroup.getContext();
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(SNACKBAR_CONTENT_STYLE_ATTRS);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
            obtainStyledAttributes.recycle();
            if (resourceId == -1 || resourceId2 == -1) {
                z = false;
            }
            if (z) {
                i2 = R.layout.mtrl_layout_snackbar_include;
            } else {
                i2 = R.layout.design_layout_snackbar_include;
            }
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(i2, viewGroup, false);
            if (snackbarContentLayout != null) {
                snackbarContentLayout.mIsCoordinatorLayoutParent = mIsCoordinatorLayoutParent;
            }
            Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
            BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout = snackbar.view;
            ((SnackbarContentLayout) snackbarBaseLayout.getChildAt(0)).messageView.setText(charSequence);
            Context context2 = snackbar.context;
            int dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.design_snackbar_text_size);
            TextView textView = ((SnackbarContentLayout) snackbarBaseLayout.getChildAt(0)).messageView;
            float f = context2.getResources().getConfiguration().fontScale;
            if (f > 1.2f) {
                textView.setTextSize(0, (dimensionPixelSize / f) * 1.2f);
            }
            snackbar.duration = i;
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public final void dismiss() {
        dispatchDismiss(3);
    }

    public final int getDuration() {
        int i;
        int i2 = this.duration;
        if (i2 == -2) {
            return -2;
        }
        if (this.hasAction) {
            i = 4;
        } else {
            i = 0;
        }
        return this.accessibilityManager.getRecommendedTimeoutMillis(i2, i | 1 | 2);
    }

    public final void setAction(CharSequence charSequence, final View.OnClickListener onClickListener) {
        BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout = this.view;
        boolean z = false;
        Button button = ((SnackbarContentLayout) snackbarBaseLayout.getChildAt(0)).actionView;
        ((SnackbarContentLayout) snackbarBaseLayout.getChildAt(0)).setBackground(snackbarBaseLayout.getResources().getDrawable(R.drawable.sem_snackbar_action_frame_mtrl));
        if (!TextUtils.isEmpty(charSequence)) {
            this.hasAction = true;
            button.setVisibility(0);
            button.setText(charSequence);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.snackbar.Snackbar$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Snackbar snackbar = Snackbar.this;
                    View.OnClickListener onClickListener2 = onClickListener;
                    snackbar.getClass();
                    onClickListener2.onClick(view);
                    snackbar.dispatchDismiss(1);
                }
            });
            Context context = this.context;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_action_text_size);
            float f = context.getResources().getConfiguration().fontScale;
            if (f > 1.2f) {
                button.setTextSize(0, (dimensionPixelSize / f) * 1.2f);
            }
            ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver != null && Settings.System.getInt(contentResolver, "show_button_background", 0) == 1) {
                z = true;
            }
            SeslTextViewReflector.semSetButtonShapeEnabled(button, z);
            return;
        }
        button.setVisibility(8);
        button.setOnClickListener(null);
        this.hasAction = false;
    }

    public final void show() {
        boolean z;
        SnackbarManager snackbarManager = SnackbarManager.getInstance();
        int duration = getDuration();
        BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (snackbarManager.lock) {
            if (snackbarManager.isCurrentSnackbarLocked(anonymousClass5)) {
                SnackbarManager.SnackbarRecord snackbarRecord = snackbarManager.currentSnackbar;
                snackbarRecord.duration = duration;
                snackbarManager.handler.removeCallbacksAndMessages(snackbarRecord);
                snackbarManager.scheduleTimeoutLocked(snackbarManager.currentSnackbar);
                return;
            }
            SnackbarManager.SnackbarRecord snackbarRecord2 = snackbarManager.nextSnackbar;
            boolean z2 = false;
            if (snackbarRecord2 != null) {
                if (anonymousClass5 != null && snackbarRecord2.callback.get() == anonymousClass5) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
            if (z2) {
                snackbarManager.nextSnackbar.duration = duration;
            } else {
                snackbarManager.nextSnackbar = new SnackbarManager.SnackbarRecord(duration, anonymousClass5);
            }
            SnackbarManager.SnackbarRecord snackbarRecord3 = snackbarManager.currentSnackbar;
            if (snackbarRecord3 == null || !snackbarManager.cancelSnackbarLocked(snackbarRecord3, 4)) {
                snackbarManager.currentSnackbar = null;
                snackbarManager.showNextSnackbarLocked();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
            setBackgroundColor(android.R.color.transparent);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.widget.FrameLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
                }
                if (childAt.getLayoutParams().height == -2) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    if (childAt.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin > (getMeasuredHeight() - getPaddingBottom()) - getPaddingTop()) {
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            setBackgroundColor(android.R.color.transparent);
        }
    }
}
