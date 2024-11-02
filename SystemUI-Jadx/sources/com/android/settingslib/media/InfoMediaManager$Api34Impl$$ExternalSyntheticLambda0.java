package com.android.settingslib.media;

import android.media.RouteListingPreference;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ Map f$0;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        RouteListingPreference.Item item = (RouteListingPreference.Item) obj;
        this.f$0.put(item.getRouteId(), item);
    }
}
