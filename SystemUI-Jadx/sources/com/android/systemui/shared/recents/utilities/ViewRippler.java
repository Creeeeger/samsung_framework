package com.android.systemui.shared.recents.utilities;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewRippler {
    public final AnonymousClass1 mRipple = new Runnable() { // from class: com.android.systemui.shared.recents.utilities.ViewRippler.1
        @Override // java.lang.Runnable
        public final void run() {
            if (!ViewRippler.this.mRoot.isAttachedToWindow()) {
                return;
            }
            ViewRippler.this.mRoot.setPressed(true);
            ViewRippler.this.mRoot.setPressed(false);
        }
    };
    public View mRoot;
}
