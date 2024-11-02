package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.util.SeslMisc;
import androidx.core.content.res.ResourcesCompat;
import com.android.systemui.R;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslDropDownItemTextView extends SeslCheckedTextView {
    public SeslDropDownItemTextView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.SeslCheckedTextView, android.widget.Checkable
    public final void setChecked(boolean z) {
        int i;
        Context context;
        int i2;
        super.setChecked(z);
        Typeface create = Typeface.create("sec", 0);
        if (z) {
            i = VolteConstants.ErrorCode.BUSY_EVERYWHERE;
        } else {
            i = 400;
        }
        setTypeface(Typeface.create(create, i, false));
        if (z && (context = getContext()) != null && getCurrentTextColor() == -65281) {
            Log.w("SeslDropDownItemTextView", "text color reload!");
            if (SeslMisc.isLightTheme(context)) {
                i2 = R.color.sesl_spinner_dropdown_text_color_light;
            } else {
                i2 = R.color.sesl_spinner_dropdown_text_color_dark;
            }
            ColorStateList colorStateList = ResourcesCompat.getColorStateList(context.getResources(), i2, context.getTheme());
            if (colorStateList != null) {
                setTextColor(colorStateList);
            } else {
                Log.w("SeslDropDownItemTextView", "Didn't set SeslDropDownItemTextView text color!!");
            }
        }
    }

    public SeslDropDownItemTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public SeslDropDownItemTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
