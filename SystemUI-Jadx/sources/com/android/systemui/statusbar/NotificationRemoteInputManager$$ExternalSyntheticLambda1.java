package com.android.systemui.statusbar;

import android.app.PendingIntent;
import android.util.Pair;
import android.view.View;
import android.widget.RemoteViews;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinator;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinatorKt;
import java.util.Iterator;
import java.util.function.Consumer;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationRemoteInputManager$$ExternalSyntheticLambda1 {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ View f$2;
    public final /* synthetic */ PendingIntent f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ NotificationRemoteInputManager$$ExternalSyntheticLambda1(NotificationRemoteInputManager.AnonymousClass1 anonymousClass1, RemoteViews.RemoteResponse remoteResponse, View view, NotificationEntry notificationEntry, PendingIntent pendingIntent) {
        this.f$0 = anonymousClass1;
        this.f$1 = remoteResponse;
        this.f$2 = view;
        this.f$4 = notificationEntry;
        this.f$3 = pendingIntent;
    }

    public final boolean handleClick() {
        boolean booleanValue;
        NotificationRemoteInputManager.AnonymousClass1 anonymousClass1 = (NotificationRemoteInputManager.AnonymousClass1) this.f$0;
        RemoteViews.RemoteResponse remoteResponse = (RemoteViews.RemoteResponse) this.f$1;
        NotificationEntry notificationEntry = (NotificationEntry) this.f$4;
        anonymousClass1.getClass();
        View view = this.f$2;
        Pair launchOptions = remoteResponse.getLaunchOptions(view);
        ActionClickLogger actionClickLogger = NotificationRemoteInputManager.this.mLogger;
        actionClickLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        ActionClickLogger$logStartingIntentWithDefaultHandler$2 actionClickLogger$logStartingIntentWithDefaultHandler$2 = new Function1() { // from class: com.android.systemui.statusbar.ActionClickLogger$logStartingIntentWithDefaultHandler$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return MotionLayout$$ExternalSyntheticOutline0.m("  [Action click] Launching intent ", logMessage.getStr2(), " via default handler (for ", logMessage.getStr1(), ")");
            }
        };
        LogBuffer logBuffer = actionClickLogger.buffer;
        String str = null;
        LogMessage obtain = logBuffer.obtain("ActionClickLogger", logLevel, actionClickLogger$logStartingIntentWithDefaultHandler$2, null);
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        }
        obtain.setStr1(str);
        PendingIntent pendingIntent = this.f$3;
        obtain.setStr2(pendingIntent.getIntent().toString());
        logBuffer.commit(obtain);
        boolean startPendingIntent = RemoteViews.startPendingIntent(view, pendingIntent, launchOptions);
        if (startPendingIntent) {
            NotificationRemoteInputManager notificationRemoteInputManager = NotificationRemoteInputManager.this;
            if (notificationEntry == null) {
                notificationRemoteInputManager.getClass();
            } else {
                RemoteInputCoordinator remoteInputCoordinator = notificationRemoteInputManager.mRemoteInputListener;
                if (remoteInputCoordinator != null) {
                    booleanValue = ((Boolean) RemoteInputCoordinatorKt.DEBUG$delegate.getValue()).booleanValue();
                    String str2 = notificationEntry.mKey;
                    if (booleanValue) {
                        KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("releaseNotificationIfKeptForRemoteInputHistory(entry=", str2, ")", "RemoteInputCoordinator");
                    }
                    remoteInputCoordinator.mRemoteInputHistoryExtender.endLifetimeExtensionAfterDelay(str2, 200L);
                    remoteInputCoordinator.mSmartReplyHistoryExtender.endLifetimeExtensionAfterDelay(str2, 200L);
                    remoteInputCoordinator.mRemoteInputActiveExtender.endLifetimeExtensionAfterDelay(str2, 200L);
                }
                Iterator it = notificationRemoteInputManager.mActionPressListeners.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(notificationEntry);
                }
            }
        }
        return startPendingIntent;
    }
}
