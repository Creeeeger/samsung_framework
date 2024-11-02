package com.android.systemui.tv;

import android.content.Context;
import com.android.systemui.SystemUIInitializer;
import com.android.systemui.dagger.GlobalRootComponent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TvSystemUIInitializer extends SystemUIInitializer {
    public TvSystemUIInitializer(Context context) {
        super(context);
    }

    @Override // com.android.systemui.SystemUIInitializer
    public GlobalRootComponent.Builder getGlobalRootComponentBuilder() {
        return DaggerTvGlobalRootComponent.builder();
    }
}
