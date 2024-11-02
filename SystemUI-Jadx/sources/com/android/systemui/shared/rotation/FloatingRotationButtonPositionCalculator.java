package com.android.systemui.shared.rotation;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.navigationbar.BasicRuneWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FloatingRotationButtonPositionCalculator {
    public final int defaultMargin;
    public final boolean floatingRotationButtonPositionLeft;
    public final int taskbarMarginBottom;
    public final int taskbarMarginLeft;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Position {
        public final int gravity;
        public final int translationX;
        public final int translationY;

        public Position(int i, int i2, int i3) {
            this.gravity = i;
            this.translationX = i2;
            this.translationY = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Position)) {
                return false;
            }
            Position position = (Position) obj;
            if (this.gravity == position.gravity && this.translationX == position.translationX && this.translationY == position.translationY) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.translationY) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.translationX, Integer.hashCode(this.gravity) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Position(gravity=");
            sb.append(this.gravity);
            sb.append(", translationX=");
            sb.append(this.translationX);
            sb.append(", translationY=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.translationY, ")");
        }
    }

    public FloatingRotationButtonPositionCalculator(int i, int i2, int i3, boolean z) {
        this.defaultMargin = i;
        this.taskbarMarginLeft = i2;
        this.taskbarMarginBottom = i3;
        this.floatingRotationButtonPositionLeft = z;
    }

    public final Position calculatePosition(int i, boolean z, boolean z2) {
        boolean z3;
        int i2;
        int i3;
        boolean z4 = false;
        if (i != 0 && i != 1) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3 && z && !z2) {
            z4 = true;
        }
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            RotationUtil.Companion.getClass();
            i2 = RotationUtil.floatingButtonPosition;
        } else if (this.floatingRotationButtonPositionLeft) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid rotation ", i));
                        }
                        i2 = 51;
                    }
                    i2 = 53;
                }
                i2 = 85;
            }
            i2 = 83;
        } else {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid rotation ", i));
                        }
                        i2 = 83;
                    }
                    i2 = 51;
                }
                i2 = 53;
            }
            i2 = 85;
        }
        int i4 = this.defaultMargin;
        if (z4) {
            i3 = this.taskbarMarginLeft;
        } else {
            i3 = i4;
        }
        if (z4) {
            i4 = this.taskbarMarginBottom;
        }
        if ((i2 & 5) == 5) {
            i3 = -i3;
        }
        if ((i2 & 80) == 80) {
            i4 = -i4;
        }
        return new Position(i2, i3, i4);
    }
}
