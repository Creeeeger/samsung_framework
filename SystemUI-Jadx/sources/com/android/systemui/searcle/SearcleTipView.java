package com.android.systemui.searcle;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SearcleTipView extends FrameLayout {
    public Runnable dismiss;

    public SearcleTipView(Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        if (r1 != false) goto L26;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r5) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            if (r5 == 0) goto Lc
            int r2 = r5.getAction()
            if (r2 != 0) goto Lc
            r2 = r0
            goto Ld
        Lc:
            r2 = r1
        Ld:
            if (r2 == 0) goto L41
            if (r5 == 0) goto L1a
            int r2 = r5.getKeyCode()
            r3 = 4
            if (r2 != r3) goto L1a
            r2 = r0
            goto L1b
        L1a:
            r2 = r1
        L1b:
            if (r2 != 0) goto L39
            if (r5 == 0) goto L29
            int r2 = r5.getKeyCode()
            r3 = 111(0x6f, float:1.56E-43)
            if (r2 != r3) goto L29
            r2 = r0
            goto L2a
        L29:
            r2 = r1
        L2a:
            if (r2 != 0) goto L39
            if (r5 == 0) goto L37
            int r2 = r5.getKeyCode()
            r3 = 67
            if (r2 != r3) goto L37
            r1 = r0
        L37:
            if (r1 == 0) goto L41
        L39:
            java.lang.Runnable r4 = r4.dismiss
            if (r4 == 0) goto L40
            r4.run()
        L40:
            return r0
        L41:
            boolean r4 = super.dispatchKeyEvent(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.searcle.SearcleTipView.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public SearcleTipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SearcleTipView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
