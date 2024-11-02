package com.android.systemui;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.view.ContextThemeWrapper;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DualToneHandler {
    public Color darkColor;
    public Color lightColor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Color {
        public final int background;
        public final int fill;
        public final int single;

        public Color(int i, int i2, int i3) {
            this.single = i;
            this.background = i2;
            this.fill = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Color)) {
                return false;
            }
            Color color = (Color) obj;
            if (this.single == color.single && this.background == color.background && this.fill == color.fill) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.fill) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.background, Integer.hashCode(this.single) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Color(single=");
            sb.append(this.single);
            sb.append(", background=");
            sb.append(this.background);
            sb.append(", fill=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.fill, ")");
        }
    }

    public DualToneHandler(Context context) {
        setColorsFromContext(context);
    }

    public final int getSingleColor(float f) {
        Color color = this.lightColor;
        Color color2 = null;
        if (color == null) {
            color = null;
        }
        int i = color.single;
        Color color3 = this.darkColor;
        if (color3 != null) {
            color2 = color3;
        }
        return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i), Integer.valueOf(color2.single))).intValue();
    }

    public final void setColorsFromContext(Context context) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, Utils.getThemeAttr(R.attr.darkIconTheme, context));
        ContextThemeWrapper contextThemeWrapper2 = new ContextThemeWrapper(context, Utils.getThemeAttr(R.attr.lightIconTheme, context));
        this.darkColor = new Color(Utils.getColorAttrDefaultColor(R.attr.singleToneColor, contextThemeWrapper, 0), Utils.getColorAttrDefaultColor(R.attr.iconBackgroundColor, contextThemeWrapper, 0), Utils.getColorAttrDefaultColor(R.attr.fillColor, contextThemeWrapper, 0));
        this.lightColor = new Color(Utils.getColorAttrDefaultColor(R.attr.singleToneColor, contextThemeWrapper2, 0), Utils.getColorAttrDefaultColor(R.attr.iconBackgroundColor, contextThemeWrapper2, 0), Utils.getColorAttrDefaultColor(R.attr.fillColor, contextThemeWrapper2, 0));
    }
}
