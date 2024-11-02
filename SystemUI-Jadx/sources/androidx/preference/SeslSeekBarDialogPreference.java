package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
class SeslSeekBarDialogPreference extends DialogPreference {
    public SeslSeekBarDialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPositiveButtonText = this.mContext.getString(R.string.ok);
        this.mNegativeButtonText = this.mContext.getString(R.string.cancel);
        this.mDialogIcon = null;
    }

    public SeslSeekBarDialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeslSeekBarDialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.seekBarDialogPreferenceStyle);
    }

    public SeslSeekBarDialogPreference(Context context) {
        this(context, null);
    }
}
