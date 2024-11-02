package androidx.picker.model.viewdata;

import android.view.View;
import androidx.picker.model.SpanData;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomViewData implements ViewData, SpanData {
    public final int spanCount;
    public final View view;

    public CustomViewData(View view, int i) {
        this.view = view;
        this.spanCount = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomViewData)) {
            return false;
        }
        CustomViewData customViewData = (CustomViewData) obj;
        if (Intrinsics.areEqual(this.view, customViewData.view) && this.spanCount == customViewData.spanCount) {
            return true;
        }
        return false;
    }

    @Override // androidx.picker.model.SpanData
    public final int getSpanCount() {
        return this.spanCount;
    }

    public final int hashCode() {
        int hashCode;
        View view = this.view;
        if (view == null) {
            hashCode = 0;
        } else {
            hashCode = view.hashCode();
        }
        return Integer.hashCode(this.spanCount) + (hashCode * 31);
    }

    public final String toString() {
        return "CustomViewData(view=" + this.view + ", spanCount=" + this.spanCount + ')';
    }

    public /* synthetic */ CustomViewData(View view, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, (i2 & 2) != 0 ? 1 : i);
    }

    @Override // androidx.picker.model.viewdata.ViewData
    public final Object getKey() {
        return this;
    }
}
