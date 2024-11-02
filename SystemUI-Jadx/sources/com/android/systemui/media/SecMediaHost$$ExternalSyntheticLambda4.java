package com.android.systemui.media;

import java.util.HashMap;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecMediaHost$$ExternalSyntheticLambda4 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HashMap f$0;

    public /* synthetic */ SecMediaHost$$ExternalSyntheticLambda4(int i, HashMap hashMap) {
        this.$r8$classId = i;
        this.f$0 = hashMap;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
            default:
                return (SecMediaPlayerData) this.f$0.get((MediaType) obj);
        }
    }
}
