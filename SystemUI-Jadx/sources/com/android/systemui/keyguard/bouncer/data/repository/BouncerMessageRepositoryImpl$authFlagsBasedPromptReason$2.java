package com.android.systemui.keyguard.bouncer.data.repository;

import com.android.systemui.keyguard.shared.model.AuthenticationFlags;
import kotlin.Triple;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2 extends AdaptedFunctionReference implements Function4 {
    public static final BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2 INSTANCE = new BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2();

    public BouncerMessageRepositoryImpl$authFlagsBasedPromptReason$2() {
        super(4, Triple.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        boolean booleanValue2 = ((Boolean) obj3).booleanValue();
        int i = BouncerMessageRepositoryImpl.$r8$clinit;
        return new Triple((AuthenticationFlags) obj, Boolean.valueOf(booleanValue), Boolean.valueOf(booleanValue2));
    }
}
