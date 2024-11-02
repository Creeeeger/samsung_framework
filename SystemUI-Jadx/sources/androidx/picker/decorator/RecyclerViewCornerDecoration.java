package androidx.picker.decorator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.TypedValue;
import androidx.appcompat.util.SeslRoundedCorner;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RecyclerViewCornerDecoration extends RecyclerView.ItemDecoration {
    public final SeslRoundedCorner mRoundedCorner;

    public RecyclerViewCornerDecoration(Context context) {
        this(context, 0, 2, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void seslOnDispatchDraw(Canvas canvas, RecyclerView recyclerView) {
        SeslRoundedCorner seslRoundedCorner = this.mRoundedCorner;
        canvas.getClipBounds(seslRoundedCorner.mRoundedCornerBounds);
        seslRoundedCorner.drawRoundedCornerInternal(canvas);
    }

    public /* synthetic */ RecyclerViewCornerDecoration(Context context, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? 15 : i);
    }

    public RecyclerViewCornerDecoration(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.roundedCornerColor, typedValue, true);
        SeslRoundedCorner seslRoundedCorner = new SeslRoundedCorner(context);
        Resources resources = context.getResources();
        int i2 = typedValue.resourceId;
        seslRoundedCorner.setRoundedCorners(i);
        if (seslRoundedCorner.mRoundedCornerMode != 0 && i2 > 0) {
            seslRoundedCorner.setRoundedCornerColor(seslRoundedCorner.mRoundedCornerMode, resources.getColor(i2, null));
        }
        this.mRoundedCorner = seslRoundedCorner;
    }
}
