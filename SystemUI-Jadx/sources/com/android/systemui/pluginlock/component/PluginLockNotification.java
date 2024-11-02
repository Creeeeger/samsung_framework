package com.android.systemui.pluginlock.component;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.systemui.pluginlock.PluginLockInstanceData;
import com.android.systemui.pluginlock.PluginLockInstanceState;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.pluginlock.model.DynamicLockData;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockNotification extends AbstractPluginLockItem {
    public final PluginLockNotification$$ExternalSyntheticLambda0 mCallBack;
    public boolean mIsDlsData;
    public final PluginLockMediator mMediator;
    public final Uri[] mUris;
    public int mVisibility;

    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.systemui.pluginlock.component.PluginLockNotification$$ExternalSyntheticLambda0] */
    public PluginLockNotification(Context context, PluginLockInstanceState pluginLockInstanceState, SettingsHelper settingsHelper, PluginLockMediator pluginLockMediator) {
        super(context, pluginLockInstanceState, settingsHelper);
        this.mIsDlsData = true;
        this.mVisibility = -1;
        this.mUris = new Uri[]{Settings.System.getUriFor("lockscreen_minimizing_notification"), Settings.Secure.getUriFor("lock_screen_show_notifications")};
        this.mCallBack = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.pluginlock.component.PluginLockNotification$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                PluginLockInstanceData.Data.RecoverData recoverData;
                PluginLockNotification pluginLockNotification = PluginLockNotification.this;
                pluginLockNotification.getClass();
                Log.d("PluginLockNotification", "onChange() uri: " + uri);
                if (uri != null) {
                    StringBuilder sb = new StringBuilder("onChange() mCallbackValue: ");
                    sb.append(pluginLockNotification.mCallbackValue);
                    sb.append(" , mVisibility: ");
                    RecyclerView$$ExternalSyntheticOutline0.m(sb, pluginLockNotification.mVisibility, "PluginLockNotification");
                    if (pluginLockNotification.mCallbackRegisterTime != 0 && (pluginLockNotification.mCallbackValue != -1 || pluginLockNotification.mVisibility != -1)) {
                        if (System.currentTimeMillis() - pluginLockNotification.mCallbackRegisterTime < 8000 && (pluginLockNotification.mCallbackValue == pluginLockNotification.getCurrentNotificationType() || pluginLockNotification.mVisibility == pluginLockNotification.getSettingsInt(1, "lock_screen_show_notifications"))) {
                            Log.d("PluginLockNotification", "onChange() ignored");
                            return;
                        }
                        Bundle bundle = new Bundle();
                        if (uri.equals(Settings.Secure.getUriFor("lock_screen_show_notifications"))) {
                            bundle.putString("action", "update_lockstar_data");
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("update_lockstar_data_item", "notification_visibility");
                            bundle2.putInt("notification_visibility", pluginLockNotification.getSettingsInt(1, "lock_screen_show_notifications"));
                            bundle.putBundle("extras", bundle2);
                        } else if (uri.equals(Settings.System.getUriFor("lockscreen_minimizing_notification"))) {
                            bundle.putString("action", "update_lockstar_data");
                            Bundle bundle3 = new Bundle();
                            bundle3.putString("update_lockstar_data_item", "notification_type");
                            bundle3.putInt("notification_type", pluginLockNotification.getCurrentNotificationType());
                            bundle.putBundle("extras", bundle3);
                        }
                        Log.d("PluginLockNotification", "updateLockStarStoredData() bundle" + bundle.toString());
                        ((PluginLockMediatorImpl) pluginLockNotification.mMediator).onEventReceived(bundle);
                        Log.d("PluginLockNotification", "recover()");
                        pluginLockNotification.mVisibility = -1;
                        pluginLockNotification.setNotificationBackup(-1, -1);
                        PluginLockInstanceState pluginLockInstanceState2 = pluginLockNotification.mInstanceState;
                        if (pluginLockInstanceState2 != null && (recoverData = pluginLockInstanceState2.getRecoverData()) != null) {
                            recoverData.setNotificationState(-2);
                            pluginLockNotification.mInstanceState.updateDb();
                            return;
                        }
                        return;
                    }
                    Log.w("PluginLockNotification", "onChange() wrong state");
                }
            }
        };
        this.mMediator = pluginLockMediator;
    }

    public final void apply(DynamicLockData dynamicLockData, DynamicLockData dynamicLockData2) {
        Log.d("PluginLockNotification", "apply()");
        this.mIsDlsData = dynamicLockData2.isDlsData();
        int intValue = dynamicLockData2.getNotificationData().getNotiType().intValue();
        int intValue2 = dynamicLockData2.getNotificationData().getVisibility().intValue();
        int notificationState = getNotificationState();
        RecyclerView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("apply() state:", notificationState, ", notiType:", intValue, ", notiVisibility:"), intValue2, "PluginLockNotification");
        if (notificationState == -2) {
            Log.d("PluginLockNotification", "apply() skip!");
            return;
        }
        if (notificationState == -3) {
            update(dynamicLockData, dynamicLockData2);
            return;
        }
        if (intValue2 != -1 && intValue != 0) {
            int currentNotificationType = getCurrentNotificationType();
            int settingsInt = getSettingsInt(1, "lock_screen_show_notifications");
            setNotificationBackup(currentNotificationType, settingsInt);
            Log.d("PluginLockNotification", "apply() Backup curType: " + currentNotificationType + ", curVisibility: " + settingsInt + ", Set notiType: " + intValue + ", notiVisibility: " + intValue2);
            setNotificationVisibility(intValue2);
            setNotificationType(intValue);
            registerCallback(intValue, intValue2);
        }
    }

    public final int getCurrentNotificationType() {
        int settingsInt = getSettingsInt(1, "lockscreen_minimizing_notification");
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getCurrentNotificationType() getSettings: ", settingsInt, ", Type : ");
        int i = settingsInt + 1;
        RecyclerView$$ExternalSyntheticOutline0.m(m, i, "PluginLockNotification");
        return i;
    }

    public final void registerCallback(int i, int i2) {
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("registerCallback() type: ", i, ", visibility: ", i2, "PluginLockNotification");
        this.mVisibility = i2;
        this.mCallbackValue = i;
        this.mCallbackRegisterTime = System.currentTimeMillis();
        this.mSettingsHelper.registerCallback(this.mCallBack, this.mUris);
    }

    public final void setNotificationType(int i) {
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setNotificationType() value: ", i, ", putSettings : ");
        int i2 = i - 1;
        m.append(i2);
        Log.d("PluginLockNotification", m.toString());
        putSettingsSystem(i2, "lockscreen_minimizing_notification");
    }

    public final void setNotificationVisibility(int i) {
        if (i != -1) {
            LogUtil.d("PluginLockNotification", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setNotificationVisibility: ", i), new Object[0]);
            putSettingsSecure(i, "lock_screen_show_notifications");
        }
    }

    public final void update(DynamicLockData dynamicLockData, DynamicLockData dynamicLockData2) {
        int i;
        int i2;
        PluginLockInstanceData.Data.RecoverData recoverData;
        PluginLockInstanceData.Data.RecoverData recoverData2;
        Log.d("PluginLockNotification", "update()");
        this.mIsDlsData = dynamicLockData2.isDlsData();
        int notificationState = getNotificationState();
        ListPopupWindow$$ExternalSyntheticOutline0.m("update() state: ", notificationState, "PluginLockNotification");
        if (notificationState == -2 && this.mIsDlsData) {
            Log.d("PluginLockNotification", "update() skip!");
            return;
        }
        if (notificationState == -1) {
            apply(dynamicLockData, dynamicLockData2);
            return;
        }
        Log.d("PluginLockNotification", "unregisterCallback()");
        this.mVisibility = -1;
        this.mCallbackValue = -1;
        this.mCallbackRegisterTime = 0L;
        this.mSettingsHelper.unregisterCallback(this.mCallBack);
        int intValue = dynamicLockData2.getNotificationData().getVisibility().intValue();
        int intValue2 = dynamicLockData2.getNotificationData().getNotiType().intValue();
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("update() notiType: ", intValue2, ", visibility: ", intValue, "PluginLockNotification");
        if (intValue != -1 && intValue2 != 0) {
            setNotificationVisibility(intValue);
            setNotificationType(intValue2);
            registerCallback(intValue2, intValue);
            return;
        }
        Log.d("PluginLockNotification", "disable & restore backup value ");
        PluginLockInstanceState pluginLockInstanceState = this.mInstanceState;
        if (pluginLockInstanceState != null && (recoverData2 = pluginLockInstanceState.getRecoverData()) != null) {
            i = recoverData2.getNotificationBackupVisibility().intValue();
        } else {
            i = -1;
        }
        setNotificationVisibility(i);
        PluginLockInstanceState pluginLockInstanceState2 = this.mInstanceState;
        if (pluginLockInstanceState2 != null && (recoverData = pluginLockInstanceState2.getRecoverData()) != null) {
            i2 = recoverData.getNotificationBackupType().intValue();
        } else {
            i2 = -1;
        }
        setNotificationType(i2);
        setNotificationBackup(-1, -1);
    }
}
