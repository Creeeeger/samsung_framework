package com.android.systemui.keyguard.domain.interactor;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class TransitionInteractor {
    public final String name;

    public /* synthetic */ TransitionInteractor(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public abstract void start();

    private TransitionInteractor(String str) {
        this.name = str;
    }
}
