package com.android.wm.shell.common.split;

import android.util.Log;
import com.android.wm.shell.common.split.DividerResizeLayout;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DividerResizeLayout$$ExternalSyntheticLambda1 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        DividerResizeLayout.DividerResizeTarget dividerResizeTarget = (DividerResizeLayout.DividerResizeTarget) obj;
        boolean z = DividerResizeLayout.DEBUG;
        if (dividerResizeTarget.mBlurAnimator != null) {
            if (DividerResizeLayout.DEBUG) {
                Log.d("DividerResizeLayout", "clearAllAnimators: " + dividerResizeTarget.mBlurAnimator);
            }
            dividerResizeTarget.mBlurAnimator.end();
            dividerResizeTarget.mBlurAnimator = null;
        }
        if (dividerResizeTarget.mBoundsAnimator != null) {
            if (DividerResizeLayout.DEBUG) {
                Log.d("DividerResizeLayout", "clearAllAnimators: " + dividerResizeTarget.mBoundsAnimator);
            }
            dividerResizeTarget.mBoundsAnimator.end();
            dividerResizeTarget.mBoundsAnimator = null;
        }
        if (dividerResizeTarget.mOutlineInsetsAnimator != null) {
            if (DividerResizeLayout.DEBUG) {
                Log.d("DividerResizeLayout", "clearAllAnimators: " + dividerResizeTarget.mOutlineInsetsAnimator);
            }
            dividerResizeTarget.mOutlineInsetsAnimator.end();
            dividerResizeTarget.mOutlineInsetsAnimator = null;
        }
    }
}
