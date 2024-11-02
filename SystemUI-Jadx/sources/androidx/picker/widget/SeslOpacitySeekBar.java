package androidx.picker.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
class SeslOpacitySeekBar extends SeekBar {
    public final int[] mColors;
    public GradientDrawable mProgressDrawable;

    public SeslOpacitySeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mColors = new int[]{-1, EmergencyPhoneWidget.BG_COLOR};
    }

    public final void initColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        int alpha = Color.alpha(i);
        this.mColors[0] = Color.HSVToColor(0, fArr);
        this.mColors[1] = Color.HSVToColor(255, fArr);
        setProgress(alpha);
    }
}
