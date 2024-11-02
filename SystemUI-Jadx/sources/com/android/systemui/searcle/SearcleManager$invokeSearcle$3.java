package com.android.systemui.searcle;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.util.Log;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.systemui.util.SystemUIAnalytics;
import java.util.Optional;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.searcle.SearcleManager$invokeSearcle$3", f = "SearcleManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SearcleManager$invokeSearcle$3 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ SearcleManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearcleManager$invokeSearcle$3(SearcleManager searcleManager, Continuation<? super SearcleManager$invokeSearcle$3> continuation) {
        super(2, continuation);
        this.this$0 = searcleManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearcleManager$invokeSearcle$3(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearcleManager$invokeSearcle$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        boolean z;
        boolean isOmniAvailable;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            SearcleManager searcleManager = this.this$0;
            Context context = searcleManager.context;
            if (searcleManager.settingsHelper.isNavigationBarGestureWhileHidden()) {
                i = 65537;
            } else {
                i = 65538;
            }
            Optional<Boolean> isCsHelperAvailable = OmniAPI.mAssistStateManager.isCsHelperAvailable();
            Optional<Boolean> isVisAvailable = OmniAPI.mAssistStateManager.isVisAvailable();
            boolean z2 = false;
            if (!isCsHelperAvailable.isPresent() && !isVisAvailable.isPresent()) {
                z = false;
            } else {
                z = true;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("invocation_time_ms", SystemClock.elapsedRealtime());
            bundle.putInt("omni.entry_point", i);
            Boolean bool = Boolean.FALSE;
            bundle.putBoolean("omni.isCSHelperAvailable", isCsHelperAvailable.orElse(bool).booleanValue());
            if (z) {
                isOmniAvailable = isVisAvailable.orElse(bool).booleanValue();
            } else {
                isOmniAvailable = OmniAPI.mAssistStateManager.isOmniAvailable();
            }
            bundle.putBoolean("omni.isVISAvailable", isOmniAvailable);
            Log.d("OmniAPI", "invokeOmni isCsHelperAvailable = " + bundle.getBoolean("omni.isCSHelperAvailable") + ", isVisAvailable = " + bundle.getBoolean("omni.isVISAvailable"));
            try {
                if (OmniAPI.mVoiceInteractionManagerService == null) {
                    OmniAPI.mVoiceInteractionManagerService = IVoiceInteractionManagerService.Stub.asInterface(ServiceManager.getService("voiceinteraction"));
                }
                z2 = OmniAPI.mVoiceInteractionManagerService.showSessionFromSession((IBinder) null, bundle, 7, context.getAttributionTag());
            } catch (RemoteException unused) {
                Log.i("OmniAPI", "failure calling VIS");
            } catch (NullPointerException e) {
                Log.i("OmniAPI", "failure invokeOmni = " + e);
            }
            if (z2) {
                SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "749006", this.this$0.invokedPackageName);
            } else {
                Log.d("SearcleManager", "invokeSearcle invokeOmni return false");
            }
            this.this$0.invokedPackageName = "";
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
