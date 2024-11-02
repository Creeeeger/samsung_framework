package androidx.picker.decorator;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.picker.adapter.viewholder.AppListItemViewHolder;
import androidx.picker.adapter.viewholder.FrameViewHolder;
import androidx.picker.adapter.viewholder.GroupTitleViewHolder;
import androidx.picker.helper.ContextHelperKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ListDividerItemDecoration extends RecyclerView.ItemDecoration {
    public final Drawable divider;
    public final int dividerPaddingStart;
    public final int iconFrameWidth;
    public final int leftFrameWidth;

    public ListDividerItemDecoration(Context context) {
        int i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.listDivider});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        this.divider = drawable;
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        if (ContextHelperKt.isRTL(context)) {
            i = rect.right;
        } else {
            i = rect.left;
        }
        this.dividerPaddingStart = i;
        this.iconFrameWidth = (int) context.getResources().getDimension(com.android.systemui.R.dimen.picker_app_list_icon_frame_width);
        this.leftFrameWidth = (int) context.getResources().getDimension(com.android.systemui.R.dimen.picker_app_list_left_frame_width);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void seslOnDispatchDraw(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        int i4;
        Drawable drawable = this.divider;
        if (drawable == null) {
            return;
        }
        int i5 = 0;
        for (Object obj : SequencesKt___SequencesKt.toList(new ViewGroupKt$children$1(recyclerView)).subList(0, Math.max(recyclerView.getChildCount() - 1, 0))) {
            int i6 = i5 + 1;
            RecyclerView.LayoutParams layoutParams = null;
            if (i5 >= 0) {
                View view = (View) obj;
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(RecyclerView.getChildAdapterPosition(view) + 1);
                if (!(childViewHolder instanceof FrameViewHolder) && !(childViewHolder instanceof GroupTitleViewHolder) && !(findViewHolderForAdapterPosition instanceof GroupTitleViewHolder)) {
                    if (childViewHolder instanceof AppListItemViewHolder) {
                        AppListItemViewHolder appListItemViewHolder = (AppListItemViewHolder) childViewHolder;
                        if (appListItemViewHolder.composableType.getLeftFrame() != null) {
                            i3 = this.leftFrameWidth;
                        } else {
                            i3 = 0;
                        }
                        if (appListItemViewHolder.composableType.getIconFrame() != null) {
                            i4 = this.iconFrameWidth;
                        } else {
                            i4 = 0;
                        }
                        i = ((view.getPaddingStart() + i3) + i4) - this.dividerPaddingStart;
                    } else {
                        i = 0;
                    }
                    int i7 = i + 0;
                    int left = view.getLeft();
                    int right = recyclerView.getRight();
                    ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                    if (layoutParams2 instanceof RecyclerView.LayoutParams) {
                        layoutParams = (RecyclerView.LayoutParams) layoutParams2;
                    }
                    if (layoutParams != null) {
                        i2 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    } else {
                        i2 = 0;
                    }
                    int roundToInt = MathKt__MathJVMKt.roundToInt(view.getTranslationY()) + view.getBottom() + i2;
                    int intrinsicHeight = drawable.getIntrinsicHeight() + roundToInt;
                    if (ContextHelperKt.isRTL(view.getContext())) {
                        drawable.setBounds(left, roundToInt, right - i7, intrinsicHeight);
                    } else {
                        drawable.setBounds(left + i7, roundToInt, right, intrinsicHeight);
                    }
                    drawable.draw(canvas);
                }
                i5 = i6;
            } else {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
    }
}
