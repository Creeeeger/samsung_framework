package androidx.slice;

import android.content.Context;
import android.os.Bundle;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import androidx.slice.widget.ListContent;
import androidx.slice.widget.RowContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceMetadata {
    public final long mExpiry;
    public final long mLastUpdated;
    public final ListContent mListContent;
    public final Slice mSlice;
    public final List mSliceActions;

    private SliceMetadata(Context context, Slice slice) {
        List list;
        this.mSlice = slice;
        SliceItem find = SliceQuery.find(slice, "long", "ttl");
        if (find != null) {
            this.mExpiry = find.getLong();
        }
        SliceItem find2 = SliceQuery.find(slice, "long", "last_updated");
        if (find2 != null) {
            this.mLastUpdated = find2.getLong();
        }
        SliceItem findSubtype = SliceQuery.findSubtype(slice, "bundle", "host_extras");
        if (findSubtype != null) {
            Object obj = findSubtype.mObj;
            if (obj instanceof Bundle) {
                ListContent listContent = new ListContent(slice);
                this.mListContent = listContent;
                RowContent rowContent = listContent.mHeaderContent;
                ListContent.getRowType(rowContent, true, listContent.mSliceActions);
                listContent.getShortcut(context);
                list = listContent.mSliceActions;
                this.mSliceActions = list;
                if (list != null && rowContent != null && SliceQuery.hasHints(rowContent.mSliceItem, "list_item")) {
                    ArrayList arrayList = rowContent.mEndItems;
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < arrayList.size(); i++) {
                        if (SliceQuery.find((SliceItem) arrayList.get(i), "action", (String[]) null, (String[]) null) != null) {
                            arrayList2.add(new SliceActionImpl((SliceItem) arrayList.get(i)));
                        }
                    }
                    if (arrayList2.size() > 0) {
                        this.mSliceActions = arrayList2;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        Bundle bundle = Bundle.EMPTY;
        ListContent listContent2 = new ListContent(slice);
        this.mListContent = listContent2;
        RowContent rowContent2 = listContent2.mHeaderContent;
        ListContent.getRowType(rowContent2, true, listContent2.mSliceActions);
        listContent2.getShortcut(context);
        list = listContent2.mSliceActions;
        this.mSliceActions = list;
        if (list != null) {
        }
    }

    public static SliceMetadata from(Context context, Slice slice) {
        return new SliceMetadata(context, slice);
    }

    public final int getLoadingState() {
        boolean z;
        if (SliceQuery.find(this.mSlice, (String) null, "partial") != null) {
            z = true;
        } else {
            z = false;
        }
        if (!this.mListContent.isValid()) {
            return 0;
        }
        if (z) {
            return 1;
        }
        return 2;
    }

    public final boolean isExpired() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.mExpiry;
        if (j != 0 && j != -1 && currentTimeMillis > j) {
            return true;
        }
        return false;
    }
}
