package com.android.systemui.qs.pipeline.domain.model;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.pipeline.shared.TileSpec;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TileModel {
    public final TileSpec spec;
    public final QSTile tile;

    public TileModel(TileSpec tileSpec, QSTile qSTile) {
        this.spec = tileSpec;
        this.tile = qSTile;
        if (Intrinsics.areEqual(tileSpec.getSpec(), qSTile.getTileSpec())) {
        } else {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TileModel)) {
            return false;
        }
        TileModel tileModel = (TileModel) obj;
        if (Intrinsics.areEqual(this.spec, tileModel.spec) && Intrinsics.areEqual(this.tile, tileModel.tile)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.tile.hashCode() + (this.spec.hashCode() * 31);
    }

    public final String toString() {
        return "TileModel(spec=" + this.spec + ", tile=" + this.tile + ")";
    }
}
