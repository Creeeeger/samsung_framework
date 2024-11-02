package com.android.systemui.qs;

import com.android.systemui.qs.SecPageIndicator;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSPanelController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SecQSPanelController f$0;

    public /* synthetic */ SecQSPanelController$$ExternalSyntheticLambda1(SecQSPanelController secQSPanelController, int i) {
        this.$r8$classId = i;
        this.f$0 = secQSPanelController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                final PagedTileLayout pagedTileLayout = (PagedTileLayout) obj;
                PageIndicator pageIndicator = this.f$0.mPageIndicator;
                pagedTileLayout.getClass();
                SecPageIndicator secPageIndicator = (SecPageIndicator) pageIndicator;
                pagedTileLayout.mPageIndicator = secPageIndicator;
                secPageIndicator.setNumPages(pagedTileLayout.mPages.size());
                pagedTileLayout.mPageIndicator.setLocation(pagedTileLayout.mPageIndicatorPosition);
                pagedTileLayout.mPageIndicator.mCallback = new SecPageIndicator.SecPageIndicatorCallback() { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda8
                    @Override // com.android.systemui.qs.SecPageIndicator.SecPageIndicatorCallback
                    public final void setViewPageToSelected(int i) {
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        PagedTileLayout.this.setCurrentItem(i, true);
                    }
                };
                return;
            default:
                ((PagedTileLayout) obj).setOnTouchListener(this.f$0.mTileLayoutTouchListener);
                return;
        }
    }
}
