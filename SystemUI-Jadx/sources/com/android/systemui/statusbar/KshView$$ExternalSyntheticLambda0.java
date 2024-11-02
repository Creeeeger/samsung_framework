package com.android.systemui.statusbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KshView$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ KshView$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r6 = this;
            int r0 = r6.$r8$classId
            switch(r0) {
                case 0: goto L7;
                default: goto L5;
            }
        L5:
            goto Lbd
        L7:
            java.lang.Object r6 = r6.f$0
            com.android.systemui.statusbar.KshView r6 = (com.android.systemui.statusbar.KshView) r6
            androidx.recyclerview.widget.RecyclerView r0 = r6.mKshGroupRecyclerView
            r1 = 1
            boolean r0 = r0.canScrollHorizontally(r1)
            androidx.recyclerview.widget.RecyclerView r2 = r6.mKshGroupRecyclerView
            r3 = -1
            boolean r2 = r2.canScrollHorizontally(r3)
            boolean r4 = r6.mRightScrolled
            r5 = 0
            if (r4 == 0) goto L34
            if (r0 != 0) goto L34
            boolean r0 = r6.isRTL()
            if (r0 == 0) goto L27
            goto L2f
        L27:
            com.android.systemui.statusbar.KshViewAdapter r0 = r6.mKshViewAdapter
            int r0 = r0.getItemCount()
            int r5 = r0 + (-1)
        L2f:
            r6.moveSelector(r5)
            goto Lbc
        L34:
            if (r4 != 0) goto L4b
            if (r2 != 0) goto L4b
            boolean r0 = r6.isRTL()
            if (r0 == 0) goto L46
            com.android.systemui.statusbar.KshViewAdapter r0 = r6.mKshViewAdapter
            int r0 = r0.getItemCount()
            int r5 = r0 + (-1)
        L46:
            r6.moveSelector(r5)
            goto Lbc
        L4b:
            boolean r0 = r6.isRTL()
            if (r0 == 0) goto L56
            boolean r0 = r6.mRightScrolled
            r0 = r0 ^ r1
            r6.mRightScrolled = r0
        L56:
            boolean r0 = r6.mRightScrolled
            if (r0 == 0) goto L6e
            androidx.recyclerview.widget.LinearLayoutManager r0 = r6.mLayoutManager
            int r2 = r0.getChildCount()
            int r2 = r2 - r1
            android.view.View r0 = r0.findOneVisibleChild(r2, r3, r1, r5)
            if (r0 != 0) goto L69
        L67:
            r0 = r3
            goto L7f
        L69:
            int r0 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r0)
            goto L7f
        L6e:
            androidx.recyclerview.widget.LinearLayoutManager r0 = r6.mLayoutManager
            int r2 = r0.getChildCount()
            android.view.View r0 = r0.findOneVisibleChild(r5, r2, r1, r5)
            if (r0 != 0) goto L7b
            goto L67
        L7b:
            int r0 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r0)
        L7f:
            int r2 = r6.mMaxColumn
            if (r2 != r1) goto L8f
            androidx.recyclerview.widget.LinearLayoutManager r0 = r6.mLayoutManager
            int r0 = r0.findFirstVisibleItemPosition()
            boolean r2 = r6.mRightScrolled
            int r0 = r0 + r2
            r6.mPosition = r0
            goto L97
        L8f:
            boolean r2 = r6.mRightScrolled
            if (r2 == 0) goto L94
            r3 = r1
        L94:
            int r0 = r0 + r3
            r6.mPosition = r0
        L97:
            int r0 = r6.mPosition
            if (r0 >= 0) goto L9d
            r6.mPosition = r5
        L9d:
            int r0 = r6.mPosition
            com.android.systemui.statusbar.KshViewAdapter r2 = r6.mKshViewAdapter
            int r2 = r2.getItemCount()
            if (r0 < r2) goto Lb0
            com.android.systemui.statusbar.KshViewAdapter r0 = r6.mKshViewAdapter
            int r0 = r0.getItemCount()
            int r0 = r0 - r1
            r6.mPosition = r0
        Lb0:
            androidx.recyclerview.widget.RecyclerView r0 = r6.mKshGroupRecyclerView
            int r1 = r6.mPosition
            r0.smoothScrollToPosition(r1)
            int r0 = r6.mPosition
            r6.moveSelector(r0)
        Lbc:
            return
        Lbd:
            java.lang.Object r6 = r6.f$0
            com.android.systemui.statusbar.KshView$1 r6 = (com.android.systemui.statusbar.KshView.AnonymousClass1) r6
            com.android.systemui.statusbar.KshView r6 = com.android.systemui.statusbar.KshView.this
            int r0 = r6.mPosition
            r6.moveSelector(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KshView$$ExternalSyntheticLambda0.run():void");
    }
}
