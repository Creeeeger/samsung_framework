package com.airbnb.lottie;

import com.airbnb.lottie.LottieDrawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class LottieDrawable$$ExternalSyntheticLambda3 implements LottieDrawable.LazyCompositionTask {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LottieDrawable f$0;

    public /* synthetic */ LottieDrawable$$ExternalSyntheticLambda3(LottieDrawable lottieDrawable, int i) {
        this.$r8$classId = i;
        this.f$0 = lottieDrawable;
    }

    @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
    public final void run() {
        int i = this.$r8$classId;
        LottieDrawable lottieDrawable = this.f$0;
        switch (i) {
            case 0:
                lottieDrawable.resumeAnimation();
                return;
            default:
                lottieDrawable.playAnimation();
                return;
        }
    }
}
