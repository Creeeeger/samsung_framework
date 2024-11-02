package com.android.systemui.keyboard.backlight.ui.viewmodel;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BacklightDialogContentViewModel {
    public final int currentValue;
    public final int maxValue;

    public BacklightDialogContentViewModel(int i, int i2) {
        this.currentValue = i;
        this.maxValue = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BacklightDialogContentViewModel)) {
            return false;
        }
        BacklightDialogContentViewModel backlightDialogContentViewModel = (BacklightDialogContentViewModel) obj;
        if (this.currentValue == backlightDialogContentViewModel.currentValue && this.maxValue == backlightDialogContentViewModel.maxValue) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.maxValue) + (Integer.hashCode(this.currentValue) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BacklightDialogContentViewModel(currentValue=");
        sb.append(this.currentValue);
        sb.append(", maxValue=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.maxValue, ")");
    }
}
