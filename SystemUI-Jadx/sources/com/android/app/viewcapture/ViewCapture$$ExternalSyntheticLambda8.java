package com.android.app.viewcapture;

import com.android.app.viewcapture.ViewCapture;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewCapture$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ ViewCapture.ViewRef f$1;
    public final /* synthetic */ ViewCapture.ViewRef f$2;

    public /* synthetic */ ViewCapture$$ExternalSyntheticLambda8(Object obj, ViewCapture.ViewRef viewRef, ViewCapture.ViewRef viewRef2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = viewRef;
        this.f$2 = viewRef2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ViewCapture viewCapture = (ViewCapture) this.f$0;
                ViewCapture.ViewRef viewRef = this.f$1;
                this.f$2.next = viewCapture.mPool;
                viewCapture.mPool = viewRef;
                return;
            default:
                ViewCapture.WindowListener windowListener = (ViewCapture.WindowListener) this.f$0;
                ViewCapture.ViewRef viewRef2 = this.f$1;
                ViewCapture.ViewRef viewRef3 = this.f$2;
                ViewCapture viewCapture2 = ViewCapture.this;
                viewRef3.next = viewCapture2.mPool;
                viewCapture2.mPool = viewRef2;
                return;
        }
    }
}
