package androidx.preference;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.preference.PreferenceGroupAdapter;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ExpandButton extends Preference {
    public final long mId;

    public ExpandButton(Context context, List<Preference> list, long j) {
        super(context);
        this.mLayoutResId = R.layout.expand_button;
        setIcon(AppCompatResources.getDrawable(R.drawable.ic_arrow_down_24dp, this.mContext));
        this.mIconResId = R.drawable.ic_arrow_down_24dp;
        setTitle(R.string.expand_button_title);
        if (999 != this.mOrder) {
            this.mOrder = 999;
            PreferenceGroupAdapter preferenceGroupAdapter = this.mListener;
            if (preferenceGroupAdapter != null) {
                Handler handler = preferenceGroupAdapter.mHandler;
                PreferenceGroupAdapter.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
                handler.removeCallbacks(anonymousClass1);
                handler.post(anonymousClass1);
            }
        }
        ArrayList arrayList = new ArrayList();
        CharSequence charSequence = null;
        for (Preference preference : list) {
            CharSequence title = preference.getTitle();
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.mParentGroup)) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                if (charSequence == null) {
                    charSequence = title;
                } else {
                    charSequence = this.mContext.getString(R.string.summary_collapsed_preference_list, charSequence, title);
                }
            }
        }
        setSummary(charSequence);
        this.mId = j + 1000000;
    }

    @Override // androidx.preference.Preference
    public final long getId() {
        return this.mId;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.mDividerAllowedAbove = false;
    }
}
