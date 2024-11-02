package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.PointF;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.draganddrop.DragAndDropPolicy;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiSplitDropTargetProvider extends SplitDropTargetProvider {
    public MultiSplitDropTargetProvider(DragAndDropPolicy dragAndDropPolicy, Context context) {
        super(dragAndDropPolicy, context);
    }

    public static DragAndDropPolicy.Target createMultiSplitTarget(int i, Rect rect, boolean z, Insets insets) {
        if (z) {
            int i2 = (rect.bottom + insets.top) / 2;
            switch (i) {
                case 6:
                    return new DragAndDropPolicy.Target(i, new Rect(rect.left - insets.left, rect.top, rect.right, rect.bottom / 3), new Rect(rect.left, rect.top, rect.right, i2));
                case 7:
                    int i3 = rect.left - insets.left;
                    int i4 = rect.bottom;
                    return new DragAndDropPolicy.Target(i, new Rect(i3, (i4 * 2) / 3, rect.right, i4), new Rect(rect.left, i2, rect.right, rect.bottom));
                case 8:
                    return new DragAndDropPolicy.Target(i, new Rect(rect.left, rect.top, rect.right + insets.right, rect.bottom / 3), new Rect(rect.left, rect.top, rect.right, i2));
                case 9:
                    int i5 = rect.left;
                    int i6 = rect.bottom;
                    return new DragAndDropPolicy.Target(i, new Rect(i5, (i6 * 2) / 3, rect.right + insets.right, i6), new Rect(rect.left, i2, rect.right, rect.bottom));
                default:
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Wrong DropTarget type: #", i));
            }
        }
        int i7 = (rect.right + insets.left) / 2;
        switch (i) {
            case 6:
            case 7:
                return new DragAndDropPolicy.Target(i, new Rect(rect.left - insets.left, rect.top, rect.right / 3, rect.bottom), new Rect(rect.left, rect.top, i7, rect.bottom));
            case 8:
            case 9:
                int i8 = rect.right;
                return new DragAndDropPolicy.Target(i, new Rect((i8 * 2) / 3, rect.top, i8 + insets.right, rect.bottom), new Rect(i7, rect.top, rect.right, rect.bottom));
            default:
                throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Wrong DropTarget type: #", i));
        }
    }

    public static DragAndDropPolicy.Target createTarget(int i, Insets insets, Rect rect) {
        if (i != 1) {
            if (i != 3) {
                switch (i) {
                    case 6:
                    case 7:
                        break;
                    case 8:
                    case 9:
                        break;
                    default:
                        return new DragAndDropPolicy.Target(i, new Rect(rect.left - insets.left, rect.top, rect.right + insets.right, rect.bottom), new Rect(rect));
                }
            }
            return new DragAndDropPolicy.Target(i, new Rect(rect.left, rect.top, rect.right + insets.right, rect.bottom), new Rect(rect));
        }
        return new DragAndDropPolicy.Target(i, new Rect(rect.left - insets.left, rect.top, rect.right, rect.bottom), new Rect(rect));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0227  */
    @Override // com.android.wm.shell.draganddrop.SplitDropTargetProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addSplitTargets(android.graphics.Rect r26, boolean r27, boolean r28, float r29, java.util.ArrayList r30) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.MultiSplitDropTargetProvider.addSplitTargets(android.graphics.Rect, boolean, boolean, float, java.util.ArrayList):void");
    }

    public final List getPolygonTouchRegion(int i, Rect rect) {
        DragAndDropPolicy dragAndDropPolicy = this.mPolicy;
        Rect centerFreeformBounds = dragAndDropPolicy.getCenterFreeformBounds();
        int i2 = -dragAndDropPolicy.mContext.getResources().getDimensionPixelSize(R.dimen.dnd_drop_freeform_hit_size);
        centerFreeformBounds.inset(i2, i2);
        ArrayList arrayList = new ArrayList();
        if (i == 2) {
            arrayList.add(new PointF(rect.left, rect.top));
            arrayList.add(new PointF(rect.right, rect.top));
            arrayList.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.top));
            arrayList.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.top));
        } else if (i == 3) {
            arrayList.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.top));
            arrayList.add(new PointF(rect.right, rect.top));
            arrayList.add(new PointF(rect.right, rect.bottom));
            arrayList.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.bottom));
        } else if (i == 1) {
            arrayList.add(new PointF(rect.left, rect.top));
            arrayList.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.top));
            arrayList.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.bottom));
            arrayList.add(new PointF(rect.left, rect.bottom));
        } else if (i == 4) {
            arrayList.add(new PointF(centerFreeformBounds.left, rect.top));
            arrayList.add(new PointF(centerFreeformBounds.right, rect.top));
            arrayList.add(new PointF(rect.right, rect.bottom));
            arrayList.add(new PointF(rect.left, rect.bottom));
        }
        return arrayList;
    }
}
