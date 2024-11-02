package com.android.systemui.statusbar.phone.knox.data.repository;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorCallback;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.statusbar.phone.knox.data.model.KnoxStatusBarControlModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.phone.knox.data.repository.KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1", f = "KnoxStatusBarControlRepository.kt", l = {85}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ KnoxStatusBarControlRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1(KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl, Continuation<? super KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1> continuation) {
        super(2, continuation);
        this.this$0 = knoxStatusBarControlRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1 knoxStatusBarControlRepositoryImpl$knoxStatusBarState$1 = new KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1(this.this$0, continuation);
        knoxStatusBarControlRepositoryImpl$knoxStatusBarState$1.L$0 = obj;
        return knoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.knox.KnoxStateMonitorCallback, com.android.systemui.statusbar.phone.knox.data.repository.KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
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
            final KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl = this.this$0;
            final ?? r1 = new KnoxStateMonitorCallback() { // from class: com.android.systemui.statusbar.phone.knox.data.repository.KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1
                @Override // com.android.systemui.knox.KnoxStateMonitorCallback
                public final void onUpdateStatusBarHidden() {
                    KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl2 = KnoxStatusBarControlRepositoryImpl.this;
                    boolean z2 = knoxStatusBarControlRepositoryImpl2.enableLog;
                    KnoxStateMonitor knoxStateMonitor = knoxStatusBarControlRepositoryImpl2.knoxStateMonitor;
                    if (z2) {
                        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("Status bar hidden is called=", ((KnoxStateMonitorImpl) knoxStateMonitor).isStatusBarHidden(), "KnoxStatusBarControlRepository");
                    }
                    ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(KnoxStatusBarControlModel.copy$default(knoxStatusBarControlRepositoryImpl2.knoxStatusBarControlModel, ((KnoxStateMonitorImpl) knoxStateMonitor).isStatusBarHidden(), false, null, 0, 0, 0, 62));
                }

                @Override // com.android.systemui.knox.KnoxStateMonitorCallback
                public final void onUpdateStatusBarIcons() {
                    boolean z2;
                    KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl2 = KnoxStatusBarControlRepositoryImpl.this;
                    boolean z3 = knoxStatusBarControlRepositoryImpl2.enableLog;
                    KnoxStateMonitor knoxStateMonitor = knoxStatusBarControlRepositoryImpl2.knoxStateMonitor;
                    if (z3) {
                        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("Status bar icon is called=", ((KnoxStateMonitorImpl) knoxStateMonitor).isStatusBarHidden(), "KnoxStatusBarControlRepository");
                    }
                    KnoxStatusBarControlModel knoxStatusBarControlModel = knoxStatusBarControlRepositoryImpl2.knoxStatusBarControlModel;
                    CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                    if (customSdkMonitor != null && customSdkMonitor.mStatusBarIconsState) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(KnoxStatusBarControlModel.copy$default(knoxStatusBarControlModel, false, z2, null, 0, 0, 0, 61));
                }

                @Override // com.android.systemui.knox.KnoxStateMonitorCallback
                public final void onUpdateStatusBarText() {
                    int i2;
                    int i3;
                    int i4;
                    String str;
                    KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl2 = KnoxStatusBarControlRepositoryImpl.this;
                    boolean z2 = knoxStatusBarControlRepositoryImpl2.enableLog;
                    String str2 = null;
                    KnoxStateMonitor knoxStateMonitor = knoxStatusBarControlRepositoryImpl2.knoxStateMonitor;
                    if (z2) {
                        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                        if (customSdkMonitor == null) {
                            str = null;
                        } else {
                            str = customSdkMonitor.mStatusBarText;
                        }
                        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Status bar text is updated=", str, "KnoxStatusBarControlRepository");
                    }
                    KnoxStatusBarControlModel knoxStatusBarControlModel = knoxStatusBarControlRepositoryImpl2.knoxStatusBarControlModel;
                    CustomSdkMonitor customSdkMonitor2 = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                    if (customSdkMonitor2 != null) {
                        str2 = customSdkMonitor2.mStatusBarText;
                    }
                    String str3 = str2;
                    CustomSdkMonitor customSdkMonitor3 = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                    if (customSdkMonitor3 == null) {
                        i2 = 0;
                    } else {
                        i2 = customSdkMonitor3.mStatusBarTextStyle;
                    }
                    CustomSdkMonitor customSdkMonitor4 = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                    if (customSdkMonitor4 == null) {
                        i3 = 0;
                    } else {
                        i3 = customSdkMonitor4.mStatusBarTextSize;
                    }
                    CustomSdkMonitor customSdkMonitor5 = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
                    if (customSdkMonitor5 == null) {
                        i4 = 0;
                    } else {
                        i4 = customSdkMonitor5.mStatusBarTextWidth;
                    }
                    ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(KnoxStatusBarControlModel.copy$default(knoxStatusBarControlModel, false, false, str3, i2, i3, i4, 3));
                }
            };
            ((KnoxStateMonitorImpl) this.this$0.knoxStateMonitor).registerCallback(r1);
            KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl2 = this.this$0;
            KnoxStatusBarControlModel knoxStatusBarControlModel = knoxStatusBarControlRepositoryImpl2.knoxStatusBarControlModel;
            KnoxStateMonitor knoxStateMonitor = knoxStatusBarControlRepositoryImpl2.knoxStateMonitor;
            CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
            if (customSdkMonitor != null && customSdkMonitor.mStatusBarIconsState) {
                z = true;
            } else {
                z = false;
            }
            ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(KnoxStatusBarControlModel.copy$default(knoxStatusBarControlModel, ((KnoxStateMonitorImpl) knoxStateMonitor).isStatusBarHidden(), z, null, 0, 0, 0, 60));
            final KnoxStatusBarControlRepositoryImpl knoxStatusBarControlRepositoryImpl3 = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.phone.knox.data.repository.KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ((KnoxStateMonitorImpl) KnoxStatusBarControlRepositoryImpl.this.knoxStateMonitor).removeCallback(r1);
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
