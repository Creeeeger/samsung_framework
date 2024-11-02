package androidx.picker.model.viewdata;

import androidx.picker.model.AppData;
import androidx.picker.model.appdata.GroupAppData;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GroupTitleViewData implements AppSideViewData, ViewData {
    public final GroupAppData appData;
    public final String label;

    public GroupTitleViewData(GroupAppData groupAppData, String str) {
        this.appData = groupAppData;
        this.label = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GroupTitleViewData)) {
            return false;
        }
        GroupTitleViewData groupTitleViewData = (GroupTitleViewData) obj;
        if (Intrinsics.areEqual(this.appData, groupTitleViewData.appData) && Intrinsics.areEqual(this.label, groupTitleViewData.label)) {
            return true;
        }
        return false;
    }

    @Override // androidx.picker.model.viewdata.AppSideViewData
    public final AppData getAppData() {
        return this.appData;
    }

    @Override // androidx.picker.model.viewdata.ViewData
    public final Object getKey() {
        return this.appData.appInfo;
    }

    public final int hashCode() {
        return this.label.hashCode() + (this.appData.hashCode() * 31);
    }

    public final String toString() {
        return "GroupTitleViewData(appData=" + this.appData + ", label=" + this.label + ')';
    }

    public /* synthetic */ GroupTitleViewData(GroupAppData groupAppData, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupAppData, (i & 2) != 0 ? "" : str);
    }
}
