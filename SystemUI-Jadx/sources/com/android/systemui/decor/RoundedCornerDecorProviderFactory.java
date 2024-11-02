package com.android.systemui.decor;

import com.android.systemui.R;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.EmptyList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RoundedCornerDecorProviderFactory extends DecorProviderFactory {
    public final RoundedCornerResDelegate roundedCornerResDelegate;

    public RoundedCornerDecorProviderFactory(RoundedCornerResDelegate roundedCornerResDelegate) {
        this.roundedCornerResDelegate = roundedCornerResDelegate;
    }

    @Override // com.android.systemui.decor.DecorProviderFactory
    public final boolean getHasProviders() {
        RoundedCornerResDelegate roundedCornerResDelegate = this.roundedCornerResDelegate;
        if (!roundedCornerResDelegate.hasTop && !roundedCornerResDelegate.hasBottom) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.decor.DecorProviderFactory
    public final List getProviders() {
        RoundedCornerResDelegate roundedCornerResDelegate = this.roundedCornerResDelegate;
        boolean z = roundedCornerResDelegate.hasTop;
        boolean z2 = roundedCornerResDelegate.hasBottom;
        if (z && z2) {
            return CollectionsKt__CollectionsKt.listOf(new RoundedCornerDecorProviderImpl(R.id.rounded_corner_top_left, 1, 0, roundedCornerResDelegate), new RoundedCornerDecorProviderImpl(R.id.rounded_corner_top_right, 1, 2, roundedCornerResDelegate), new RoundedCornerDecorProviderImpl(R.id.rounded_corner_bottom_left, 3, 0, roundedCornerResDelegate), new RoundedCornerDecorProviderImpl(R.id.rounded_corner_bottom_right, 3, 2, roundedCornerResDelegate));
        }
        if (z) {
            return CollectionsKt__CollectionsKt.listOf(new RoundedCornerDecorProviderImpl(R.id.rounded_corner_top_left, 1, 0, roundedCornerResDelegate), new RoundedCornerDecorProviderImpl(R.id.rounded_corner_top_right, 1, 2, roundedCornerResDelegate));
        }
        if (z2) {
            return CollectionsKt__CollectionsKt.listOf(new RoundedCornerDecorProviderImpl(R.id.rounded_corner_bottom_left, 3, 0, roundedCornerResDelegate), new RoundedCornerDecorProviderImpl(R.id.rounded_corner_bottom_right, 3, 2, roundedCornerResDelegate));
        }
        return EmptyList.INSTANCE;
    }
}
