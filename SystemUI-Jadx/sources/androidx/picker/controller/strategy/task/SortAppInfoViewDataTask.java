package androidx.picker.controller.strategy.task;

import androidx.picker.model.viewdata.ViewData;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SortAppInfoViewDataTask {
    public final Comparator comparator;

    public SortAppInfoViewDataTask() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final List execute(List list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Comparator comparator = this.comparator;
        if (comparator != null) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, comparator);
        }
        return arrayList;
    }

    public SortAppInfoViewDataTask(Comparator<ViewData> comparator) {
        this.comparator = comparator;
    }

    public /* synthetic */ SortAppInfoViewDataTask(Comparator comparator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : comparator);
    }
}
