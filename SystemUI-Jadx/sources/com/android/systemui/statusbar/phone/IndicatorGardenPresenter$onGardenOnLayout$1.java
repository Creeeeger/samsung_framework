package com.android.systemui.statusbar.phone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorGardenPresenter$onGardenOnLayout$1 implements Runnable {
    public final /* synthetic */ IndicatorGarden $garden;
    public final /* synthetic */ IndicatorGardenPresenter this$0;

    public IndicatorGardenPresenter$onGardenOnLayout$1(IndicatorGardenPresenter indicatorGardenPresenter, IndicatorGarden indicatorGarden) {
        this.this$0 = indicatorGardenPresenter;
        this.$garden = indicatorGarden;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.updateGardenWithNewModel(this.$garden);
    }
}
