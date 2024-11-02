package com.android.systemui.keyguard;

import android.view.RemoteAnimationTarget;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardViewMediator$$ExternalSyntheticLambda19 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        if (((RemoteAnimationTarget) obj).mode == 0) {
            return true;
        }
        return false;
    }
}
