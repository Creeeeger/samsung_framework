package com.android.systemui.decor;

import android.content.res.Resources;
import com.android.systemui.R;
import java.util.Collections;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverRoundedCornerDecorProviderFactory extends DecorProviderFactory {
    public final boolean hasProviders;

    public CoverRoundedCornerDecorProviderFactory(Resources resources) {
        this.hasProviders = resources.getBoolean(R.bool.config_enableCoverScreenRoundedCorner);
    }

    @Override // com.android.systemui.decor.DecorProviderFactory
    public final boolean getHasProviders() {
        return this.hasProviders;
    }

    @Override // com.android.systemui.decor.DecorProviderFactory
    public final List getProviders() {
        if (this.hasProviders) {
            return Collections.singletonList(new CoverRoundedCornerDecorProviderImpl(R.id.rounded_corner_cover));
        }
        return EmptyList.INSTANCE;
    }
}
