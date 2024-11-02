package com.android.systemui.keyguard.data.quickaffordance;

import android.content.SharedPreferences;
import com.android.systemui.settings.UserFileManagerImpl;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.util.RingerModeTrackerImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2", f = "MuteQuickAffordanceConfig.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ MuteQuickAffordanceConfig this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2(MuteQuickAffordanceConfig muteQuickAffordanceConfig, Continuation<? super MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2> continuation) {
        super(2, continuation);
        this.this$0 = muteQuickAffordanceConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            MuteQuickAffordanceConfig muteQuickAffordanceConfig = this.this$0;
            SharedPreferences sharedPreferences = ((UserFileManagerImpl) muteQuickAffordanceConfig.userFileManager).getSharedPreferences(((UserTrackerImpl) muteQuickAffordanceConfig.userTracker).getUserId(), "quick_affordance_mute_ringer_mode_cache");
            Integer value = ((RingerModeTrackerImpl) this.this$0.ringerModeTracker).ringerModeInternal.getValue();
            if (value == null) {
                value = new Integer(2);
            }
            return new Integer(sharedPreferences.getInt("key_last_non_silent_ringer_mode", value.intValue()));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
