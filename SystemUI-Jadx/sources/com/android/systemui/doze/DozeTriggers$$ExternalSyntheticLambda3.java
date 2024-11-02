package com.android.systemui.doze;

import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.doze.DozeTriggers;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.phone.DozeServiceHost;
import java.util.function.Consumer;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DozeTriggers$$ExternalSyntheticLambda3 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DozeTriggers f$0;

    public /* synthetic */ DozeTriggers$$ExternalSyntheticLambda3(DozeTriggers dozeTriggers, int i) {
        this.$r8$classId = i;
        this.f$0 = dozeTriggers;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        switch (this.$r8$classId) {
            case 0:
                DozeTriggers dozeTriggers = this.f$0;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                boolean isExecutingTransition = dozeTriggers.mMachine.isExecutingTransition();
                DozeLog dozeLog = dozeTriggers.mDozeLog;
                if (isExecutingTransition) {
                    LogBuffer.log$default(dozeLog.mLogger.buffer, "DozeLog", LogLevel.DEBUG, "onProximityFar called during transition. Ignoring sensor response.", null, 8, null);
                    return;
                }
                boolean z4 = !booleanValue;
                DozeMachine.State state = dozeTriggers.mMachine.getState();
                if (state == DozeMachine.State.DOZE_AOD_PAUSED) {
                    z = true;
                } else {
                    z = false;
                }
                DozeMachine.State state2 = DozeMachine.State.DOZE_AOD_PAUSING;
                if (state == state2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                DozeMachine.State state3 = DozeMachine.State.DOZE_AOD;
                if (state != state3) {
                    z3 = false;
                }
                if (state == DozeMachine.State.DOZE_PULSING || state == DozeMachine.State.DOZE_PULSING_BRIGHT) {
                    DozeLogger dozeLogger = dozeLog.mLogger;
                    dozeLogger.getClass();
                    LogLevel logLevel = LogLevel.DEBUG;
                    DozeLogger$logSetIgnoreTouchWhilePulsing$2 dozeLogger$logSetIgnoreTouchWhilePulsing$2 = new Function1() { // from class: com.android.systemui.doze.DozeLogger$logSetIgnoreTouchWhilePulsing$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Prox changed while pulsing. setIgnoreTouchWhilePulsing=", ((LogMessage) obj2).getBool1());
                        }
                    };
                    LogBuffer logBuffer = dozeLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("DozeLog", logLevel, dozeLogger$logSetIgnoreTouchWhilePulsing$2, null);
                    obtain.setBool1(z4);
                    logBuffer.commit(obtain);
                    DozeServiceHost dozeServiceHost = (DozeServiceHost) dozeTriggers.mDozeHost;
                    if (z4 != dozeServiceHost.mIgnoreTouchWhilePulsing) {
                        dozeServiceHost.mDozeLog.tracePulseTouchDisabledByProx(z4);
                    }
                    dozeServiceHost.mIgnoreTouchWhilePulsing = z4;
                    if (((StatusBarStateControllerImpl) dozeServiceHost.mStatusBarStateController).mIsDozing && z4) {
                        dozeServiceHost.mNotificationShadeWindowViewController.cancelCurrentTouch();
                    }
                }
                if (booleanValue && (z || z2)) {
                    LogBuffer.log$default(dozeLog.mLogger.buffer, "DozeLog", LogLevel.DEBUG, "Prox FAR, unpausing AOD", null, 8, null);
                    dozeTriggers.mMachine.requestState(state3);
                    return;
                } else {
                    if (z4 && z3) {
                        LogBuffer.log$default(dozeLog.mLogger.buffer, "DozeLog", LogLevel.DEBUG, "Prox NEAR, starting pausing AOD countdown", null, 8, null);
                        dozeTriggers.mMachine.requestState(state2);
                        return;
                    }
                    return;
                }
            case 1:
                DozeTriggers dozeTriggers2 = this.f$0;
                dozeTriggers2.mUiEventLogger.log((DozeTriggers.DozingUpdateUiEvent) obj, dozeTriggers2.mSessionTracker.getSessionId(1));
                return;
            case 2:
                DozeTriggers dozeTriggers3 = this.f$0;
                dozeTriggers3.mUiEventLogger.log((DozeTriggers.DozingUpdateUiEvent) obj, dozeTriggers3.mSessionTracker.getSessionId(1));
                return;
            default:
                DozeTriggers dozeTriggers4 = this.f$0;
                dozeTriggers4.mUiEventLogger.log((DozeTriggers.DozingUpdateUiEvent) obj, dozeTriggers4.mSessionTracker.getSessionId(1));
                return;
        }
    }
}
