package androidx.picker3.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.android.systemui.R;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
class SeslGradientColorSeekBar extends SeekBar {
    public final int[] mColors;
    public final GradientDrawable mProgressDrawable;

    public SeslGradientColorSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mColors = new int[]{EmergencyPhoneWidget.BG_COLOR, -1};
        context.getResources();
        this.mProgressDrawable = (GradientDrawable) getContext().getDrawable(R.drawable.sesl_color_picker_gradient_seekbar_drawable);
    }

    public final void initColor(int i) {
        Color.colorToHSV(i, r0);
        float f = r0[2];
        float[] fArr = {0.0f, 0.0f, 1.0f};
        this.mColors[1] = Color.HSVToColor(fArr);
        setProgress(Math.round(f * getMax()));
    }
}
