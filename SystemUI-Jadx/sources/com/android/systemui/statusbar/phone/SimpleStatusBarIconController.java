package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.ArrayMap;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.statusbar.phone.NotificationIconAreaController;
import com.android.systemui.util.SettingsHelper;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SimpleStatusBarIconController {
    public NotificationIconAreaController mIconController;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
    public NotificationIconContainer mNotificationIconContainer;
    public NotificationIconAreaController.AnonymousClass2 mSettingChangeListener;
    SettingsHelper.OnChangedCallback mSettingsCallback;
    public final SettingsHelper mSettingsHelper;
    int mSettingsValue;
    public final int mSimpleStatusBarMaxNotificationNum;
    public final SimpleStatusBarIconController$$ExternalSyntheticLambda0 mTimeComparator;
    public List mEntries = List.of();
    public final ArrayMap mNotificationEntries = new ArrayMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.SimpleStatusBarIconController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends KeyguardUpdateMonitorCallback {
        public AnonymousClass1() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserSwitchComplete(int i) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.systemui.statusbar.phone.SimpleStatusBarIconController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SimpleStatusBarIconController.this.mSettingsCallback.onChanged(Settings.System.getUriFor("simple_status_bar"));
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TimeOrderKey {
        public final boolean isCallChipNotif;
        public final String key;
        public final long when;

        public /* synthetic */ TimeOrderKey(SimpleStatusBarIconController simpleStatusBarIconController, String str, long j, boolean z, int i) {
            this(simpleStatusBarIconController, str, j, z);
        }

        private TimeOrderKey(SimpleStatusBarIconController simpleStatusBarIconController, String str, long j, boolean z) {
            this.key = str;
            this.when = j;
            this.isCallChipNotif = z;
        }
    }

    public SimpleStatusBarIconController(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mKeyguardUpdateMonitorCallback = anonymousClass1;
        this.mSettingsCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.phone.SimpleStatusBarIconController.2
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri.equals(Settings.System.getUriFor("simple_status_bar"))) {
                    SimpleStatusBarIconController simpleStatusBarIconController = SimpleStatusBarIconController.this;
                    simpleStatusBarIconController.mSettingsValue = simpleStatusBarIconController.mSettingsHelper.mItemLists.get("simple_status_bar").getIntValue();
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onChanged:"), simpleStatusBarIconController.mSettingsValue, "SimpleStatusBarIconController");
                    NotificationIconAreaController.AnonymousClass2 anonymousClass2 = simpleStatusBarIconController.mSettingChangeListener;
                    int i = simpleStatusBarIconController.mSettingsValue;
                    NotificationIconAreaController notificationIconAreaController = anonymousClass2.this$0;
                    notificationIconAreaController.mSimpleStatusBarSettingsValue = i;
                    notificationIconAreaController.updateStatusBarIcons();
                    notificationIconAreaController.mNotificationIcons.resetViewStates();
                    notificationIconAreaController.mNotificationIcons.calculateIconXTranslations();
                    notificationIconAreaController.mNotificationIcons.applyIconStates();
                    notificationIconAreaController.applyNotificationIconsTint();
                }
            }
        };
        this.mTimeComparator = new SimpleStatusBarIconController$$ExternalSyntheticLambda0();
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.mSettingsHelper = settingsHelper;
        this.mSimpleStatusBarMaxNotificationNum = context.getResources().getInteger(R.integer.config_simple_status_bar_max_notification_num);
        settingsHelper.registerCallback(this.mSettingsCallback, Settings.System.getUriFor("simple_status_bar"));
        keyguardUpdateMonitor.registerCallback(anonymousClass1);
    }
}
