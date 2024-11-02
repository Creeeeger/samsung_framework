package com.android.systemui.classifier;

import com.android.systemui.classifier.FalsingClassifier;
import com.android.systemui.plugins.FalsingManager;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class BrightLineFalsingManager$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BrightLineFalsingManager$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((FalsingManager.FalsingTapListener) obj).onAdditionalTapRequired();
                return;
            case 1:
                FalsingClassifier falsingClassifier = (FalsingClassifier) obj;
                ((ArrayList) falsingClassifier.mDataProvider.mMotionEventListeners).remove(falsingClassifier.mMotionEventListener);
                return;
            case 2:
                ((FalsingClassifier) obj).onSessionEnded();
                return;
            case 3:
                ((FalsingClassifier) obj).onSessionStarted();
                return;
            case 4:
                ((FalsingManager.FalsingBeliefListener) obj).onFalse();
                return;
            default:
                FalsingClassifier.Result result = (FalsingClassifier.Result) obj;
                if (result.mFalsed && result.getReason() != null) {
                    boolean z = BrightLineFalsingManager.DEBUG;
                    return;
                }
                return;
        }
    }
}
