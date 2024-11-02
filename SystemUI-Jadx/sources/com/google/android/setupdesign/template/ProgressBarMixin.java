package com.google.android.setupdesign.template;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewStub;
import android.widget.ProgressBar;
import com.android.systemui.R;
import com.google.android.setupcompat.internal.TemplateLayout;
import com.google.android.setupcompat.template.Mixin;
import com.google.android.setupdesign.R$styleable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ProgressBarMixin implements Mixin {
    public ColorStateList color;
    public final TemplateLayout templateLayout;
    public final boolean useBottomProgressBar;

    public ProgressBarMixin(TemplateLayout templateLayout) {
        this(templateLayout, null, 0);
    }

    public final ProgressBar peekProgressBar() {
        int i;
        if (this.useBottomProgressBar) {
            i = R.id.sud_glif_progress_bar;
        } else {
            i = R.id.sud_layout_progress;
        }
        return (ProgressBar) this.templateLayout.findManagedViewById(i);
    }

    public final void setShown(boolean z) {
        int i;
        boolean z2 = this.useBottomProgressBar;
        if (z) {
            if (peekProgressBar() == null && !z2) {
                ViewStub viewStub = (ViewStub) this.templateLayout.findManagedViewById(R.id.sud_layout_progress_stub);
                if (viewStub != null) {
                    viewStub.inflate();
                }
                ColorStateList colorStateList = this.color;
                this.color = colorStateList;
                ProgressBar peekProgressBar = peekProgressBar();
                if (peekProgressBar != null) {
                    peekProgressBar.setIndeterminateTintList(colorStateList);
                    peekProgressBar.setProgressBackgroundTintList(colorStateList);
                }
            }
            ProgressBar peekProgressBar2 = peekProgressBar();
            if (peekProgressBar2 != null) {
                peekProgressBar2.setVisibility(0);
                return;
            }
            return;
        }
        ProgressBar peekProgressBar3 = peekProgressBar();
        if (peekProgressBar3 != null) {
            if (z2) {
                i = 4;
            } else {
                i = 8;
            }
            peekProgressBar3.setVisibility(i);
        }
    }

    public ProgressBarMixin(TemplateLayout templateLayout, boolean z) {
        this.templateLayout = templateLayout;
        this.useBottomProgressBar = z;
    }

    public ProgressBarMixin(TemplateLayout templateLayout, AttributeSet attributeSet, int i) {
        this.templateLayout = templateLayout;
        boolean z = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = templateLayout.getContext().obtainStyledAttributes(attributeSet, R$styleable.SudProgressBarMixin, i, 0);
            boolean z2 = obtainStyledAttributes.hasValue(0) ? obtainStyledAttributes.getBoolean(0, false) : false;
            obtainStyledAttributes.recycle();
            setShown(false);
            z = z2;
        }
        this.useBottomProgressBar = z;
    }
}
