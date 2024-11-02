package com.android.systemui.keyguard.data.quickaffordance;

import android.content.SharedPreferences;
import com.android.systemui.settings.UserFileManagerImpl;
import com.android.systemui.settings.UserTrackerImpl;
import java.util.Map;
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
@DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1", f = "KeyguardQuickAffordanceLocalUserSelectionManager.kt", l = {122, 124}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ KeyguardQuickAffordanceLocalUserSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1(KeyguardQuickAffordanceLocalUserSelectionManager keyguardQuickAffordanceLocalUserSelectionManager, Continuation<? super KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1> continuation) {
        super(2, continuation);
        this.this$0 = keyguardQuickAffordanceLocalUserSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1 keyguardQuickAffordanceLocalUserSelectionManager$selections$3$1 = new KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1(this.this$0, continuation);
        keyguardQuickAffordanceLocalUserSelectionManager$selections$3$1.L$0 = obj;
        return keyguardQuickAffordanceLocalUserSelectionManager$selections$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener;
        ProducerScope producerScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            onSharedPreferenceChangeListener = (SharedPreferences.OnSharedPreferenceChangeListener) this.L$1;
            producerScope = (ProducerScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope2 = (ProducerScope) this.L$0;
            KeyguardQuickAffordanceLocalUserSelectionManager keyguardQuickAffordanceLocalUserSelectionManager = this.this$0;
            int i2 = KeyguardQuickAffordanceLocalUserSelectionManager.$r8$clinit;
            keyguardQuickAffordanceLocalUserSelectionManager.sharedPrefs = ((UserFileManagerImpl) keyguardQuickAffordanceLocalUserSelectionManager.userFileManager).getSharedPreferences(((UserTrackerImpl) keyguardQuickAffordanceLocalUserSelectionManager.userTracker).getUserId(), "quick_affordance_selections");
            final KeyguardQuickAffordanceLocalUserSelectionManager keyguardQuickAffordanceLocalUserSelectionManager2 = this.this$0;
            onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1$listener$1
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    ((ChannelCoroutine) ProducerScope.this).mo2584trySendJP2dKIU(keyguardQuickAffordanceLocalUserSelectionManager2.getSelections());
                }
            };
            this.this$0.sharedPrefs.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            Map selections = this.this$0.getSelections();
            this.L$0 = producerScope2;
            this.L$1 = onSharedPreferenceChangeListener;
            this.label = 1;
            if (((ChannelCoroutine) producerScope2).send(selections, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            producerScope = producerScope2;
        }
        final KeyguardQuickAffordanceLocalUserSelectionManager keyguardQuickAffordanceLocalUserSelectionManager3 = this.this$0;
        Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceLocalUserSelectionManager$selections$3$1.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardQuickAffordanceLocalUserSelectionManager.this.sharedPrefs.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                return Unit.INSTANCE;
            }
        };
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (ProduceKt.awaitClose(producerScope, function0, this) == coroutineSingletons) {
            return coroutineSingletons;
        }
        return Unit.INSTANCE;
    }
}
