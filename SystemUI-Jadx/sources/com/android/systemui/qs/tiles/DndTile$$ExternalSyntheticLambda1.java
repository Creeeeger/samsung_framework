package com.android.systemui.qs.tiles;

import android.app.Dialog;
import android.widget.TextView;
import com.android.systemui.qs.tiles.DndTile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DndTile$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DndTile$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DndTile dndTile = (DndTile) this.f$0;
                dndTile.getClass();
                int i = DndTile.DndDetailAdapter.$r8$clinit;
                DndTile.DndDetailAdapter dndDetailAdapter = dndTile.mDetailAdapter;
                TextView textView = dndDetailAdapter.mSummary;
                if (textView != null) {
                    textView.setText(dndDetailAdapter.this$0.mDndMenuSummary);
                    return;
                }
                return;
            default:
                ((Dialog) this.f$0).show();
                return;
        }
    }
}
