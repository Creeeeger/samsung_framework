package com.android.systemui.edgelighting.scheduler;

import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import android.util.Slog;
import com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler;
import com.samsung.android.edge.SemEdgeLightingInfo;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationLightingScheduler {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public LightingScheduleInfo mCurrentLightingScheduleInfo;
    public EdgeLightingScheduler.AnonymousClass4 mListener;
    public final EdgeLightingDataKeeper mEdgeLightingDataKeeper = new EdgeLightingDataKeeper(0);
    public final AnonymousClass1 mNotificationScheduleHandler = new Handler() { // from class: com.android.systemui.edgelighting.scheduler.NotificationLightingScheduler.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0) {
                NotificationLightingScheduler notificationLightingScheduler = NotificationLightingScheduler.this;
                String str = (String) message.obj;
                boolean z = NotificationLightingScheduler.DEBUG;
                notificationLightingScheduler.expireNotiLighting(str);
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class EdgeLightingDataKeeper {
        public final HashMap mNotificationMap;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class SemEdgeLightingInfoData {
            public final SemEdgeLightingInfo mEdgeLightingInfo;

            public SemEdgeLightingInfoData(SemEdgeLightingInfo semEdgeLightingInfo, long j) {
                this.mEdgeLightingInfo = semEdgeLightingInfo;
            }
        }

        public /* synthetic */ EdgeLightingDataKeeper(int i) {
            this();
        }

        private EdgeLightingDataKeeper() {
            this.mNotificationMap = new HashMap();
            new HashMap();
        }
    }

    public final void expireNotiLighting(String str) {
        String str2;
        LightingScheduleInfo lightingScheduleInfo = this.mCurrentLightingScheduleInfo;
        if (lightingScheduleInfo != null) {
            str2 = lightingScheduleInfo.getNotificationKey();
        } else {
            str2 = null;
        }
        if (str.equals("turnToHeadsUp")) {
            this.mCurrentLightingScheduleInfo = null;
            Slog.d("NotificationLightingScheduler", "expiredNotiLighting: remove=" + str + " turn to heads up");
            this.mListener.stopNotification(true);
            return;
        }
        if (str.equals(str2)) {
            this.mCurrentLightingScheduleInfo = null;
            Slog.d("NotificationLightingScheduler", "expiredNotiLighting: remove=".concat(str));
            this.mListener.stopNotification(false);
        } else {
            Slog.d("NotificationLightingScheduler", "expiredNotiLighting: invalid expire=" + str + " cur=" + str2);
            this.mListener.stopNotification(false);
        }
    }

    public final void extendLightingDuration(int i, boolean z) {
        LightingScheduleInfo lightingScheduleInfo = this.mCurrentLightingScheduleInfo;
        if (lightingScheduleInfo != null) {
            if (z || lightingScheduleInfo.getDuration() < i) {
                Slog.d("NotificationLightingScheduler", "extendLightingDuration for verification");
                this.mCurrentLightingScheduleInfo.setDuration(i);
                AnonymousClass1 anonymousClass1 = this.mNotificationScheduleHandler;
                anonymousClass1.removeMessages(0);
                anonymousClass1.sendMessageDelayed(anonymousClass1.obtainMessage(0, this.mCurrentLightingScheduleInfo.getNotificationKey()), i);
            }
        }
    }

    public final void flushNotiNow() {
        if (this.mCurrentLightingScheduleInfo != null) {
            AnonymousClass1 anonymousClass1 = this.mNotificationScheduleHandler;
            anonymousClass1.removeMessages(0);
            anonymousClass1.sendMessage(anonymousClass1.obtainMessage(0, this.mCurrentLightingScheduleInfo.getNotificationKey()));
        }
    }
}
