package com.android.systemui.assist;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.android.internal.app.AssistUtils;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.InstanceIdSequence;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.FrameworkStatsLog;
import com.android.systemui.assist.AssistantInvocationEvent;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AssistLogger {
    public static final Set SESSION_END_EVENTS;
    public final AssistUtils assistUtils;
    public final Context context;
    public InstanceId currentInstanceId;
    public final InstanceIdSequence instanceIdSequence = new InstanceIdSequence(QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING);
    public final PhoneStateMonitor phoneStateMonitor;
    public final UiEventLogger uiEventLogger;
    public final UserTracker userTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        SESSION_END_EVENTS = SetsKt__SetsKt.setOf(AssistantSessionEvent.ASSISTANT_SESSION_INVOCATION_CANCELLED, AssistantSessionEvent.ASSISTANT_SESSION_CLOSE);
    }

    public AssistLogger(Context context, UiEventLogger uiEventLogger, AssistUtils assistUtils, PhoneStateMonitor phoneStateMonitor, UserTracker userTracker) {
        this.context = context;
        this.uiEventLogger = uiEventLogger;
        this.assistUtils = assistUtils;
        this.phoneStateMonitor = phoneStateMonitor;
        this.userTracker = userTracker;
    }

    public final int getAssistantUid(ComponentName componentName) {
        if (componentName == null) {
            return 0;
        }
        try {
            return this.context.getPackageManager().getApplicationInfo(componentName.getPackageName(), 0).uid;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("AssistLogger", "Unable to find Assistant UID", e);
            return 0;
        }
    }

    public final void reportAssistantInvocationEventFromLegacy(int i, boolean z, ComponentName componentName, Integer num) {
        Integer valueOf;
        AssistantInvocationEvent assistantInvocationEvent;
        int deviceStateFromLegacyDeviceState;
        String str;
        String str2 = null;
        if (num == null) {
            valueOf = null;
        } else {
            AssistantInvocationEvent.Companion companion = AssistantInvocationEvent.Companion;
            int intValue = num.intValue();
            companion.getClass();
            valueOf = Integer.valueOf(AssistantInvocationEvent.Companion.deviceStateFromLegacyDeviceState(intValue));
        }
        AssistantInvocationEvent.Companion.getClass();
        if (z) {
            switch (i) {
                case 1:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_TOUCH_GESTURE;
                    break;
                case 2:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_PHYSICAL_GESTURE;
                    break;
                case 3:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_HOTWORD;
                    break;
                case 4:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_QUICK_SEARCH_BAR;
                    break;
                case 5:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_HOME_LONG_PRESS;
                    break;
                case 6:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_POWER_LONG_PRESS;
                    break;
                default:
                    assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_UNKNOWN;
                    break;
            }
        } else if (i != 1) {
            if (i != 2) {
                assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_START_UNKNOWN;
            } else {
                assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE;
            }
        } else {
            assistantInvocationEvent = AssistantInvocationEvent.ASSISTANT_INVOCATION_START_TOUCH_GESTURE;
        }
        if (componentName == null) {
            componentName = this.assistUtils.getAssistComponentForUser(((UserTrackerImpl) this.userTracker).getUserId());
        }
        int assistantUid = getAssistantUid(componentName);
        if (valueOf != null) {
            deviceStateFromLegacyDeviceState = valueOf.intValue();
        } else {
            deviceStateFromLegacyDeviceState = AssistantInvocationEvent.Companion.deviceStateFromLegacyDeviceState(this.phoneStateMonitor.getPhoneState());
        }
        int i2 = deviceStateFromLegacyDeviceState;
        int id = assistantInvocationEvent.getId();
        if (componentName != null) {
            str2 = componentName.flattenToString();
        }
        if (str2 == null) {
            str = "";
        } else {
            str = str2;
        }
        InstanceId instanceId = this.currentInstanceId;
        if (instanceId == null) {
            instanceId = this.instanceIdSequence.newInstanceId();
        }
        this.currentInstanceId = instanceId;
        FrameworkStatsLog.write(IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub, id, assistantUid, str, instanceId.getId(), i2, false);
    }

    public final void reportAssistantSessionEvent(AssistantSessionEvent assistantSessionEvent) {
        String str;
        ComponentName assistComponentForUser = this.assistUtils.getAssistComponentForUser(((UserTrackerImpl) this.userTracker).getUserId());
        int assistantUid = getAssistantUid(assistComponentForUser);
        if (assistComponentForUser != null) {
            str = assistComponentForUser.flattenToString();
        } else {
            str = null;
        }
        InstanceId instanceId = this.currentInstanceId;
        if (instanceId == null) {
            instanceId = this.instanceIdSequence.newInstanceId();
        }
        this.currentInstanceId = instanceId;
        this.uiEventLogger.logWithInstanceId(assistantSessionEvent, assistantUid, str, instanceId);
        if (CollectionsKt___CollectionsKt.contains(SESSION_END_EVENTS, assistantSessionEvent)) {
            this.currentInstanceId = null;
        }
    }
}
