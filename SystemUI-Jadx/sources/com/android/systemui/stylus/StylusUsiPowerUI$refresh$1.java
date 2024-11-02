package com.android.systemui.stylus;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.InputDevice;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$Style;
import androidx.core.app.NotificationCompatBuilder;
import androidx.core.app.NotificationManagerCompat;
import com.android.systemui.R;
import com.android.systemui.log.DebugLogger;
import com.android.systemui.shared.hardware.InputManagerKt;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.text.NumberFormat;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StylusUsiPowerUI$refresh$1 implements Runnable {
    public final /* synthetic */ StylusUsiPowerUI this$0;

    public StylusUsiPowerUI$refresh$1(StylusUsiPowerUI stylusUsiPowerUI) {
        this.this$0 = stylusUsiPowerUI;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        Bundle bundle;
        StylusUsiPowerUI stylusUsiPowerUI = this.this$0;
        boolean z2 = true;
        if (stylusUsiPowerUI.batteryCapacity <= 0.16f) {
            z = true;
        } else {
            z = false;
        }
        if (!stylusUsiPowerUI.suppressed && !InputManagerKt.hasInputDevice(stylusUsiPowerUI.inputManager, new Function1() { // from class: com.android.systemui.stylus.StylusUsiPowerUI$hasConnectedBluetoothStylus$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z3;
                InputDevice inputDevice = (InputDevice) obj;
                if (inputDevice.supportsSource(16386) && inputDevice.getBluetoothAddress() != null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                return Boolean.valueOf(z3);
            }
        }) && z) {
            StylusUsiPowerUI stylusUsiPowerUI2 = this.this$0;
            Context context = stylusUsiPowerUI2.context;
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, "BAT");
            Notification notification2 = notificationCompat$Builder.mNotification;
            notification2.icon = R.drawable.ic_power_low;
            Intent intent = new Intent("StylusUsiPowerUI.dismiss");
            Context context2 = stylusUsiPowerUI2.context;
            notification2.deleteIntent = PendingIntent.getBroadcast(context2, 0, intent.setPackage(context2.getPackageName()), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
            Intent intent2 = new Intent("StylusUsiPowerUI.click");
            Context context3 = stylusUsiPowerUI2.context;
            notificationCompat$Builder.mContentIntent = PendingIntent.getBroadcast(context3, 0, intent2.setPackage(context3.getPackageName()), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
            notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.stylus_battery_low_percentage, NumberFormat.getPercentInstance().format(Float.valueOf(stylusUsiPowerUI2.batteryCapacity))));
            notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.stylus_battery_low_subtitle));
            notificationCompat$Builder.mPriority = 0;
            notificationCompat$Builder.mLocalOnly = true;
            notificationCompat$Builder.setFlag(16, true);
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(notificationCompat$Builder);
            NotificationCompat$Builder notificationCompat$Builder2 = notificationCompatBuilder.mBuilderCompat;
            NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder2.mStyle;
            if (notificationCompat$Style != null) {
                notificationCompat$Style.apply(notificationCompatBuilder);
            }
            if (notificationCompat$Style != null) {
                notificationCompat$Style.makeContentView();
            }
            Notification build = notificationCompatBuilder.mBuilder.build();
            if (notificationCompat$Style != null) {
                notificationCompat$Style.makeBigContentView();
            }
            if (notificationCompat$Style != null) {
                notificationCompat$Builder2.mStyle.makeHeadsUpContentView();
            }
            if (notificationCompat$Style != null && (bundle = build.extras) != null) {
                notificationCompat$Style.addCompatExtras(bundle);
            }
            int i = DebugLogger.$r8$clinit;
            boolean z3 = Build.IS_DEBUGGABLE;
            Reflection.getOrCreateKotlinClass(StylusUsiPowerUI.class).getSimpleName();
            stylusUsiPowerUI2.logUiEvent(StylusUiEvent.STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN);
            NotificationManagerCompat notificationManagerCompat = stylusUsiPowerUI2.notificationManager;
            notificationManagerCompat.getClass();
            Bundle bundle2 = build.extras;
            if (bundle2 == null || !bundle2.getBoolean("android.support.useSideChannel")) {
                z2 = false;
            }
            int i2 = StylusUsiPowerUI.USI_NOTIFICATION_ID;
            NotificationManager notificationManager = notificationManagerCompat.mNotificationManager;
            if (z2) {
                NotificationManagerCompat.NotifyTask notifyTask = new NotificationManagerCompat.NotifyTask(notificationManagerCompat.mContext.getPackageName(), i2, null, build);
                synchronized (NotificationManagerCompat.sLock) {
                    if (NotificationManagerCompat.sSideChannelManager == null) {
                        NotificationManagerCompat.sSideChannelManager = new NotificationManagerCompat.SideChannelManager(notificationManagerCompat.mContext.getApplicationContext());
                    }
                    NotificationManagerCompat.sSideChannelManager.mHandler.obtainMessage(0, notifyTask).sendToTarget();
                }
                notificationManager.cancel(null, i2);
                return;
            }
            notificationManager.notify(null, i2, build);
            return;
        }
        StylusUsiPowerUI stylusUsiPowerUI3 = this.this$0;
        if (stylusUsiPowerUI3.suppressed || !z) {
            int i3 = DebugLogger.$r8$clinit;
            boolean z4 = Build.IS_DEBUGGABLE;
            Reflection.getOrCreateKotlinClass(StylusUsiPowerUI.class).getSimpleName();
            stylusUsiPowerUI3.instanceId = null;
            stylusUsiPowerUI3.notificationManager.mNotificationManager.cancel(null, StylusUsiPowerUI.USI_NOTIFICATION_ID);
        }
        if (!z) {
            this.this$0.suppressed = false;
        }
    }
}
