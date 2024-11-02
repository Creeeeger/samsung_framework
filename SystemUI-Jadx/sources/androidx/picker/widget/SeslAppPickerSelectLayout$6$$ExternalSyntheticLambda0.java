package androidx.picker.widget;

import androidx.picker.common.log.LogTagHelperKt;
import androidx.picker.widget.SeslAppPickerSelectLayout;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ SeslAppPickerSelectLayout.AnonymousClass6 f$0;
    public final /* synthetic */ RecyclerView.ItemAnimator f$1;

    public /* synthetic */ SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0(SeslAppPickerSelectLayout.AnonymousClass6 anonymousClass6, RecyclerView.ItemAnimator itemAnimator) {
        this.f$0 = anonymousClass6;
        this.f$1 = itemAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SeslAppPickerSelectLayout.AnonymousClass6 anonymousClass6 = this.f$0;
        RecyclerView.ItemAnimator itemAnimator = this.f$1;
        LogTagHelperKt.debug(SeslAppPickerSelectLayout.this, "setItemAnimator =" + itemAnimator);
        SeslAppPickerSelectLayout.this.mSelectedListView.setItemAnimator(itemAnimator);
    }
}
