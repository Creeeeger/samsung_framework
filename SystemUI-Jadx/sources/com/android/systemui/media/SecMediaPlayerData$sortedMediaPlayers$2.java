package com.android.systemui.media;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class SecMediaPlayerData$sortedMediaPlayers$2 extends FunctionReferenceImpl implements Function0 {
    public static final SecMediaPlayerData$sortedMediaPlayers$2 INSTANCE = new SecMediaPlayerData$sortedMediaPlayers$2();

    public SecMediaPlayerData$sortedMediaPlayers$2() {
        super(0, CollectionsKt.class, "arrayListOf", "arrayListOf()Ljava/util/ArrayList;", 1);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new ArrayList();
    }
}
