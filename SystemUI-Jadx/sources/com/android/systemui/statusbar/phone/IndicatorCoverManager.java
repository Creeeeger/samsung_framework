package com.android.systemui.statusbar.phone;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorCoverManager {
    public final CentralSurfaces centralSurfaces;
    public final Context context;
    public final IndicatorGardenPresenter indicatorGardenPresenter;
    public boolean needToApplyForCoverPaddings;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public IndicatorCoverManager(Context context, CentralSurfaces centralSurfaces, IndicatorGardenPresenter indicatorGardenPresenter) {
        this.context = context;
        this.centralSurfaces = centralSurfaces;
        this.indicatorGardenPresenter = indicatorGardenPresenter;
    }

    public final void updateCoverMargin(int i, boolean z) {
        boolean z2 = this.needToApplyForCoverPaddings;
        int i2 = 0;
        if (i != 8) {
            z = false;
        }
        this.needToApplyForCoverPaddings = z;
        int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.clear_cover_status_bar_margin);
        boolean z3 = this.needToApplyForCoverPaddings;
        if (z3) {
            i2 = dimensionPixelSize;
        }
        if (z3 != z2) {
            RecyclerView$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("updateCoverMargin() prvCovered: ", z2, " >>> mNeedToApplyForCoverPaddings: ", z3, " ,getDefaultSidePadding(): "), i2, "IndicatorCoverManager");
            this.indicatorGardenPresenter.updateGardenWithNewModel(((CentralSurfacesImpl) this.centralSurfaces).mPhoneStatusBarViewController);
        }
    }
}
