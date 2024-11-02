package com.android.systemui.statusbar.phone.datausage;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import com.android.systemui.R;
import com.android.systemui.shade.NotificationPanelView;
import java.util.function.BooleanSupplier;
import java.util.function.DoubleSupplier;
import java.util.function.IntSupplier;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataUsageLabelParent {
    public final DoubleSupplier mExpansionHeightSupplier;
    public final BooleanSupplier mFullyExpandedSupplier;
    public final IntSupplier mMaxPanelHeightSupplier;
    public final IntSupplier mMinExpansionHeightSupplier;
    public final BooleanSupplier mOnKeyguardStateSupplier;
    public final Supplier mPanelViewSupplier;
    public ViewGroup mParent;

    public DataUsageLabelParent(Supplier<NotificationPanelView> supplier, BooleanSupplier booleanSupplier, DoubleSupplier doubleSupplier, IntSupplier intSupplier, BooleanSupplier booleanSupplier2, IntSupplier intSupplier2) {
        this.mPanelViewSupplier = supplier;
        this.mOnKeyguardStateSupplier = booleanSupplier;
        this.mExpansionHeightSupplier = doubleSupplier;
        this.mMinExpansionHeightSupplier = intSupplier;
        this.mFullyExpandedSupplier = booleanSupplier2;
        this.mMaxPanelHeightSupplier = intSupplier2;
    }

    public final ViewGroup getParentViewGroup() {
        NotificationPanelView notificationPanelView = (NotificationPanelView) this.mPanelViewSupplier.get();
        if (this.mParent == null && notificationPanelView != null) {
            View inflate = ((ViewStub) notificationPanelView.findViewById(R.id.sec_panel_data_usage_container_stub)).inflate();
            if (inflate instanceof ViewGroup) {
                this.mParent = (ViewGroup) inflate;
            } else {
                Log.e("DataUsageLabelParent", "ERROR: it shows that two or more objects using the same view name may exist at the same time: " + inflate);
            }
        }
        return this.mParent;
    }
}
