package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.reflect.os.SeslUserHandleReflector;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslRingtonePreference extends Preference {
    public SeslRingtonePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RingtonePreference, i, i2);
        obtainStyledAttributes.getInt(0, 1);
        obtainStyledAttributes.getBoolean(1, true);
        obtainStyledAttributes.getBoolean(2, true);
        this.mIntent = new Intent("android.intent.action.RINGTONE_PICKER");
        SeslUserHandleReflector.myUserId();
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        super.onAttachedToHierarchy(preferenceManager);
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj, boolean z) {
        String str;
        String str2 = (String) obj;
        if (!z && !TextUtils.isEmpty(str2)) {
            Uri parse = Uri.parse(str2);
            if (parse != null) {
                str = parse.toString();
            } else {
                str = "";
            }
            persistString(str);
        }
    }

    public SeslRingtonePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeslRingtonePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ringtonePreferenceStyle);
    }

    public SeslRingtonePreference(Context context) {
        this(context, null);
    }
}
