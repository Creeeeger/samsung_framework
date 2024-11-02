package androidx.slice.core;

import android.text.TextUtils;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceQuery {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Filter {
        boolean filter(SliceItem sliceItem);
    }

    private SliceQuery() {
    }

    public static boolean checkFormat(SliceItem sliceItem, String str) {
        if (str != null && !str.equals(sliceItem.mFormat)) {
            return false;
        }
        return true;
    }

    public static SliceItem find(Slice slice, String str, String str2) {
        return find(slice, str, new String[]{str2}, new String[]{null});
    }

    public static List findAll(SliceItem sliceItem, final String str, final String[] strArr, final String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        findAll(arrayDeque, new Filter() { // from class: androidx.slice.core.SliceQuery.3
            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem2) {
                if (SliceQuery.checkFormat(sliceItem2, str) && SliceQuery.hasHints(sliceItem2, strArr) && !SliceQuery.hasAnyHints(sliceItem2, strArr2)) {
                    return true;
                }
                return false;
            }
        }, arrayList);
        return arrayList;
    }

    public static SliceItem findSliceItem(Deque deque, Filter filter) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            if (!arrayDeque.isEmpty()) {
                SliceItem sliceItem = (SliceItem) arrayDeque.poll();
                if (filter.filter(sliceItem)) {
                    return sliceItem;
                }
                if ("slice".equals(sliceItem.mFormat) || "action".equals(sliceItem.mFormat)) {
                    Collections.addAll(deque, sliceItem.getSlice().mItems);
                }
            } else {
                return null;
            }
        }
    }

    public static SliceItem findSubtype(Slice slice, final String str, final String str2) {
        if (slice == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        Collections.addAll(arrayDeque, slice.mItems);
        return findSliceItem(arrayDeque, new Filter() { // from class: androidx.slice.core.SliceQuery.5
            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem) {
                boolean z;
                if (!SliceQuery.checkFormat(sliceItem, str)) {
                    return false;
                }
                String str3 = str2;
                if (str3 != null && !str3.equals(sliceItem.mSubType)) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return false;
                }
                return true;
            }
        });
    }

    public static SliceItem findTopLevelItem(Slice slice, String str, String str2, String[] strArr) {
        boolean z;
        for (SliceItem sliceItem : slice.mItems) {
            if (checkFormat(sliceItem, str)) {
                if (str2 != null && !str2.equals(sliceItem.mSubType)) {
                    z = false;
                } else {
                    z = true;
                }
                if (z && hasHints(sliceItem, strArr) && !hasAnyHints(sliceItem, null)) {
                    return sliceItem;
                }
            }
        }
        return null;
    }

    public static boolean hasAnyHints(SliceItem sliceItem, String... strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (sliceItem.hasHint(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasHints(SliceItem sliceItem, String... strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && !sliceItem.hasHint(str)) {
                return false;
            }
        }
        return true;
    }

    public static SliceItem find(SliceItem sliceItem, String str, String str2) {
        return find(sliceItem, str, new String[]{str2}, new String[]{null});
    }

    public static SliceItem find(Slice slice, final String str, final String[] strArr, final String[] strArr2) {
        if (slice == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        Collections.addAll(arrayDeque, slice.mItems);
        return findSliceItem(arrayDeque, new Filter() { // from class: androidx.slice.core.SliceQuery.4
            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem) {
                if (SliceQuery.checkFormat(sliceItem, str) && SliceQuery.hasHints(sliceItem, strArr) && !SliceQuery.hasAnyHints(sliceItem, strArr2)) {
                    return true;
                }
                return false;
            }
        });
    }

    public static void findAll(Deque deque, Filter filter, List list) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            if (arrayDeque.isEmpty()) {
                return;
            }
            SliceItem sliceItem = (SliceItem) arrayDeque.poll();
            if (filter.filter(sliceItem)) {
                ((ArrayList) list).add(sliceItem);
            }
            if ("slice".equals(sliceItem.mFormat) || "action".equals(sliceItem.mFormat)) {
                Collections.addAll(deque, sliceItem.getSlice().mItems);
            }
        }
    }

    public static SliceItem findSubtype(SliceItem sliceItem, final String str, final String str2) {
        if (sliceItem == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        return findSliceItem(arrayDeque, new Filter() { // from class: androidx.slice.core.SliceQuery.6
            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem2) {
                boolean z;
                if (!SliceQuery.checkFormat(sliceItem2, str)) {
                    return false;
                }
                String str3 = str2;
                if (str3 != null && !str3.equals(sliceItem2.mSubType)) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return false;
                }
                return true;
            }
        });
    }

    public static SliceItem find(SliceItem sliceItem, final String str, final String[] strArr, final String[] strArr2) {
        if (sliceItem == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        return findSliceItem(arrayDeque, new Filter() { // from class: androidx.slice.core.SliceQuery.7
            @Override // androidx.slice.core.SliceQuery.Filter
            public final boolean filter(SliceItem sliceItem2) {
                if (SliceQuery.checkFormat(sliceItem2, str) && SliceQuery.hasHints(sliceItem2, strArr) && !SliceQuery.hasAnyHints(sliceItem2, strArr2)) {
                    return true;
                }
                return false;
            }
        });
    }
}
