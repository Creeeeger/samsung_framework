package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.PreferenceManager;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public final boolean mShouldUseGeneratedIds;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, TypedArrayUtils.getAttr(R.attr.preferenceScreenStyle, context, android.R.attr.preferenceScreenStyle));
        this.mShouldUseGeneratedIds = true;
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        PreferenceManager.OnNavigateToScreenListener onNavigateToScreenListener;
        if (this.mIntent == null && this.mFragment == null && getPreferenceCount() != 0 && (onNavigateToScreenListener = this.mPreferenceManager.mOnNavigateToScreenListener) != null) {
            onNavigateToScreenListener.onNavigateToScreen(this);
        }
    }
}
