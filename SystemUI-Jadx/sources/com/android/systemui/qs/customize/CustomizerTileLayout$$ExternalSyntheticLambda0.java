package com.android.systemui.qs.customize;

import com.android.systemui.qs.customize.SecQSCustomizerBase;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CustomizerTileLayout$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ SecQSCustomizerBase.CustomTileInfo f$0;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        SecQSCustomizerBase.CustomTileInfo customTileInfo = this.f$0;
        int i = CustomizerTileLayout.$r8$clinit;
        return ((SecQSCustomizerBase.CustomTileInfo) obj).spec.equals(customTileInfo.spec);
    }
}
