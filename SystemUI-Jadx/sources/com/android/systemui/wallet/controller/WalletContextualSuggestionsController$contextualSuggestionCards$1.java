package com.android.systemui.wallet.controller;

import android.service.quickaccesswallet.WalletCard;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.wallet.controller.WalletContextualSuggestionsController$contextualSuggestionCards$1", f = "WalletContextualSuggestionsController.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WalletContextualSuggestionsController$contextualSuggestionCards$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public WalletContextualSuggestionsController$contextualSuggestionCards$1(Continuation<? super WalletContextualSuggestionsController$contextualSuggestionCards$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        WalletContextualSuggestionsController$contextualSuggestionCards$1 walletContextualSuggestionsController$contextualSuggestionCards$1 = new WalletContextualSuggestionsController$contextualSuggestionCards$1((Continuation) obj3);
        walletContextualSuggestionsController$contextualSuggestionCards$1.L$0 = (List) obj;
        walletContextualSuggestionsController$contextualSuggestionCards$1.L$1 = (Set) obj2;
        return walletContextualSuggestionsController$contextualSuggestionCards$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            List list = (List) this.L$0;
            Set set = (Set) this.L$1;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                WalletCard walletCard = (WalletCard) obj2;
                if (walletCard.getCardType() == 2 && set.contains(walletCard.getCardId())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    arrayList.add(obj2);
                }
            }
            return arrayList;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
