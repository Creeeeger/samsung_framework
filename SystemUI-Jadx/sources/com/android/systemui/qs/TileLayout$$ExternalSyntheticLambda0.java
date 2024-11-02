package com.android.systemui.qs;

import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TileLayout$$ExternalSyntheticLambda0 implements IntConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TileLayout f$0;

    public /* synthetic */ TileLayout$$ExternalSyntheticLambda0(TileLayout tileLayout, int i) {
        this.$r8$classId = i;
        this.f$0 = tileLayout;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.$r8$classId) {
            case 4:
                this.f$0.mCellWidth = i;
                return;
            case 5:
                this.f$0.mMaxAllowedRows = i;
                return;
            case 6:
                this.f$0.mMaxCellHeight = i;
                return;
            default:
                this.f$0.mColumns = i;
                return;
        }
    }
}
