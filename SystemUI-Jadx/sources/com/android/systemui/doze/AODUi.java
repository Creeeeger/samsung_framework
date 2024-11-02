package com.android.systemui.doze;

import android.app.AlarmManager;
import android.content.Context;
import android.hardware.display.AmbientDisplayConfiguration;
import android.os.Handler;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.DozeServiceHost;
import com.android.systemui.util.Assert;
import com.android.systemui.util.wakelock.WakeLock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AODUi extends DozeUi {
    public final AmbientDisplayConfiguration mConfig;
    public final AnonymousClass1 mHostCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.doze.AODUi$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$doze$DozeMachine$State;

        static {
            int[] iArr = new int[DozeMachine.State.values().length];
            $SwitchMap$com$android$systemui$doze$DozeMachine$State = iArr;
            try {
                iArr[DozeMachine.State.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.FINISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.doze.AODUi$1] */
    public AODUi(Context context, AlarmManager alarmManager, WakeLock wakeLock, DozeHost dozeHost, Handler handler, DozeParameters dozeParameters, StatusBarStateController statusBarStateController, DozeLog dozeLog, AmbientDisplayConfiguration ambientDisplayConfiguration) {
        super(context, alarmManager, wakeLock, dozeHost, handler, dozeParameters, statusBarStateController, dozeLog);
        this.mHostCallback = new DozeHost.Callback() { // from class: com.android.systemui.doze.AODUi.1
            @Override // com.android.systemui.doze.DozeHost.Callback
            public final void onAlwaysOnSuppressedChanged(boolean z) {
                DozeMachine.State state;
                AODUi aODUi = AODUi.this;
                AmbientDisplayConfiguration ambientDisplayConfiguration2 = aODUi.mConfig;
                if (ambientDisplayConfiguration2 != null && ambientDisplayConfiguration2.alwaysOnEnabled(-2) && !z) {
                    state = DozeMachine.State.DOZE_AOD;
                } else {
                    state = DozeMachine.State.DOZE;
                }
                aODUi.mMachine.requestState(state);
            }
        };
        this.mConfig = ambientDisplayConfiguration;
    }

    @Override // com.android.systemui.doze.DozeUi, com.android.systemui.doze.DozeMachine.Part
    public final void transitionTo(DozeMachine.State state, DozeMachine.State state2) {
        super.transitionTo(state, state2);
        int i = AnonymousClass2.$SwitchMap$com$android$systemui$doze$DozeMachine$State[state2.ordinal()];
        AnonymousClass1 anonymousClass1 = this.mHostCallback;
        DozeHost dozeHost = this.mHost;
        if (i != 1) {
            if (i == 2) {
                DozeServiceHost dozeServiceHost = (DozeServiceHost) dozeHost;
                dozeServiceHost.getClass();
                Assert.isMainThread();
                dozeServiceHost.mCallbacks.remove(anonymousClass1);
                return;
            }
            return;
        }
        DozeServiceHost dozeServiceHost2 = (DozeServiceHost) dozeHost;
        dozeServiceHost2.getClass();
        Assert.isMainThread();
        dozeServiceHost2.mCallbacks.add(anonymousClass1);
    }
}
