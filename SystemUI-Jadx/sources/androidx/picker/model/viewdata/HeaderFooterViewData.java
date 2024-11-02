package androidx.picker.model.viewdata;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HeaderFooterViewData implements ViewData {
    public final View view;

    public HeaderFooterViewData(View view) {
        this.view = view;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof HeaderFooterViewData) && Intrinsics.areEqual(this.view, ((HeaderFooterViewData) obj).view)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.view.hashCode();
    }

    public final String toString() {
        return "HeaderFooterViewData(view=" + this.view + ')';
    }

    @Override // androidx.picker.model.viewdata.ViewData
    public final Object getKey() {
        return this;
    }
}
