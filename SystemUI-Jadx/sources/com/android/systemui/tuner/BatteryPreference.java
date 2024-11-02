package com.android.systemui.tuner;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.AttributeSet;
import androidx.preference.DropDownPreference;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.tuner.TunerService;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BatteryPreference extends DropDownPreference implements TunerService.Tunable {
    public final String mBattery;
    public boolean mBatteryEnabled;
    public boolean mHasPercentage;
    public boolean mHasSetValue;
    public ArraySet mHideList;

    public BatteryPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBattery = context.getString(17042907);
        this.mEntryValues = new CharSequence[]{"percent", "default", "disabled"};
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        boolean z = false;
        if (Settings.System.getInt(this.mContext.getContentResolver(), "status_bar_show_battery_percent", 0) != 0) {
            z = true;
        }
        this.mHasPercentage = z;
        ((TunerService) Dependency.get(TunerService.class)).addTunable(this, "icon_blacklist");
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        ((TunerService) Dependency.get(TunerService.class)).removeTunable(this);
        unregisterDependency();
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public final void onTuningChanged(String str, String str2) {
        if ("icon_blacklist".equals(str)) {
            this.mHideList = StatusBarIconController.getIconHideList(this.mContext, str2);
            this.mBatteryEnabled = !r2.contains(this.mBattery);
        }
        if (!this.mHasSetValue) {
            this.mHasSetValue = true;
            boolean z = this.mBatteryEnabled;
            if (z && this.mHasPercentage) {
                setValue("percent");
            } else if (z) {
                setValue("default");
            } else {
                setValue("disabled");
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void persistString(String str) {
        boolean equals = "percent".equals(str);
        MetricsLogger.action(this.mContext, IKnoxCustomManager.Stub.TRANSACTION_setFavoriteApp, equals);
        Settings.System.putInt(this.mContext.getContentResolver(), "status_bar_show_battery_percent", equals ? 1 : 0);
        if ("disabled".equals(str)) {
            this.mHideList.add(this.mBattery);
        } else {
            this.mHideList.remove(this.mBattery);
        }
        ((TunerService) Dependency.get(TunerService.class)).setValue("icon_blacklist", TextUtils.join(",", this.mHideList));
    }
}
