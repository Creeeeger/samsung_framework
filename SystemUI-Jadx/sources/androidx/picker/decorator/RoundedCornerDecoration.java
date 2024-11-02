package androidx.picker.decorator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.util.SeslRoundedCorner;
import androidx.appcompat.util.SeslSubheaderRoundedCorner;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.viewholder.GroupTitleViewHolder;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RoundedCornerDecoration extends RecyclerView.ItemDecoration {
    public final RecyclerView.Adapter adapter;
    public final SeslRoundedCorner mItemRoundedCorner;
    public final SeslSubheaderRoundedCorner mSubHeaderRoundedCorner;

    public RoundedCornerDecoration(Context context, RecyclerView.Adapter adapter) {
        this.adapter = adapter;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.roundedCornerColor, typedValue, true);
        SeslRoundedCorner seslRoundedCorner = new SeslRoundedCorner(context);
        Resources resources = context.getResources();
        int i = typedValue.resourceId;
        seslRoundedCorner.setRoundedCorners(15);
        if (i > 0) {
            seslRoundedCorner.setRoundedCornerColor(15, resources.getColor(i, null));
        }
        this.mItemRoundedCorner = seslRoundedCorner;
        SeslSubheaderRoundedCorner seslSubheaderRoundedCorner = new SeslSubheaderRoundedCorner(context);
        Resources resources2 = context.getResources();
        int i2 = typedValue.resourceId;
        seslSubheaderRoundedCorner.setRoundedCorners(15);
        if (i2 > 0) {
            seslSubheaderRoundedCorner.setRoundedCornerColor(15, resources2.getColor(i2, null));
        }
        this.mSubHeaderRoundedCorner = seslSubheaderRoundedCorner;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void seslOnDispatchDraw(Canvas canvas, RecyclerView recyclerView) {
        HeaderFooterAdapter headerFooterAdapter;
        Iterator it = new ViewGroupKt$children$1(recyclerView).iterator();
        while (true) {
            ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (viewGroupKt$iterator$1.hasNext()) {
                View view = (View) viewGroupKt$iterator$1.next();
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
                boolean z = childViewHolder instanceof GroupTitleViewHolder;
                SeslSubheaderRoundedCorner seslSubheaderRoundedCorner = this.mSubHeaderRoundedCorner;
                if (z) {
                    seslSubheaderRoundedCorner.setRoundedCorners(15);
                    seslSubheaderRoundedCorner.drawRoundedCorner(view, canvas);
                } else {
                    RecyclerView.Adapter adapter = this.adapter;
                    if (adapter instanceof HeaderFooterAdapter) {
                        headerFooterAdapter = (HeaderFooterAdapter) adapter;
                    } else {
                        headerFooterAdapter = null;
                    }
                    if (headerFooterAdapter != null) {
                        int headersCount = headerFooterAdapter.getHeadersCount();
                        int footersCount = headerFooterAdapter.getFootersCount();
                        int i = headersCount - 1;
                        int itemCount = headerFooterAdapter.getItemCount() - footersCount;
                        if (headersCount > 0 && Intrinsics.areEqual(childViewHolder, recyclerView.findViewHolderForAdapterPosition(i))) {
                            seslSubheaderRoundedCorner.setRoundedCorners(3);
                            seslSubheaderRoundedCorner.drawRoundedCorner(view, canvas);
                        } else if (footersCount > 0 && Intrinsics.areEqual(childViewHolder, recyclerView.findViewHolderForAdapterPosition(itemCount))) {
                            seslSubheaderRoundedCorner.setRoundedCorners(12);
                            seslSubheaderRoundedCorner.drawRoundedCorner(view, canvas);
                        } else {
                            SeslRoundedCorner seslRoundedCorner = this.mItemRoundedCorner;
                            seslRoundedCorner.setRoundedCorners(0);
                            seslRoundedCorner.drawRoundedCorner(view, canvas);
                        }
                    }
                }
            } else {
                return;
            }
        }
    }
}
