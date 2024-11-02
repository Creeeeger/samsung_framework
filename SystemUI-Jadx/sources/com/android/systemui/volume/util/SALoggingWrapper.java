package com.android.systemui.volume.util;

import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SALoggingWrapper {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum Event {
        EXPAND,
        SHRINK,
        MEDIA_DEFAULT_ON,
        MEDIA_DEFAULT_OFF,
        SAFETY_CANCEL,
        SAFETY_OK,
        VOLUME_LIMITER_SETTING,
        VOLUME_LIMITER_CANCEL,
        VOLUME_KEY,
        FINE_CONTROL_RINGTONE,
        FINE_CONTROL_NOTIFICATION,
        FINE_CONTROL_MEDIA,
        FINE_CONTROL_SYSTEM,
        FINE_CONTROL_BIXBY,
        FINE_CONTROL_ACCESSIBILITY,
        SUB_VOLUME_PANEL_SHOW,
        SUB_VOLUME_PANEL_FINE_CONTROL
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Event.values().length];
            try {
                iArr[Event.SUB_VOLUME_PANEL_SHOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Event.EXPAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Event.SHRINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Event.MEDIA_DEFAULT_OFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Event.MEDIA_DEFAULT_ON.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Event.SAFETY_CANCEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Event.SAFETY_OK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Event.VOLUME_LIMITER_CANCEL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Event.VOLUME_LIMITER_SETTING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Event.VOLUME_KEY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Event.FINE_CONTROL_RINGTONE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Event.FINE_CONTROL_NOTIFICATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Event.FINE_CONTROL_MEDIA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[Event.FINE_CONTROL_SYSTEM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[Event.FINE_CONTROL_BIXBY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[Event.FINE_CONTROL_ACCESSIBILITY.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[Event.SUB_VOLUME_PANEL_FINE_CONTROL.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void sendEventLog(Event event) {
        switch (WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
            case 1:
                if (BasicRune.VOLUME_SUB_DISPLAY_VOLUME_DIALOG && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
                    SystemUIAnalytics.sendEventLog("500", "5018");
                    return;
                }
                return;
            case 2:
                SystemUIAnalytics.sendEventLog("601", "6011");
                return;
            case 3:
                SystemUIAnalytics.sendEventLog("601", "6012");
                return;
            case 4:
                SystemUIAnalytics.sendEventLog(2L, "601", "6013");
                return;
            case 5:
                SystemUIAnalytics.sendEventLog(1L, "601", "6013");
                return;
            case 6:
                SystemUIAnalytics.sendEventLog("601", "6015");
                return;
            case 7:
                SystemUIAnalytics.sendEventLog("601", "6016");
                return;
            case 8:
                SystemUIAnalytics.sendEventLog("601", "6018");
                return;
            case 9:
                SystemUIAnalytics.sendEventLog("601", "6017");
                return;
            case 10:
                if (BasicRune.VOLUME_SUB_DISPLAY_VOLUME_DIALOG && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
                    SystemUIAnalytics.sendEventLog("500", "5027");
                    return;
                } else {
                    SystemUIAnalytics.sendEventLog("601", "6019");
                    return;
                }
            case 11:
                SystemUIAnalytics.sendEventLog("601", "6021");
                return;
            case 12:
                SystemUIAnalytics.sendEventLog("601", "6022");
                return;
            case 13:
                SystemUIAnalytics.sendEventLog("601", "6014");
                return;
            case 14:
                SystemUIAnalytics.sendEventLog("601", "6023");
                return;
            case 15:
                SystemUIAnalytics.sendEventLog("601", "6024");
                return;
            case 16:
                SystemUIAnalytics.sendEventLog("601", "6025");
                return;
            case 17:
                SystemUIAnalytics.sendEventLog("500", "5023");
                return;
            default:
                return;
        }
    }
}
