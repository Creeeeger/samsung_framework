package com.android.systemui.shade;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import java.util.function.BooleanSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecExpandQSAtOnceController {
    public final Context mContext;
    public float mDisplayRatioOfDivider;
    public final BooleanSupplier mQsExpandSupplier;
    public int mDisplayWidthOfDivider = 0;
    public boolean mShouldCloseAtOnce = false;
    public final SettingsListener mSettingsListener = new SettingsListener(this, 0);
    public final SettingsHelper mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingsListener implements SettingsHelper.OnChangedCallback {
        public final Uri[] mSettingsValueList;

        public /* synthetic */ SettingsListener(SecExpandQSAtOnceController secExpandQSAtOnceController, int i) {
            this();
        }

        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            if (uri == null) {
                return;
            }
            boolean equals = uri.equals(Settings.Global.getUriFor("swipe_directly_to_quick_setting"));
            SecExpandQSAtOnceController secExpandQSAtOnceController = SecExpandQSAtOnceController.this;
            if (equals) {
                secExpandQSAtOnceController.printLogLine("onChanged(swipe_directly_to_quick_setting)");
                secExpandQSAtOnceController.updateResources();
            } else if (uri.equals(Settings.Global.getUriFor("swipe_directly_to_quick_setting_area"))) {
                secExpandQSAtOnceController.printLogLine("onChanged(swipe_directly_to_quick_setting_area)");
                secExpandQSAtOnceController.updateResources();
            } else if (uri.equals(Settings.Global.getUriFor("swipe_directly_to_quick_setting_position"))) {
                secExpandQSAtOnceController.printLogLine("onChanged(swipe_directly_to_quick_setting_position)");
            }
        }

        private SettingsListener() {
            this.mSettingsValueList = new Uri[]{Settings.Global.getUriFor("swipe_directly_to_quick_setting"), Settings.Global.getUriFor("swipe_directly_to_quick_setting_area"), Settings.Global.getUriFor("swipe_directly_to_quick_setting_position")};
        }
    }

    public SecExpandQSAtOnceController(Context context, BooleanSupplier booleanSupplier) {
        this.mContext = context;
        this.mQsExpandSupplier = booleanSupplier;
    }

    public final void printLogLine(String str) {
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, ", enabled:");
        SettingsHelper settingsHelper = this.mSettingsHelper;
        m.append(settingsHelper.isExpandQsAtOnceEnabled());
        m.append(", SidePosition:");
        SettingsHelper.ItemMap itemMap = settingsHelper.mItemLists;
        m.append(itemMap.get("swipe_directly_to_quick_setting_position").getStringValue());
        m.append(", Ratio:");
        m.append(this.mDisplayRatioOfDivider);
        m.append("(setting:");
        m.append(itemMap.get("swipe_directly_to_quick_setting_area").getIntValue());
        m.append("), Width:");
        RecyclerView$$ExternalSyntheticOutline0.m(m, this.mDisplayWidthOfDivider, "ExpandQSAtOnceController");
    }

    public final void updateResources() {
        float f;
        printLogLine("updateResources(before)");
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (!settingsHelper.isExpandQsAtOnceEnabled()) {
            return;
        }
        int intValue = settingsHelper.mItemLists.get("swipe_directly_to_quick_setting_area").getIntValue();
        if (intValue >= 0) {
            f = intValue * 0.01f;
        } else {
            f = 0.8f;
        }
        this.mDisplayRatioOfDivider = f;
        this.mDisplayWidthOfDivider = (int) (DeviceState.getDisplayWidth(this.mContext) * this.mDisplayRatioOfDivider);
        printLogLine("updateResources(after)");
    }
}
