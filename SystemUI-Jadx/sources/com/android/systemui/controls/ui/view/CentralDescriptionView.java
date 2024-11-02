package com.android.systemui.controls.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.R;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CentralDescriptionView extends ConstraintLayout {
    public final CentralDescriptionView$mOnOffsetChangedListener$1 mOnOffsetChangedListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1] */
    public CentralDescriptionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNull(context);
        this.mOnOffsetChangedListener = new AppBarLayout.OnOffsetChangedListener() { // from class: com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                int height = (((int) (appBarLayout.getHeight() - appBarLayout.seslGetCollapsedHeight())) + i) / 2;
                CentralDescriptionView centralDescriptionView = CentralDescriptionView.this;
                if (centralDescriptionView.getChildCount() > 0) {
                    int i2 = 0;
                    View childAt = centralDescriptionView.getChildAt(0);
                    if (childAt != null) {
                        i2 = childAt.getMeasuredHeight();
                    }
                    int measuredHeight = (centralDescriptionView.getMeasuredHeight() - i2) / 2;
                    if (height > measuredHeight) {
                        height = measuredHeight;
                    }
                }
                centralDescriptionView.setTranslationY(-height);
            }
        };
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        AppBarLayout appBarLayout;
        super.onVisibilityChanged(view, i);
        View rootView = getRootView();
        if (rootView != null) {
            appBarLayout = (AppBarLayout) rootView.findViewById(R.id.app_bar);
        } else {
            appBarLayout = null;
        }
        if (appBarLayout != null) {
            if (appBarLayout.getVisibility() == 0) {
                appBarLayout.addOnOffsetChangedListener(this.mOnOffsetChangedListener);
                return;
            }
            CentralDescriptionView$mOnOffsetChangedListener$1 centralDescriptionView$mOnOffsetChangedListener$1 = this.mOnOffsetChangedListener;
            List list = appBarLayout.listeners;
            if (list != null && centralDescriptionView$mOnOffsetChangedListener$1 != null) {
                ((ArrayList) list).remove(centralDescriptionView$mOnOffsetChangedListener$1);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1] */
    public CentralDescriptionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNull(context);
        this.mOnOffsetChangedListener = new AppBarLayout.OnOffsetChangedListener() { // from class: com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
                int height = (((int) (appBarLayout.getHeight() - appBarLayout.seslGetCollapsedHeight())) + i2) / 2;
                CentralDescriptionView centralDescriptionView = CentralDescriptionView.this;
                if (centralDescriptionView.getChildCount() > 0) {
                    int i22 = 0;
                    View childAt = centralDescriptionView.getChildAt(0);
                    if (childAt != null) {
                        i22 = childAt.getMeasuredHeight();
                    }
                    int measuredHeight = (centralDescriptionView.getMeasuredHeight() - i22) / 2;
                    if (height > measuredHeight) {
                        height = measuredHeight;
                    }
                }
                centralDescriptionView.setTranslationY(-height);
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1] */
    public CentralDescriptionView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Intrinsics.checkNotNull(context);
        this.mOnOffsetChangedListener = new AppBarLayout.OnOffsetChangedListener() { // from class: com.android.systemui.controls.ui.view.CentralDescriptionView$mOnOffsetChangedListener$1
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i22) {
                int height = (((int) (appBarLayout.getHeight() - appBarLayout.seslGetCollapsedHeight())) + i22) / 2;
                CentralDescriptionView centralDescriptionView = CentralDescriptionView.this;
                if (centralDescriptionView.getChildCount() > 0) {
                    int i222 = 0;
                    View childAt = centralDescriptionView.getChildAt(0);
                    if (childAt != null) {
                        i222 = childAt.getMeasuredHeight();
                    }
                    int measuredHeight = (centralDescriptionView.getMeasuredHeight() - i222) / 2;
                    if (height > measuredHeight) {
                        height = measuredHeight;
                    }
                }
                centralDescriptionView.setTranslationY(-height);
            }
        };
    }
}
