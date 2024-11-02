package com.android.internal.location.altitude;

import android.util.LruCache;
import com.android.internal.location.altitude.GeoidHeightMap;
import com.android.internal.location.altitude.nano.S2TileProto;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class GeoidHeightMap$$ExternalSyntheticLambda0 implements GeoidHeightMap.TileFunction {
    public final /* synthetic */ LruCache f$0;

    public /* synthetic */ GeoidHeightMap$$ExternalSyntheticLambda0(LruCache lruCache) {
        this.f$0 = lruCache;
    }

    @Override // com.android.internal.location.altitude.GeoidHeightMap.TileFunction
    public final S2TileProto getTile(long j) {
        return (S2TileProto) this.f$0.get(Long.valueOf(j));
    }
}
