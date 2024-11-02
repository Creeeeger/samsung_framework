package androidx.picker.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.picker.adapter.AbsAdapter;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.ListAdapter;
import androidx.picker.decorator.ListDividerItemDecoration;
import androidx.picker.decorator.ListSpacingItemDecoration;
import androidx.picker.decorator.RoundedCornerDecoration;
import androidx.picker.features.composable.ComposableStrategy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslAppPickerListView extends SeslAppPickerView {
    public final ComposableStrategy mComposableStrategy;

    public SeslAppPickerListView(Context context) {
        this(context, null);
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final AbsAdapter getAppPickerAdapter() {
        ListAdapter listAdapter = new ListAdapter(((SeslAppPickerView) this).mContext, this.mComposableStrategy);
        listAdapter.setHasStableIds(true);
        return listAdapter;
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final RecyclerView.LayoutManager getLayoutManager() {
        return new LinearLayoutManager(((SeslAppPickerView) this).mContext);
    }

    @Override // androidx.picker.widget.SeslAppPickerView, androidx.picker.common.log.LogTag
    public final String getLogTag() {
        return "SeslAppPickerListView";
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final void setItemDecoration(int i, HeaderFooterAdapter headerFooterAdapter) {
        super.setItemDecoration(i, headerFooterAdapter);
        addItemDecoration(new ListSpacingItemDecoration(((SeslAppPickerView) this).mContext));
        addItemDecoration(new ListDividerItemDecoration(((SeslAppPickerView) this).mContext));
        addItemDecoration(new RoundedCornerDecoration(((SeslAppPickerView) this).mContext, headerFooterAdapter));
    }

    public SeslAppPickerListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x001e, code lost:
    
        if (r4 == null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SeslAppPickerListView(android.content.Context r4, android.util.AttributeSet r5, int r6) {
        /*
            r3 = this;
            r3.<init>(r4, r5, r6)
            r0 = 0
            r3.mViewType = r0
            r1 = 0
            int[] r2 = androidx.picker.R$styleable.SeslAppPickerListView     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r6, r0)     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19
            java.lang.String r1 = r4.getString(r0)     // Catch: java.lang.RuntimeException -> L15 java.lang.Throwable -> L77
        L11:
            r4.recycle()
            goto L21
        L15:
            r5 = move-exception
            goto L1b
        L17:
            r3 = move-exception
            goto L79
        L19:
            r5 = move-exception
            r4 = r1
        L1b:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L77
            if (r4 == 0) goto L21
            goto L11
        L21:
            if (r1 != 0) goto L29
            java.lang.Class<androidx.picker.features.composable.DefaultComposableStrategy> r4 = androidx.picker.features.composable.DefaultComposableStrategy.class
            java.lang.String r1 = r4.getName()     // Catch: java.lang.Throwable -> L3e
        L29:
            java.lang.Class r4 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L3e
            java.lang.Class[] r5 = new java.lang.Class[r0]     // Catch: java.lang.Throwable -> L3e
            java.lang.reflect.Constructor r4 = r4.getConstructor(r5)     // Catch: java.lang.Throwable -> L3e
            java.lang.Object[] r5 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r4 = r4.newInstance(r5)     // Catch: java.lang.Throwable -> L3e
            androidx.picker.features.composable.ComposableStrategy r4 = (androidx.picker.features.composable.ComposableStrategy) r4     // Catch: java.lang.Throwable -> L3e
            r3.mComposableStrategy = r4     // Catch: java.lang.Throwable -> L3e
            goto L5f
        L3e:
            r4 = move-exception
            java.lang.String r5 = "used DefaultComposableStrategy"
            androidx.picker.common.log.LogTagHelperKt.info(r3, r5)
            java.lang.String r5 = r4.getMessage()
            if (r5 != 0) goto L4d
            java.lang.String r5 = "Unknown error"
        L4d:
            androidx.picker.common.log.LogTagHelperKt.debug(r3, r5)
            boolean r5 = androidx.picker.common.log.LogTagHelperKt.IS_DEBUG_DEVICE
            if (r5 != 0) goto L55
            goto L58
        L55:
            r4.printStackTrace()
        L58:
            androidx.picker.features.composable.DefaultComposableStrategy r4 = new androidx.picker.features.composable.DefaultComposableStrategy
            r4.<init>()
            r3.mComposableStrategy = r4
        L5f:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "use ComposableStrategy: "
            r4.<init>(r5)
            androidx.picker.features.composable.ComposableStrategy r5 = r3.mComposableStrategy
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            androidx.picker.common.log.LogTagHelperKt.debug(r3, r4)
            r3.initialize()
            return
        L77:
            r3 = move-exception
            r1 = r4
        L79:
            if (r1 == 0) goto L7e
            r1.recycle()
        L7e:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.widget.SeslAppPickerListView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
