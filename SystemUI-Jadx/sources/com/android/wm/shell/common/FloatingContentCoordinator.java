package com.android.wm.shell.common;

import android.graphics.Rect;
import android.util.Log;
import com.android.wm.shell.common.FloatingContentCoordinator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FloatingContentCoordinator {
    public static final Companion Companion = new Companion(null);
    public final Map allContentBounds = new HashMap();
    public boolean currentlyResolvingConflicts;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Rect findAreaForContentAboveOrBelow(Rect rect, Collection collection, final boolean z) {
            int height;
            List<Rect> sortedWith = CollectionsKt___CollectionsKt.sortedWith(collection, new Comparator() { // from class: com.android.wm.shell.common.FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int i;
                    boolean z2 = z;
                    int i2 = ((Rect) obj).top;
                    if (z2) {
                        i2 = -i2;
                    }
                    Integer valueOf = Integer.valueOf(i2);
                    Rect rect2 = (Rect) obj2;
                    if (z) {
                        i = -rect2.top;
                    } else {
                        i = rect2.top;
                    }
                    return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(i));
                }
            });
            Rect rect2 = new Rect(rect);
            for (Rect rect3 : sortedWith) {
                if (!Rect.intersects(rect2, rect3)) {
                    break;
                }
                if (z) {
                    height = -rect.height();
                } else {
                    height = rect3.height();
                }
                rect2.offsetTo(rect2.left, rect3.top + height);
            }
            return rect2;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface FloatingContent {
        Rect getAllowedFloatingBoundsRegion();

        Rect getFloatingBoundsOnScreen();

        void moveToBounds(Rect rect);
    }

    /* JADX WARN: Type inference failed for: r5v11, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2, types: [T, java.lang.Object] */
    public final void maybeMoveConflictingContent(FloatingContent floatingContent) {
        boolean z;
        boolean z2;
        Rect rect;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        boolean z6 = true;
        this.currentlyResolvingConflicts = true;
        Map map = this.allContentBounds;
        Object obj = ((HashMap) map).get(floatingContent);
        Intrinsics.checkNotNull(obj);
        final Rect rect2 = (Rect) obj;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((HashMap) map).entrySet()) {
            FloatingContent floatingContent2 = (FloatingContent) entry.getKey();
            Rect rect3 = (Rect) entry.getValue();
            if (!Intrinsics.areEqual(floatingContent2, floatingContent) && Rect.intersects(rect2, rect3)) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            FloatingContent floatingContent3 = (FloatingContent) entry2.getKey();
            List minus = CollectionsKt___CollectionsKt.minus(CollectionsKt___CollectionsKt.minus(((HashMap) map).values(), (Rect) entry2.getValue()), rect2);
            floatingContent3.getClass();
            final Rect floatingBoundsOnScreen = floatingContent3.getFloatingBoundsOnScreen();
            final Rect allowedFloatingBoundsRegion = floatingContent3.getAllowedFloatingBoundsRegion();
            Companion companion = Companion;
            companion.getClass();
            if (rect2.centerY() < floatingBoundsOnScreen.centerY()) {
                z = z6;
            } else {
                z = false;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((ArrayList) minus).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Rect rect4 = (Rect) next;
                companion.getClass();
                int i2 = rect4.left;
                int i3 = floatingBoundsOnScreen.left;
                if ((i2 >= i3 && i2 <= floatingBoundsOnScreen.right) || ((i = rect4.right) <= floatingBoundsOnScreen.right && i >= i3)) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                if (((Rect) next2).top < floatingBoundsOnScreen.top) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    arrayList2.add(next2);
                } else {
                    arrayList3.add(next2);
                }
            }
            Pair pair = new Pair(arrayList2, arrayList3);
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = pair.component1();
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = pair.component2();
            final Lazy lazy = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.common.FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    FloatingContentCoordinator.Companion companion2 = FloatingContentCoordinator.Companion;
                    Rect rect5 = floatingBoundsOnScreen;
                    List plus = CollectionsKt___CollectionsKt.plus(ref$ObjectRef.element, rect2);
                    companion2.getClass();
                    return FloatingContentCoordinator.Companion.findAreaForContentAboveOrBelow(rect5, plus, true);
                }
            });
            final Lazy lazy2 = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.common.FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    FloatingContentCoordinator.Companion companion2 = FloatingContentCoordinator.Companion;
                    Rect rect5 = floatingBoundsOnScreen;
                    List plus = CollectionsKt___CollectionsKt.plus(ref$ObjectRef2.element, rect2);
                    companion2.getClass();
                    return FloatingContentCoordinator.Companion.findAreaForContentAboveOrBelow(rect5, plus, false);
                }
            });
            Lazy lazy3 = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.common.FloatingContentCoordinator$Companion$findAreaForContentVertically$positionAboveInBounds$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(allowedFloatingBoundsRegion.contains((Rect) lazy.getValue()));
                }
            });
            Lazy lazy4 = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.wm.shell.common.FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(allowedFloatingBoundsRegion.contains((Rect) lazy2.getValue()));
                }
            });
            if ((z && ((Boolean) lazy4.getValue()).booleanValue()) || (!z && !((Boolean) lazy3.getValue()).booleanValue())) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                rect = (Rect) lazy2.getValue();
            } else {
                rect = (Rect) lazy.getValue();
            }
            if (!allowedFloatingBoundsRegion.contains(rect)) {
                rect = new Rect();
            }
            if (!rect.isEmpty()) {
                floatingContent3.moveToBounds(rect);
                ((HashMap) map).put(floatingContent3, floatingContent3.getFloatingBoundsOnScreen());
            }
            z6 = true;
        }
        this.currentlyResolvingConflicts = false;
    }

    public final void onContentMoved(FloatingContent floatingContent) {
        if (this.currentlyResolvingConflicts) {
            return;
        }
        if (!((HashMap) this.allContentBounds).containsKey(floatingContent)) {
            Log.wtf("FloatingCoordinator", "Received onContentMoved call before onContentAdded! This should never happen.");
        } else {
            updateContentBounds();
            maybeMoveConflictingContent(floatingContent);
        }
    }

    public final void updateContentBounds() {
        Map map = this.allContentBounds;
        for (FloatingContent floatingContent : ((HashMap) map).keySet()) {
            ((HashMap) map).put(floatingContent, floatingContent.getFloatingBoundsOnScreen());
        }
    }
}
