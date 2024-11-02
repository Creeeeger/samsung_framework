package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import com.android.systemui.util.settings.GlobalSettings;
import com.android.systemui.util.settings.GlobalSettingsImpl;
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
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1", f = "MobileConnectionRepositoryImpl.kt", l = {641}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MobileConnectionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1(MobileConnectionRepositoryImpl mobileConnectionRepositoryImpl, Continuation<? super MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1> continuation) {
        super(2, continuation);
        this.this$0 = mobileConnectionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1 mobileConnectionRepositoryImpl$mobileDataEnabledChanged$1 = new MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1(this.this$0, continuation);
        mobileConnectionRepositoryImpl$mobileDataEnabledChanged$1.L$0 = obj;
        return mobileConnectionRepositoryImpl$mobileDataEnabledChanged$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1$observer$1, android.database.ContentObserver] */
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
            final Handler handler = new Handler(Looper.getMainLooper());
            final MobileConnectionRepositoryImpl mobileConnectionRepositoryImpl = this.this$0;
            final ?? r3 = new ContentObserver(handler) { // from class: com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1$observer$1
                @Override // android.database.ContentObserver
                public final void onChange(boolean z) {
                    try {
                        GlobalSettings globalSettings = MobileConnectionRepositoryImpl.this.globalSettings;
                        try {
                            boolean z2 = true;
                            if (Integer.parseInt(((GlobalSettingsImpl) globalSettings).getStringForUser(globalSettings.getUserId(), "mobile_data")) != 1) {
                                z2 = false;
                            }
                            ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(Boolean.valueOf(z2));
                        } catch (NumberFormatException unused) {
                            throw new Settings.SettingNotFoundException("mobile_data");
                        }
                    } catch (Settings.SettingNotFoundException unused2) {
                    }
                }
            };
            GlobalSettings globalSettings = this.this$0.globalSettings;
            ((GlobalSettingsImpl) globalSettings).getClass();
            globalSettings.registerContentObserverForUser(Settings.Global.getUriFor("mobile_data"), false, (ContentObserver) r3, globalSettings.getUserId());
            final MobileConnectionRepositoryImpl mobileConnectionRepositoryImpl2 = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl$mobileDataEnabledChanged$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    MobileConnectionRepositoryImpl.this.globalSettings.unregisterContentObserver(r3);
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
