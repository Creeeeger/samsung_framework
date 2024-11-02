package com.android.systemui.statusbar.phone.ongoingcall;

import android.app.IActivityManager;
import android.app.PendingIntent;
import android.app.UidObserver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.gesture.SwipeStatusBarAwayGestureHandler;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.phone.IndicatorScaleGardener;
import com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController;
import com.android.systemui.statusbar.policy.CallbackController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OngoingCallController implements CallbackController, Dumpable {
    public final ActivityStarter activityStarter;
    public CallNotificationInfo callNotificationInfo;
    public View chipView;
    public final ConfigurationController configurationController;
    public final Context context;
    public final DumpManager dumpManager;
    public final IActivityManager iActivityManager;
    public final IndicatorScaleGardener indicatorScaleGardener;
    public boolean isFullscreen;
    public final KeyguardCallChipController keyguardCallChipController;
    public final OngoingCallLogger logger;
    public final Executor mainExecutor;
    public final CommonNotifCollection notifCollection;
    public final OngoingCallFlags ongoingCallFlags;
    public final StatusBarStateController statusBarStateController;
    public final Optional statusBarWindowController;
    public final Optional swipeStatusBarAwayGestureHandler;
    public final SystemClock systemClock;
    public final List mListeners = new ArrayList();
    public final CallAppUidObserver uidObserver = new CallAppUidObserver();
    public final OngoingCallController$notifListener$1 notifListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$notifListener$1
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryAdded(NotificationEntry notificationEntry) {
            onEntryUpdated(notificationEntry);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryRemoved(NotificationEntry notificationEntry, int i) {
            String str;
            String key = notificationEntry.mSbn.getKey();
            OngoingCallController ongoingCallController = OngoingCallController.this;
            OngoingCallController.CallNotificationInfo callNotificationInfo = ongoingCallController.callNotificationInfo;
            if (callNotificationInfo != null) {
                str = callNotificationInfo.key;
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(key, str)) {
                OngoingCallController.access$removeChip(ongoingCallController);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
        
            if (r14.mSbn.getNotification().isStyle(android.app.Notification.CallStyle.class) == false) goto L6;
         */
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onEntryUpdated(com.android.systemui.statusbar.notification.collection.NotificationEntry r14) {
            /*
                r13 = this;
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController r13 = com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController.this
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r0 = r13.callNotificationInfo
                if (r0 != 0) goto L16
                boolean r0 = com.android.systemui.statusbar.phone.ongoingcall.OngoingCallControllerKt.DEBUG
                android.service.notification.StatusBarNotification r0 = r14.mSbn
                android.app.Notification r0 = r0.getNotification()
                java.lang.Class<android.app.Notification$CallStyle> r1 = android.app.Notification.CallStyle.class
                boolean r0 = r0.isStyle(r1)
                if (r0 != 0) goto L2a
            L16:
                android.service.notification.StatusBarNotification r0 = r14.mSbn
                java.lang.String r0 = r0.getKey()
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r1 = r13.callNotificationInfo
                if (r1 == 0) goto L23
                java.lang.String r1 = r1.key
                goto L24
            L23:
                r1 = 0
            L24:
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 == 0) goto Lb0
            L2a:
                android.service.notification.StatusBarNotification r0 = r14.mSbn
                android.app.Notification r0 = r0.getNotification()
                android.os.Bundle r0 = r0.extras
                java.lang.String r1 = "android.callChipVisible"
                r2 = 0
                int r12 = r0.getInt(r1, r2)
                if (r12 == 0) goto L42
                java.lang.String r0 = "Set extra call chip visible="
                java.lang.String r1 = "OngoingCallController"
                androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0.m(r0, r12, r1)
            L42:
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r0 = new com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo
                android.service.notification.StatusBarNotification r1 = r14.mSbn
                java.lang.String r4 = r1.getKey()
                android.service.notification.StatusBarNotification r1 = r14.mSbn
                android.app.Notification r1 = r1.getNotification()
                long r5 = r1.when
                android.service.notification.StatusBarNotification r1 = r14.mSbn
                android.app.Notification r1 = r1.getNotification()
                android.app.PendingIntent r7 = r1.contentIntent
                android.service.notification.StatusBarNotification r1 = r14.mSbn
                int r8 = r1.getUid()
                android.service.notification.StatusBarNotification r1 = r14.mSbn
                android.app.Notification r1 = r1.getNotification()
                android.os.Bundle r1 = r1.extras
                java.lang.String r3 = "android.callType"
                r9 = -1
                int r1 = r1.getInt(r3, r9)
                r3 = 2
                if (r1 != r3) goto L74
                r1 = 1
                goto L75
            L74:
                r1 = r2
            L75:
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r3 = r13.callNotificationInfo
                if (r3 == 0) goto L7b
                boolean r2 = r3.statusBarSwipedAway
            L7b:
                r10 = r2
                android.service.notification.StatusBarNotification r14 = r14.mSbn
                android.app.Notification r14 = r14.getNotification()
                android.os.Bundle r14 = r14.extras
                java.lang.String r2 = "android.callChipBg"
                int r11 = r14.getInt(r2, r9)
                r3 = r0
                r9 = r1
                r3.<init>(r4, r5, r7, r8, r9, r10, r11, r12)
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r14 = r13.callNotificationInfo
                if (r14 != 0) goto L9a
                java.lang.String r14 = com.android.systemui.util.SystemUIAnalytics.sCurrentScreenID
                java.lang.String r1 = "QPNE0105"
                com.android.systemui.util.SystemUIAnalytics.sendEventLog(r14, r1)
            L9a:
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r14 = r13.callNotificationInfo
                boolean r14 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r14)
                if (r14 == 0) goto La3
                return
            La3:
                r13.callNotificationInfo = r0
                boolean r14 = r0.isOngoing
                if (r14 == 0) goto Lad
                r13.updateChip()
                goto Lb0
            Lad:
                com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController.access$removeChip(r13)
            Lb0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$notifListener$1.onEntryUpdated(com.android.systemui.statusbar.notification.collection.NotificationEntry):void");
        }
    };
    public final OngoingCallController$configurationListener$1 configurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$configurationListener$1
        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onDensityOrFontScaleChanged() {
            boolean z;
            OngoingCallController ongoingCallController = OngoingCallController.this;
            OngoingCallController.CallNotificationInfo callNotificationInfo = ongoingCallController.callNotificationInfo;
            if (callNotificationInfo != null && callNotificationInfo.isOngoing) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                float f = ongoingCallController.indicatorScaleGardener.getLatestScaleModel(ongoingCallController.context).ratio;
                OngoingCallController.scaleCallChip(ongoingCallController.chipView, f, false);
                OngoingCallController.scaleCallChip(ongoingCallController.keyguardCallChipController.chipView, f, true);
            }
        }

        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onDisplayDeviceTypeChanged() {
            onDensityOrFontScaleChanged();
        }
    };
    public final OngoingCallController$statusBarStateListener$1 statusBarStateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$statusBarStateListener$1
        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onFullscreenStateChanged(boolean z) {
            OngoingCallController ongoingCallController = OngoingCallController.this;
            ongoingCallController.isFullscreen = z;
            ongoingCallController.updateChipClickListener();
            ongoingCallController.updateGestureListening();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallAppUidObserver extends UidObserver {
        public Integer callAppUid;
        public boolean isCallAppVisible;
        public boolean isRegistered;

        public CallAppUidObserver() {
        }

        public final void onUidStateChanged(int i, int i2, long j, int i3) {
            boolean z;
            Integer num = this.callAppUid;
            if (num == null || i != num.intValue()) {
                return;
            }
            boolean z2 = this.isCallAppVisible;
            OngoingCallController.this.getClass();
            if (i2 <= 2) {
                z = true;
            } else {
                z = false;
            }
            this.isCallAppVisible = z;
            if (z2 != z) {
                final OngoingCallController ongoingCallController = OngoingCallController.this;
                ongoingCallController.mainExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallAppUidObserver$onUidStateChanged$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it = ((ArrayList) OngoingCallController.this.mListeners).iterator();
                        while (it.hasNext()) {
                            ((OngoingCallListener) it.next()).onOngoingCallStateChanged();
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$notifListener$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$configurationListener$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$statusBarStateListener$1] */
    public OngoingCallController(Context context, CommonNotifCollection commonNotifCollection, OngoingCallFlags ongoingCallFlags, SystemClock systemClock, ActivityStarter activityStarter, Executor executor, IActivityManager iActivityManager, OngoingCallLogger ongoingCallLogger, DumpManager dumpManager, Optional<StatusBarWindowController> optional, Optional<SwipeStatusBarAwayGestureHandler> optional2, StatusBarStateController statusBarStateController, KeyguardCallChipController keyguardCallChipController, ConfigurationController configurationController, IndicatorScaleGardener indicatorScaleGardener) {
        this.context = context;
        this.notifCollection = commonNotifCollection;
        this.ongoingCallFlags = ongoingCallFlags;
        this.systemClock = systemClock;
        this.activityStarter = activityStarter;
        this.mainExecutor = executor;
        this.iActivityManager = iActivityManager;
        this.logger = ongoingCallLogger;
        this.dumpManager = dumpManager;
        this.statusBarWindowController = optional;
        this.swipeStatusBarAwayGestureHandler = optional2;
        this.statusBarStateController = statusBarStateController;
        this.keyguardCallChipController = keyguardCallChipController;
        this.configurationController = configurationController;
        this.indicatorScaleGardener = indicatorScaleGardener;
    }

    public static final void access$removeChip(OngoingCallController ongoingCallController) {
        ongoingCallController.callNotificationInfo = null;
        ongoingCallController.tearDownChipView();
        ongoingCallController.swipeStatusBarAwayGestureHandler.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$removeChip$2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SwipeStatusBarAwayGestureHandler) obj).removeOnGestureDetectedCallback("OngoingCallController");
            }
        });
        Iterator it = ((ArrayList) ongoingCallController.mListeners).iterator();
        while (it.hasNext()) {
            ((OngoingCallListener) it.next()).onOngoingCallStateChanged();
        }
        CallAppUidObserver callAppUidObserver = ongoingCallController.uidObserver;
        callAppUidObserver.callAppUid = null;
        callAppUidObserver.isRegistered = false;
        OngoingCallController ongoingCallController2 = OngoingCallController.this;
        ongoingCallController2.iActivityManager.unregisterUidObserver(ongoingCallController2.uidObserver);
    }

    public static void scaleCallChip(View view, float f, boolean z) {
        int i;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            Resources resources = view.getContext().getResources();
            if (z) {
                i = R.dimen.samsung_ongoing_call_chip_keyguard_margin_start;
            } else {
                i = R.dimen.samsung_ongoing_call_chip_margin_start;
            }
            marginLayoutParams.setMarginStart(MathKt__MathJVMKt.roundToInt(resources.getDimensionPixelSize(i) * f));
            marginLayoutParams.setMarginEnd(MathKt__MathJVMKt.roundToInt(view.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_margin_end) * f));
            view.setLayoutParams(marginLayoutParams);
            View findViewById = view.findViewById(R.id.ongoing_call_chip_background);
            findViewById.getLayoutParams().height = MathKt__MathJVMKt.roundToInt(findViewById.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_height) * f);
            int roundToInt = MathKt__MathJVMKt.roundToInt(findViewById.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_side_padding) * f);
            findViewById.setPaddingRelative(roundToInt, 0, roundToInt, 0);
            View findViewById2 = view.findViewById(R.id.ongoing_call_chip_icon);
            ViewGroup.LayoutParams layoutParams = findViewById2.getLayoutParams();
            layoutParams.width = MathKt__MathJVMKt.roundToInt(findViewById2.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_icon_size) * f);
            layoutParams.height = MathKt__MathJVMKt.roundToInt(findViewById2.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_icon_size) * f);
            findViewById2.setLayoutParams(layoutParams);
            OngoingCallChronometer ongoingCallChronometer = (OngoingCallChronometer) view.findViewById(R.id.ongoing_call_chip_time);
            ((ViewGroup.MarginLayoutParams) ongoingCallChronometer.getLayoutParams()).setMarginStart(MathKt__MathJVMKt.roundToInt(ongoingCallChronometer.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_icon_padding) * f));
            ongoingCallChronometer.setTextSize(0, ongoingCallChronometer.getContext().getResources().getDimensionPixelSize(R.dimen.samsung_ongoing_call_chip_text_size) * f);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("Active call notification: " + this.callNotificationInfo);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("Call app visible: ", this.uidObserver.isCallAppVisible, printWriter);
    }

    public final boolean hasOngoingCall() {
        boolean z;
        boolean z2;
        boolean z3;
        CallNotificationInfo callNotificationInfo = this.callNotificationInfo;
        if (callNotificationInfo != null && callNotificationInfo.isOngoing) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (!this.uidObserver.isCallAppVisible) {
                return true;
            }
            if (callNotificationInfo != null && callNotificationInfo.extraVisibleFlag == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                if (callNotificationInfo != null && callNotificationInfo.extraVisibleFlag == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r2.isOngoing == true) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setChipView(android.view.View r2) {
        /*
            r1 = this;
            r1.tearDownChipView()
            r1.chipView = r2
            r0 = 2131363727(0x7f0a078f, float:1.834727E38)
            android.view.View r2 = r2.findViewById(r0)
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallBackgroundContainer r2 = (com.android.systemui.statusbar.phone.ongoingcall.OngoingCallBackgroundContainer) r2
            if (r2 != 0) goto L11
            goto L18
        L11:
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$setChipView$1 r0 = new com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$setChipView$1
            r0.<init>()
            r2.maxHeightFetcher = r0
        L18:
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r2 = r1.callNotificationInfo
            if (r2 == 0) goto L22
            boolean r2 = r2.isOngoing
            r0 = 1
            if (r2 != r0) goto L22
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 != 0) goto L2b
            boolean r2 = r1.hasOngoingCall()
            if (r2 == 0) goto L2e
        L2b:
            r1.updateChip()
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController.setChipView(android.view.View):void");
    }

    public final void tearDownChipView() {
        OngoingCallChronometer ongoingCallChronometer;
        OngoingCallChronometer ongoingCallChronometer2;
        View view = this.chipView;
        if (view != null && (ongoingCallChronometer2 = (OngoingCallChronometer) view.findViewById(R.id.ongoing_call_chip_time)) != null) {
            ongoingCallChronometer2.stop();
        }
        View view2 = this.keyguardCallChipController.chipView;
        if (view2 != null && (ongoingCallChronometer = (OngoingCallChronometer) view2.findViewById(R.id.ongoing_call_chip_time)) != null) {
            ongoingCallChronometer.stop();
        }
    }

    public final void updateChip() {
        OngoingCallChronometer ongoingCallChronometer;
        BlendMode blendMode;
        boolean z;
        OngoingCallChronometer ongoingCallChronometer2;
        OngoingCallChronometer ongoingCallChronometer3;
        BlendMode blendMode2;
        CallNotificationInfo callNotificationInfo = this.callNotificationInfo;
        if (callNotificationInfo == null) {
            return;
        }
        IndicatorScaleGardener indicatorScaleGardener = this.indicatorScaleGardener;
        Context context = this.context;
        float f = indicatorScaleGardener.getLatestScaleModel(context).ratio;
        boolean z2 = false;
        scaleCallChip(this.chipView, f, false);
        KeyguardCallChipController keyguardCallChipController = this.keyguardCallChipController;
        scaleCallChip(keyguardCallChipController.chipView, f, true);
        View view = this.chipView;
        if (view != null) {
            ongoingCallChronometer = (OngoingCallChronometer) view.findViewById(R.id.ongoing_call_chip_time);
        } else {
            ongoingCallChronometer = null;
        }
        if (view != null && ongoingCallChronometer != null) {
            CallNotificationInfo callNotificationInfo2 = this.callNotificationInfo;
            Intrinsics.checkNotNull(callNotificationInfo2);
            Drawable drawable = context.getResources().getDrawable(R.drawable.samsung_ongoing_call_chip_bg, null);
            int i = callNotificationInfo2.callChipColor;
            if (i != -1) {
                blendMode = BlendMode.SRC;
            } else {
                blendMode = BlendMode.DST;
            }
            drawable.setColorFilter(new BlendModeColorFilter(i, blendMode));
            view.findViewById(R.id.ongoing_call_chip_background).setBackground(drawable);
            View view2 = keyguardCallChipController.chipView;
            if (view2 != null) {
                Drawable drawable2 = view2.getContext().getResources().getDrawable(R.drawable.samsung_ongoing_call_chip_bg, null);
                if (i != -1) {
                    blendMode2 = BlendMode.SRC;
                } else {
                    blendMode2 = BlendMode.DST;
                }
                drawable2.setColorFilter(new BlendModeColorFilter(i, blendMode2));
                view2.findViewById(R.id.ongoing_call_chip_background).setBackground(drawable2);
            }
            long j = callNotificationInfo.callStartTime;
            if (j > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                ongoingCallChronometer.shouldHideText = false;
                ongoingCallChronometer.requestLayout();
                SystemClockImpl systemClockImpl = (SystemClockImpl) this.systemClock;
                systemClockImpl.getClass();
                long currentTimeMillis = j - System.currentTimeMillis();
                systemClockImpl.getClass();
                ongoingCallChronometer.setBase(android.os.SystemClock.elapsedRealtime() + currentTimeMillis);
                ongoingCallChronometer.start();
                long base = ongoingCallChronometer.getBase();
                View view3 = keyguardCallChipController.chipView;
                if (view3 != null && (ongoingCallChronometer3 = (OngoingCallChronometer) view3.findViewById(R.id.ongoing_call_chip_time)) != null) {
                    ongoingCallChronometer3.shouldHideText = false;
                    ongoingCallChronometer3.requestLayout();
                    ongoingCallChronometer3.setBase(base);
                    ongoingCallChronometer3.start();
                }
            } else {
                ongoingCallChronometer.shouldHideText = true;
                ongoingCallChronometer.requestLayout();
                ongoingCallChronometer.stop();
                View view4 = keyguardCallChipController.chipView;
                if (view4 != null && (ongoingCallChronometer2 = (OngoingCallChronometer) view4.findViewById(R.id.ongoing_call_chip_time)) != null) {
                    ongoingCallChronometer2.shouldHideText = true;
                    ongoingCallChronometer2.requestLayout();
                    ongoingCallChronometer2.stop();
                }
            }
            updateChipClickListener();
            CallAppUidObserver callAppUidObserver = this.uidObserver;
            Integer num = callAppUidObserver.callAppUid;
            int i2 = callNotificationInfo.uid;
            if (num == null || num.intValue() != i2) {
                callAppUidObserver.callAppUid = Integer.valueOf(i2);
                try {
                    OngoingCallController ongoingCallController = OngoingCallController.this;
                    if (ongoingCallController.iActivityManager.getUidProcessState(i2, ongoingCallController.context.getOpPackageName()) <= 2) {
                        z2 = true;
                    }
                    callAppUidObserver.isCallAppVisible = z2;
                    if (!callAppUidObserver.isRegistered) {
                        OngoingCallController ongoingCallController2 = OngoingCallController.this;
                        ongoingCallController2.iActivityManager.registerUidObserver(ongoingCallController2.uidObserver, 1, -1, ongoingCallController2.context.getOpPackageName());
                        callAppUidObserver.isRegistered = true;
                    }
                } catch (SecurityException e) {
                    Log.e("OngoingCallController", "Security exception when trying to set up uid observer: " + e);
                }
            }
            updateGestureListening();
            Iterator it = ((ArrayList) this.mListeners).iterator();
            while (it.hasNext()) {
                ((OngoingCallListener) it.next()).onOngoingCallStateChanged();
            }
            return;
        }
        this.callNotificationInfo = null;
        if (OngoingCallControllerKt.DEBUG) {
            Log.w("OngoingCallController", "Ongoing call chip view could not be found; Not displaying chip in status bar");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (((com.android.systemui.flags.FeatureFlagsRelease) r0.featureFlags).isEnabled(com.android.systemui.flags.Flags.ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateChipClickListener() {
        /*
            r7 = this;
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r0 = r7.callNotificationInfo
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r7.isFullscreen
            r1 = 0
            if (r0 == 0) goto L4a
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallFlags r0 = r7.ongoingCallFlags
            r0.getClass()
            com.android.systemui.flags.Flags r2 = com.android.systemui.flags.Flags.INSTANCE
            r2.getClass()
            com.android.systemui.flags.ReleasedFlag r3 = com.android.systemui.flags.Flags.ONGOING_CALL_STATUS_BAR_CHIP
            com.android.systemui.flags.FeatureFlags r4 = r0.featureFlags
            com.android.systemui.flags.FeatureFlagsRelease r4 = (com.android.systemui.flags.FeatureFlagsRelease) r4
            boolean r3 = r4.isEnabled(r3)
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L2c
            com.android.systemui.flags.ReleasedFlag r3 = com.android.systemui.flags.Flags.ONGOING_CALL_IN_IMMERSIVE
            boolean r3 = r4.isEnabled(r3)
            if (r3 == 0) goto L2c
            r3 = r5
            goto L2d
        L2c:
            r3 = r6
        L2d:
            if (r3 == 0) goto L3f
            r2.getClass()
            com.android.systemui.flags.ReleasedFlag r2 = com.android.systemui.flags.Flags.ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP
            com.android.systemui.flags.FeatureFlags r0 = r0.featureFlags
            com.android.systemui.flags.FeatureFlagsRelease r0 = (com.android.systemui.flags.FeatureFlagsRelease) r0
            boolean r0 = r0.isEnabled(r2)
            if (r0 == 0) goto L3f
            goto L40
        L3f:
            r5 = r6
        L40:
            if (r5 != 0) goto L4a
            android.view.View r7 = r7.chipView
            if (r7 == 0) goto L6b
            r7.setOnClickListener(r1)
            goto L6b
        L4a:
            android.view.View r0 = r7.chipView
            if (r0 == 0) goto L56
            r2 = 2131363727(0x7f0a078f, float:1.834727E38)
            android.view.View r2 = r0.findViewById(r2)
            goto L57
        L56:
            r2 = r1
        L57:
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$CallNotificationInfo r3 = r7.callNotificationInfo
            if (r3 == 0) goto L5d
            android.app.PendingIntent r1 = r3.intent
        L5d:
            if (r0 == 0) goto L6b
            if (r2 == 0) goto L6b
            if (r1 == 0) goto L6b
            com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$updateChipClickListener$1 r3 = new com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$updateChipClickListener$1
            r3.<init>()
            r0.setOnClickListener(r3)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController.updateChipClickListener():void");
    }

    public final void updateGestureListening() {
        CallNotificationInfo callNotificationInfo = this.callNotificationInfo;
        Optional optional = this.swipeStatusBarAwayGestureHandler;
        if (callNotificationInfo != null) {
            boolean z = false;
            if (callNotificationInfo != null && callNotificationInfo.statusBarSwipedAway) {
                z = true;
            }
            if (!z && this.isFullscreen) {
                optional.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$updateGestureListening$2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        SwipeStatusBarAwayGestureHandler swipeStatusBarAwayGestureHandler = (SwipeStatusBarAwayGestureHandler) obj;
                        final OngoingCallController ongoingCallController = OngoingCallController.this;
                        Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$updateGestureListening$2.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                OngoingCallController.CallNotificationInfo callNotificationInfo2;
                                OngoingCallController ongoingCallController2 = OngoingCallController.this;
                                ongoingCallController2.getClass();
                                if (OngoingCallControllerKt.DEBUG) {
                                    Log.d("OngoingCallController", "Swipe away gesture detected");
                                }
                                OngoingCallController.CallNotificationInfo callNotificationInfo3 = ongoingCallController2.callNotificationInfo;
                                if (callNotificationInfo3 != null) {
                                    callNotificationInfo2 = new OngoingCallController.CallNotificationInfo(callNotificationInfo3.key, callNotificationInfo3.callStartTime, callNotificationInfo3.intent, callNotificationInfo3.uid, callNotificationInfo3.isOngoing, true, callNotificationInfo3.callChipColor, callNotificationInfo3.extraVisibleFlag);
                                } else {
                                    callNotificationInfo2 = null;
                                }
                                ongoingCallController2.callNotificationInfo = callNotificationInfo2;
                                ongoingCallController2.swipeStatusBarAwayGestureHandler.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$onSwipeAwayGestureDetected$2
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj3) {
                                        ((SwipeStatusBarAwayGestureHandler) obj3).removeOnGestureDetectedCallback("OngoingCallController");
                                    }
                                });
                                return Unit.INSTANCE;
                            }
                        };
                        Map map = swipeStatusBarAwayGestureHandler.callbacks;
                        boolean isEmpty = map.isEmpty();
                        map.put("OngoingCallController", function1);
                        if (isEmpty) {
                            swipeStatusBarAwayGestureHandler.startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
                        }
                    }
                });
                return;
            }
        }
        optional.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController$updateGestureListening$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SwipeStatusBarAwayGestureHandler) obj).removeOnGestureDetectedCallback("OngoingCallController");
            }
        });
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(OngoingCallListener ongoingCallListener) {
        synchronized (this.mListeners) {
            if (!((ArrayList) this.mListeners).contains(ongoingCallListener)) {
                ((ArrayList) this.mListeners).add(ongoingCallListener);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(OngoingCallListener ongoingCallListener) {
        synchronized (this.mListeners) {
            ((ArrayList) this.mListeners).remove(ongoingCallListener);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallNotificationInfo {
        public final int callChipColor;
        public final long callStartTime;
        public final int extraVisibleFlag;
        public final PendingIntent intent;
        public final boolean isOngoing;
        public final String key;
        public final boolean statusBarSwipedAway;
        public final int uid;

        public CallNotificationInfo(String str, long j, PendingIntent pendingIntent, int i, boolean z, boolean z2, int i2, int i3) {
            this.key = str;
            this.callStartTime = j;
            this.intent = pendingIntent;
            this.uid = i;
            this.isOngoing = z;
            this.statusBarSwipedAway = z2;
            this.callChipColor = i2;
            this.extraVisibleFlag = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CallNotificationInfo)) {
                return false;
            }
            CallNotificationInfo callNotificationInfo = (CallNotificationInfo) obj;
            if (Intrinsics.areEqual(this.key, callNotificationInfo.key) && this.callStartTime == callNotificationInfo.callStartTime && Intrinsics.areEqual(this.intent, callNotificationInfo.intent) && this.uid == callNotificationInfo.uid && this.isOngoing == callNotificationInfo.isOngoing && this.statusBarSwipedAway == callNotificationInfo.statusBarSwipedAway && this.callChipColor == callNotificationInfo.callChipColor && this.extraVisibleFlag == callNotificationInfo.extraVisibleFlag) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int m = TraceMetadata$$ExternalSyntheticOutline0.m(this.callStartTime, this.key.hashCode() * 31, 31);
            PendingIntent pendingIntent = this.intent;
            if (pendingIntent == null) {
                hashCode = 0;
            } else {
                hashCode = pendingIntent.hashCode();
            }
            int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.uid, (m + hashCode) * 31, 31);
            int i = 1;
            boolean z = this.isOngoing;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (m2 + i2) * 31;
            boolean z2 = this.statusBarSwipedAway;
            if (!z2) {
                i = z2 ? 1 : 0;
            }
            return Integer.hashCode(this.extraVisibleFlag) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.callChipColor, (i3 + i) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CallNotificationInfo(key=");
            sb.append(this.key);
            sb.append(", callStartTime=");
            sb.append(this.callStartTime);
            sb.append(", intent=");
            sb.append(this.intent);
            sb.append(", uid=");
            sb.append(this.uid);
            sb.append(", isOngoing=");
            sb.append(this.isOngoing);
            sb.append(", statusBarSwipedAway=");
            sb.append(this.statusBarSwipedAway);
            sb.append(", callChipColor=");
            sb.append(this.callChipColor);
            sb.append(", extraVisibleFlag=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.extraVisibleFlag, ")");
        }

        public /* synthetic */ CallNotificationInfo(String str, long j, PendingIntent pendingIntent, int i, boolean z, boolean z2, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j, pendingIntent, i, z, z2, (i4 & 64) != 0 ? -1 : i2, i3);
        }
    }
}
