package com.android.wm.shell.pip.tv;

import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.ArraySet;
import android.util.Size;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipKeepClearAlgorithm {
    public Size screenSize = new Size(0, 0);
    public final Rect movementBounds = new Rect();
    public int pipAreaPadding = 48;
    public int stashOffset = 48;
    public double maxRestrictedDistanceFraction = 0.15d;
    public int pipGravity = 85;
    public Rect transformedScreenBounds = new Rect();
    public Rect transformedMovementBounds = new Rect();
    public Set lastAreasOverlappingUnstashPosition = EmptySet.INSTANCE;
    public Insets pipPermanentDecorInsets = Insets.NONE;

    public static int candidateCost(Rect rect, Rect rect2) {
        int i = rect.left - rect2.left;
        int i2 = rect.top - rect2.top;
        return (i2 * i2) + (i * i);
    }

    public static int getStashType(Rect rect, Rect rect2) {
        if (rect2 == null) {
            return 0;
        }
        if (rect.left < rect2.left) {
            return 1;
        }
        if (rect.right > rect2.right) {
            return 2;
        }
        if (rect.top < rect2.top) {
            return 4;
        }
        if (rect.bottom <= rect2.bottom) {
            return 0;
        }
        return 3;
    }

    public static boolean intersectsX(Rect rect, Rect rect2) {
        if (rect.right >= rect2.left && rect.left <= rect2.right) {
            return true;
        }
        return false;
    }

    public static boolean intersectsY(Rect rect, Rect rect2) {
        if (rect.bottom >= rect2.top && rect.top <= rect2.bottom) {
            return true;
        }
        return false;
    }

    public static SweepLineEvent sweepLineFindEarliestGap(List list, int i, int i2, int i3) {
        int i4;
        int i5;
        ArrayList arrayList = (ArrayList) list;
        arrayList.add(new SweepLineEvent(false, i2, true, true));
        if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(-((TvPipKeepClearAlgorithm.SweepLineEvent) obj).pos), Integer.valueOf(-((TvPipKeepClearAlgorithm.SweepLineEvent) obj2).pos));
                }
            });
        }
        int i6 = 0;
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            SweepLineEvent sweepLineEvent = (SweepLineEvent) arrayList.get(i7);
            boolean z = sweepLineEvent.start;
            if (!z) {
                i6 = sweepLineEvent.open ? i6 + 1 : i6 - 1;
            }
            if (i6 == 0 && (i4 = sweepLineEvent.pos) <= i2) {
                if (z) {
                    i5 = i3;
                } else {
                    i5 = i;
                }
                SweepLineEvent sweepLineEvent2 = (SweepLineEvent) CollectionsKt___CollectionsKt.getOrNull(i7 + 1, list);
                if (sweepLineEvent2 != null) {
                    if (sweepLineEvent2.pos < i4 - i5) {
                    }
                }
                return sweepLineEvent;
            }
        }
        return (SweepLineEvent) CollectionsKt___CollectionsKt.last(list);
    }

    public final Rect findFreeMovePosition(Rect rect, Set set, Set set2) {
        double d;
        boolean z;
        int round;
        Object obj;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        Rect rect2 = this.transformedMovementBounds;
        ArrayList arrayList = new ArrayList();
        if (isPipAnchoredToCorner()) {
            d = this.maxRestrictedDistanceFraction;
        } else {
            d = 0.0d;
        }
        double width = rect.right - (this.screenSize.getWidth() * d);
        int width2 = rect2.width() + this.pipAreaPadding;
        Rect rect3 = new Rect(rect2);
        int i5 = 0;
        rect3.offset(width2, 0);
        arrayList.add(rect3);
        arrayList.addAll(set2);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = set.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((Rect) next).left < width) {
                z = false;
            }
            if (z) {
                arrayList2.add(next);
            }
        }
        arrayList.addAll(arrayList2);
        final int width3 = rect.width() + rect2.left;
        CollectionsKt__MutableCollectionsKt.filterInPlace$CollectionsKt__MutableCollectionsKt((List) arrayList, new Function1() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$findFreeMovePosition$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                boolean z4;
                if (((Rect) obj2).left - TvPipKeepClearAlgorithm.this.pipAreaPadding > width3) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                return Boolean.valueOf(z4);
            }
        }, false);
        double height = this.screenSize.getHeight() * this.maxRestrictedDistanceFraction;
        if (!Double.isNaN(height)) {
            if (height > 2.147483647E9d) {
                round = Integer.MAX_VALUE;
            } else if (height < -2.147483648E9d) {
                round = VideoPlayer.MEDIA_ERROR_SYSTEM;
            } else {
                round = (int) Math.round(height);
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Rect rect4 = (Rect) it2.next();
                int width4 = ((rect4.left - this.pipAreaPadding) - rect.width()) - rect.left;
                final Rect rect5 = new Rect(rect);
                rect5.offset(width4, i5);
                boolean isPipAnchoredToCorner = isPipAnchoredToCorner() ^ z;
                final ArrayList arrayList4 = new ArrayList();
                Function1 function1 = new Function1() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        final boolean booleanValue = ((Boolean) obj2).booleanValue();
                        final TvPipKeepClearAlgorithm tvPipKeepClearAlgorithm = TvPipKeepClearAlgorithm.this;
                        final Rect rect6 = rect5;
                        final List<TvPipKeepClearAlgorithm.SweepLineEvent> list = arrayList4;
                        return new Function1() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                Rect rect7 = (Rect) obj3;
                                TvPipKeepClearAlgorithm tvPipKeepClearAlgorithm2 = TvPipKeepClearAlgorithm.this;
                                Rect rect8 = rect6;
                                tvPipKeepClearAlgorithm2.getClass();
                                if (TvPipKeepClearAlgorithm.intersectsX(rect8, rect7)) {
                                    list.add(new TvPipKeepClearAlgorithm.SweepLineEvent(true, rect7.bottom, booleanValue, false, 8, null));
                                    list.add(new TvPipKeepClearAlgorithm.SweepLineEvent(false, rect7.top, booleanValue, false, 8, null));
                                }
                                return Unit.INSTANCE;
                            }
                        };
                    }
                };
                Function1 function12 = (Function1) function1.invoke(Boolean.FALSE);
                Iterator it3 = set.iterator();
                while (it3.hasNext()) {
                    function12.invoke(it3.next());
                }
                Function1 function13 = (Function1) function1.invoke(Boolean.TRUE);
                Iterator it4 = set2.iterator();
                while (it4.hasNext()) {
                    function13.invoke(it4.next());
                }
                SweepLineEvent sweepLineFindEarliestGap = sweepLineFindEarliestGap(arrayList4, rect5.height() + this.pipAreaPadding, rect5.bottom, rect5.height());
                if (sweepLineFindEarliestGap.start) {
                    i = 0;
                } else {
                    i = this.pipAreaPadding;
                }
                int i6 = (sweepLineFindEarliestGap.pos - rect.bottom) - i;
                if (sweepLineFindEarliestGap.unrestricted) {
                    i2 = rect2.height();
                } else {
                    i2 = round;
                }
                Rect rect6 = new Rect(rect);
                rect6.offset(width4, i6);
                if (rect6.top > rect2.top) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z4 = !intersectsY(rect6, rect4);
                if (z2 && Math.abs(i6) <= i2 && !z4) {
                    arrayList3.add(rect6);
                }
                if (isPipAnchoredToCorner) {
                    final ArrayList arrayList5 = new ArrayList();
                    Function1 function14 = new Function1() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            final boolean booleanValue = ((Boolean) obj2).booleanValue();
                            final TvPipKeepClearAlgorithm tvPipKeepClearAlgorithm = TvPipKeepClearAlgorithm.this;
                            final Rect rect7 = rect5;
                            final List<TvPipKeepClearAlgorithm.SweepLineEvent> list = arrayList5;
                            return new Function1() { // from class: com.android.wm.shell.pip.tv.TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    Rect rect8 = (Rect) obj3;
                                    TvPipKeepClearAlgorithm tvPipKeepClearAlgorithm2 = TvPipKeepClearAlgorithm.this;
                                    Rect rect9 = rect7;
                                    tvPipKeepClearAlgorithm2.getClass();
                                    if (TvPipKeepClearAlgorithm.intersectsX(rect9, rect8)) {
                                        list.add(new TvPipKeepClearAlgorithm.SweepLineEvent(true, -rect8.top, booleanValue, false, 8, null));
                                        list.add(new TvPipKeepClearAlgorithm.SweepLineEvent(false, -rect8.bottom, booleanValue, false, 8, null));
                                    }
                                    return Unit.INSTANCE;
                                }
                            };
                        }
                    };
                    Function1 function15 = (Function1) function14.invoke(Boolean.FALSE);
                    Iterator it5 = set.iterator();
                    while (it5.hasNext()) {
                        function15.invoke(it5.next());
                    }
                    Function1 function16 = (Function1) function14.invoke(Boolean.TRUE);
                    Iterator it6 = set2.iterator();
                    while (it6.hasNext()) {
                        function16.invoke(it6.next());
                    }
                    SweepLineEvent sweepLineFindEarliestGap2 = sweepLineFindEarliestGap(arrayList5, rect5.height() + this.pipAreaPadding, -rect5.top, rect5.height());
                    SweepLineEvent sweepLineEvent = new SweepLineEvent(sweepLineFindEarliestGap2.open, -sweepLineFindEarliestGap2.pos, sweepLineFindEarliestGap2.unrestricted, sweepLineFindEarliestGap2.start);
                    if (sweepLineEvent.start) {
                        i3 = 0;
                    } else {
                        i3 = this.pipAreaPadding;
                    }
                    int i7 = (sweepLineEvent.pos - rect.top) + i3;
                    if (sweepLineEvent.unrestricted) {
                        i4 = rect2.height();
                    } else {
                        i4 = round;
                    }
                    Rect rect7 = new Rect(rect);
                    rect7.offset(width4, i7);
                    if (rect7.bottom < rect2.bottom) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    z = true;
                    boolean z5 = !intersectsY(rect7, rect4);
                    if (z3 && Math.abs(i7) <= i4 && !z5) {
                        arrayList3.add(rect7);
                    }
                    i5 = 0;
                } else {
                    i5 = 0;
                    z = true;
                }
            }
            Iterator it7 = arrayList3.iterator();
            if (!it7.hasNext()) {
                obj = null;
            } else {
                Object next2 = it7.next();
                if (it7.hasNext()) {
                    int candidateCost = candidateCost((Rect) next2, rect);
                    do {
                        Object next3 = it7.next();
                        int candidateCost2 = candidateCost((Rect) next3, rect);
                        if (candidateCost > candidateCost2) {
                            next2 = next3;
                            candidateCost = candidateCost2;
                        }
                    } while (it7.hasNext());
                }
                obj = next2;
            }
            return (Rect) obj;
        }
        throw new IllegalArgumentException("Cannot round NaN value.");
    }

    public final Rect findRelaxedMovePosition(int i, Rect rect, Set set, Set set2) {
        Object obj;
        if (i == 0) {
            return findFreeMovePosition(rect, set, set2);
        }
        ArrayList arrayList = new ArrayList();
        for (Rect rect2 : CollectionsKt___CollectionsKt.toList(set)) {
            set.remove(rect2);
            Rect findRelaxedMovePosition = findRelaxedMovePosition(i - 1, rect, set, set2);
            set.add(rect2);
            if (findRelaxedMovePosition != null) {
                arrayList.add(findRelaxedMovePosition);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            Object next = it.next();
            if (it.hasNext()) {
                int candidateCost = candidateCost((Rect) next, rect);
                do {
                    Object next2 = it.next();
                    int candidateCost2 = candidateCost((Rect) next2, rect);
                    if (candidateCost > candidateCost2) {
                        next = next2;
                        candidateCost = candidateCost2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        }
        return (Rect) obj;
    }

    public final Rect fromTransformedSpace(Rect rect) {
        int width;
        int height;
        boolean z;
        boolean shouldTransformRotate = shouldTransformRotate();
        Size size = this.screenSize;
        if (shouldTransformRotate) {
            width = size.getHeight();
        } else {
            width = size.getWidth();
        }
        Size size2 = this.screenSize;
        if (shouldTransformRotate) {
            height = size2.getWidth();
        } else {
            height = size2.getHeight();
        }
        Point[] pointArr = {new Point(rect.left, rect.top), new Point(rect.right, rect.top), new Point(rect.right, rect.bottom), new Point(rect.left, rect.bottom)};
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= 4) {
                break;
            }
            Point point = pointArr[i];
            int i2 = this.pipGravity;
            if (i2 != 3 && i2 != 19 && i2 != 51 && i2 != 83 && i2 != 48 && i2 != 49) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                point.x = width - point.x;
            }
            if (i2 != 51 && i2 != 53) {
                z2 = false;
            }
            if (z2) {
                point.y = height - point.y;
            }
            i++;
        }
        if (shouldTransformRotate) {
            for (int i3 = 0; i3 < 4; i3++) {
                Point point2 = pointArr[i3];
                int width2 = point2.y - this.screenSize.getWidth();
                int i4 = point2.x;
                point2.x = -width2;
                point2.y = i4;
            }
        }
        Point point3 = pointArr[0];
        int i5 = point3.y;
        IntProgressionIterator it = new IntRange(1, 3).iterator();
        while (it.hasNext) {
            Point point4 = pointArr[it.nextInt()];
            int i6 = point4.y;
            if (i5 > i6) {
                point3 = point4;
                i5 = i6;
            }
        }
        Intrinsics.checkNotNull(point3);
        int i7 = point3.y;
        Point point5 = pointArr[0];
        int i8 = point5.x;
        IntProgressionIterator it2 = new IntRange(1, 3).iterator();
        while (it2.hasNext) {
            Point point6 = pointArr[it2.nextInt()];
            int i9 = point6.x;
            if (i8 < i9) {
                point5 = point6;
                i8 = i9;
            }
        }
        Intrinsics.checkNotNull(point5);
        int i10 = point5.x;
        Point point7 = pointArr[0];
        int i11 = point7.y;
        IntProgressionIterator it3 = new IntRange(1, 3).iterator();
        while (it3.hasNext) {
            Point point8 = pointArr[it3.nextInt()];
            int i12 = point8.y;
            if (i11 < i12) {
                point7 = point8;
                i11 = i12;
            }
        }
        Intrinsics.checkNotNull(point7);
        int i13 = point7.y;
        Point point9 = pointArr[0];
        int i14 = point9.x;
        IntProgressionIterator it4 = new IntRange(1, 3).iterator();
        while (it4.hasNext) {
            Point point10 = pointArr[it4.nextInt()];
            int i15 = point10.x;
            if (i14 > i15) {
                point9 = point10;
                i14 = i15;
            }
        }
        Intrinsics.checkNotNull(point9);
        return new Rect(point9.x, i7, i10, i13);
    }

    public final boolean isPipAnchoredToCorner() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i = this.pipGravity;
        if ((i & 7) == 3) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 7) == 5) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 112) == 48) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((i & 112) == 80) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z && !z2) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (!z3 && !z4) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (z5 && z6) {
            return true;
        }
        return false;
    }

    public final boolean shouldTransformRotate() {
        boolean z;
        int i = this.pipGravity;
        int i2 = i & 7;
        if (i2 != 3 && i2 != 5) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return false;
        }
        int i3 = i & 112;
        if (i3 != 48 && i3 != 80) {
            return false;
        }
        return true;
    }

    public final Rect toTransformedSpace(Rect rect) {
        boolean z;
        int width = this.screenSize.getWidth();
        int height = this.screenSize.getHeight();
        Point[] pointArr = {new Point(rect.left, rect.top), new Point(rect.right, rect.top), new Point(rect.right, rect.bottom), new Point(rect.left, rect.bottom)};
        if (shouldTransformRotate()) {
            for (int i = 0; i < 4; i++) {
                Point point = pointArr[i];
                int i2 = point.x;
                point.x = point.y;
                point.y = (-i2) + width;
            }
            width = this.screenSize.getHeight();
            height = this.screenSize.getWidth();
        }
        int i3 = 0;
        while (true) {
            boolean z2 = true;
            if (i3 >= 4) {
                break;
            }
            Point point2 = pointArr[i3];
            int i4 = this.pipGravity;
            if (i4 != 3 && i4 != 19 && i4 != 51 && i4 != 83 && i4 != 48 && i4 != 49) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                point2.x = width - point2.x;
            }
            if (i4 != 51 && i4 != 53) {
                z2 = false;
            }
            if (z2) {
                point2.y = height - point2.y;
            }
            i3++;
        }
        Point point3 = pointArr[0];
        int i5 = point3.y;
        IntProgressionIterator it = new IntRange(1, 3).iterator();
        while (it.hasNext) {
            Point point4 = pointArr[it.nextInt()];
            int i6 = point4.y;
            if (i5 > i6) {
                point3 = point4;
                i5 = i6;
            }
        }
        Intrinsics.checkNotNull(point3);
        int i7 = point3.y;
        Point point5 = pointArr[0];
        int i8 = point5.x;
        IntProgressionIterator it2 = new IntRange(1, 3).iterator();
        while (it2.hasNext) {
            Point point6 = pointArr[it2.nextInt()];
            int i9 = point6.x;
            if (i8 < i9) {
                point5 = point6;
                i8 = i9;
            }
        }
        Intrinsics.checkNotNull(point5);
        int i10 = point5.x;
        Point point7 = pointArr[0];
        int i11 = point7.y;
        IntProgressionIterator it3 = new IntRange(1, 3).iterator();
        while (it3.hasNext) {
            Point point8 = pointArr[it3.nextInt()];
            int i12 = point8.y;
            if (i11 < i12) {
                point7 = point8;
                i11 = i12;
            }
        }
        Intrinsics.checkNotNull(point7);
        int i13 = point7.y;
        Point point9 = pointArr[0];
        int i14 = point9.x;
        IntProgressionIterator it4 = new IntRange(1, 3).iterator();
        while (it4.hasNext) {
            Point point10 = pointArr[it4.nextInt()];
            int i15 = point10.x;
            if (i14 > i15) {
                point9 = point10;
                i14 = i15;
            }
        }
        Intrinsics.checkNotNull(point9);
        return new Rect(point9.x, i7, i10, i13);
    }

    public final Set transformAndFilterAreas(Set set) {
        Rect transformedSpace;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = ((ArraySet) set).iterator();
        while (it.hasNext()) {
            Rect rect = (Rect) it.next();
            if (rect.contains(this.movementBounds)) {
                transformedSpace = null;
            } else {
                transformedSpace = toTransformedSpace(rect);
            }
            if (transformedSpace != null) {
                linkedHashSet.add(transformedSpace);
            }
        }
        return linkedHashSet;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SweepLineEvent {
        public final boolean open;
        public final int pos;
        public final boolean start;
        public final boolean unrestricted;

        public SweepLineEvent(boolean z, int i, boolean z2, boolean z3) {
            this.open = z;
            this.pos = i;
            this.unrestricted = z2;
            this.start = z3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SweepLineEvent)) {
                return false;
            }
            SweepLineEvent sweepLineEvent = (SweepLineEvent) obj;
            if (this.open == sweepLineEvent.open && this.pos == sweepLineEvent.pos && this.unrestricted == sweepLineEvent.unrestricted && this.start == sweepLineEvent.start) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
        public final int hashCode() {
            int i = 1;
            boolean z = this.open;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.pos, r1 * 31, 31);
            ?? r2 = this.unrestricted;
            int i2 = r2;
            if (r2 != 0) {
                i2 = 1;
            }
            int i3 = (m + i2) * 31;
            boolean z2 = this.start;
            if (!z2) {
                i = z2 ? 1 : 0;
            }
            return i3 + i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SweepLineEvent(open=");
            sb.append(this.open);
            sb.append(", pos=");
            sb.append(this.pos);
            sb.append(", unrestricted=");
            sb.append(this.unrestricted);
            sb.append(", start=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.start, ")");
        }

        public /* synthetic */ SweepLineEvent(boolean z, int i, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, i, z2, (i2 & 8) != 0 ? false : z3);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Placement {
        public final Rect anchorBounds;
        public final Rect bounds;
        public final int stashType;
        public final boolean triggerStash;
        public final Rect unstashDestinationBounds;

        public Placement(Rect rect, Rect rect2, int i, Rect rect3, boolean z) {
            this.bounds = rect;
            this.anchorBounds = rect2;
            this.stashType = i;
            this.unstashDestinationBounds = rect3;
            this.triggerStash = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Placement)) {
                return false;
            }
            Placement placement = (Placement) obj;
            if (Intrinsics.areEqual(this.bounds, placement.bounds) && Intrinsics.areEqual(this.anchorBounds, placement.anchorBounds) && this.stashType == placement.stashType && Intrinsics.areEqual(this.unstashDestinationBounds, placement.unstashDestinationBounds) && this.triggerStash == placement.triggerStash) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.stashType, (this.anchorBounds.hashCode() + (this.bounds.hashCode() * 31)) * 31, 31);
            Rect rect = this.unstashDestinationBounds;
            if (rect == null) {
                hashCode = 0;
            } else {
                hashCode = rect.hashCode();
            }
            int i = (m + hashCode) * 31;
            boolean z = this.triggerStash;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            return i + i2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Placement(bounds=");
            sb.append(this.bounds);
            sb.append(", anchorBounds=");
            sb.append(this.anchorBounds);
            sb.append(", stashType=");
            sb.append(this.stashType);
            sb.append(", unstashDestinationBounds=");
            sb.append(this.unstashDestinationBounds);
            sb.append(", triggerStash=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.triggerStash, ")");
        }

        public /* synthetic */ Placement(Rect rect, Rect rect2, int i, Rect rect3, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(rect, rect2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : rect3, (i2 & 16) != 0 ? false : z);
        }
    }
}
