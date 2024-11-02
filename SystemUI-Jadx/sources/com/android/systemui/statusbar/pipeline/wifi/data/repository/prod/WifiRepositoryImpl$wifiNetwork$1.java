package com.android.systemui.statusbar.pipeline.wifi.data.repository.prod;

import android.net.ConnectivityManager;
import android.net.Network;
import com.android.systemui.statusbar.pipeline.shared.LoggerHelper;
import com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger;
import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiNetwork$1", f = "WifiRepositoryImpl.kt", l = {268}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiRepositoryImpl$wifiNetwork$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ConnectivityManager $connectivityManager;
    final /* synthetic */ WifiInputLogger $logger;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WifiRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiRepositoryImpl$wifiNetwork$1(ConnectivityManager connectivityManager, WifiInputLogger wifiInputLogger, WifiRepositoryImpl wifiRepositoryImpl, Continuation<? super WifiRepositoryImpl$wifiNetwork$1> continuation) {
        super(2, continuation);
        this.$connectivityManager = connectivityManager;
        this.$logger = wifiInputLogger;
        this.this$0 = wifiRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WifiRepositoryImpl$wifiNetwork$1 wifiRepositoryImpl$wifiNetwork$1 = new WifiRepositoryImpl$wifiNetwork$1(this.$connectivityManager, this.$logger, this.this$0, continuation);
        wifiRepositoryImpl$wifiNetwork$1.L$0 = obj;
        return wifiRepositoryImpl$wifiNetwork$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WifiRepositoryImpl$wifiNetwork$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel$Inactive] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiNetwork$1$callback$1, android.net.ConnectivityManager$NetworkCallback] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            WifiRepositoryImpl.Companion.getClass();
            ref$ObjectRef.element = WifiRepositoryImpl.WIFI_NETWORK_DEFAULT;
            final WifiInputLogger wifiInputLogger = this.$logger;
            final WifiRepositoryImpl wifiRepositoryImpl = this.this$0;
            final ConnectivityManager connectivityManager = this.$connectivityManager;
            final ?? r1 = new ConnectivityManager.NetworkCallback() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiNetwork$1$callback$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:81:0x0141  */
                /* JADX WARN: Removed duplicated region for block: B:87:0x016b  */
                @Override // android.net.ConnectivityManager.NetworkCallback
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void onCapabilitiesChanged(android.net.Network r23, android.net.NetworkCapabilities r24) {
                    /*
                        Method dump skipped, instructions count: 428
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiNetwork$1$callback$1.onCapabilitiesChanged(android.net.Network, android.net.NetworkCapabilities):void");
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r4v2, types: [T, com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel$Inactive, java.lang.Object] */
                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onLost(Network network) {
                    WifiInputLogger wifiInputLogger2 = WifiInputLogger.this;
                    wifiInputLogger2.getClass();
                    LoggerHelper.INSTANCE.getClass();
                    LoggerHelper.logOnLost(wifiInputLogger2.buffer, "WifiInputLog", network, false);
                    wifiRepositoryImpl.wifiNetworkChangeEvents.tryEmit(Unit.INSTANCE);
                    WifiNetworkModel wifiNetworkModel = (WifiNetworkModel) ref$ObjectRef.element;
                    if (((wifiNetworkModel instanceof WifiNetworkModel.Active) && ((WifiNetworkModel.Active) wifiNetworkModel).networkId == network.getNetId()) || ((wifiNetworkModel instanceof WifiNetworkModel.CarrierMerged) && ((WifiNetworkModel.CarrierMerged) wifiNetworkModel).networkId == network.getNetId())) {
                        ?? r4 = WifiNetworkModel.Inactive.INSTANCE;
                        ref$ObjectRef.element = r4;
                        wifiRepositoryImpl._wifiConnectivityTestReported.setValue(Boolean.FALSE);
                        ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(r4);
                    }
                }
            };
            this.$connectivityManager.registerNetworkCallback(WifiRepositoryImpl.WIFI_NETWORK_CALLBACK_REQUEST, (ConnectivityManager.NetworkCallback) r1);
            final ConnectivityManager connectivityManager2 = this.$connectivityManager;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiNetwork$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    connectivityManager2.unregisterNetworkCallback(r1);
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
