package com.android.systemui.statusbar.notification;

import android.text.Layout;
import android.text.TextUtils;
import android.util.Pools;
import android.view.View;
import android.widget.TextView;
import com.android.systemui.statusbar.notification.TransformState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TextViewTransformState extends TransformState {
    public static final Pools.SimplePool sInstancePool = new Pools.SimplePool(40);
    public TextView mText;

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final int getContentHeight() {
        return this.mText.getLineHeight();
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final int getContentWidth() {
        Layout layout = this.mText.getLayout();
        if (layout != null) {
            return (int) layout.getLineWidth(0);
        }
        return super.getContentWidth();
    }

    public final int getEllipsisCount() {
        Layout layout = this.mText.getLayout();
        if (layout == null || layout.getLineCount() <= 0) {
            return 0;
        }
        return layout.getEllipsisCount(0);
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final void initFrom(View view, TransformState.TransformInfo transformInfo) {
        super.initFrom(view, transformInfo);
        this.mText = (TextView) view;
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final void recycle() {
        super.recycle();
        sInstancePool.release(this);
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final void reset() {
        super.reset();
        this.mText = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // com.android.systemui.statusbar.notification.TransformState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean sameAs(com.android.systemui.statusbar.notification.TransformState r10) {
        /*
            r9 = this;
            boolean r0 = r9.mSameAsAny
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            boolean r0 = r10 instanceof com.android.systemui.statusbar.notification.TextViewTransformState
            r2 = 0
            if (r0 == 0) goto L99
            com.android.systemui.statusbar.notification.TextViewTransformState r10 = (com.android.systemui.statusbar.notification.TextViewTransformState) r10
            android.widget.TextView r0 = r10.mText
            java.lang.CharSequence r0 = r0.getText()
            android.widget.TextView r3 = r9.mText
            java.lang.CharSequence r3 = r3.getText()
            boolean r0 = android.text.TextUtils.equals(r0, r3)
            if (r0 == 0) goto L99
            int r0 = r9.getEllipsisCount()
            int r3 = r10.getEllipsisCount()
            if (r0 != r3) goto L97
            android.widget.TextView r0 = r9.mText
            int r0 = r0.getLineCount()
            android.widget.TextView r3 = r10.mText
            int r3 = r3.getLineCount()
            if (r0 != r3) goto L97
            android.widget.TextView r9 = r9.mText
            boolean r0 = r9 instanceof android.text.Spanned
            android.widget.TextView r3 = r10.mText
            boolean r3 = r3 instanceof android.text.Spanned
            if (r0 == r3) goto L42
            goto L91
        L42:
            if (r0 != 0) goto L45
            goto L93
        L45:
            android.text.Spanned r9 = (android.text.Spanned) r9
            int r0 = r9.length()
            java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
            java.lang.Object[] r0 = r9.getSpans(r2, r0, r3)
            android.widget.TextView r10 = r10.mText
            android.text.Spanned r10 = (android.text.Spanned) r10
            int r4 = r10.length()
            java.lang.Object[] r3 = r10.getSpans(r2, r4, r3)
            int r4 = r0.length
            int r5 = r3.length
            if (r4 == r5) goto L62
            goto L91
        L62:
            r4 = r2
        L63:
            int r5 = r0.length
            if (r4 >= r5) goto L93
            r5 = r0[r4]
            r6 = r3[r4]
            java.lang.Class r7 = r5.getClass()
            java.lang.Class r8 = r6.getClass()
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L79
            goto L91
        L79:
            int r7 = r9.getSpanStart(r5)
            int r8 = r10.getSpanStart(r6)
            if (r7 != r8) goto L91
            int r5 = r9.getSpanEnd(r5)
            int r6 = r10.getSpanEnd(r6)
            if (r5 == r6) goto L8e
            goto L91
        L8e:
            int r4 = r4 + 1
            goto L63
        L91:
            r9 = r2
            goto L94
        L93:
            r9 = r1
        L94:
            if (r9 == 0) goto L97
            goto L98
        L97:
            r1 = r2
        L98:
            return r1
        L99:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.TextViewTransformState.sameAs(com.android.systemui.statusbar.notification.TransformState):boolean");
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final boolean transformScale(TransformState transformState) {
        int lineCount;
        if (!(transformState instanceof TextViewTransformState)) {
            return false;
        }
        TextViewTransformState textViewTransformState = (TextViewTransformState) transformState;
        if (!TextUtils.equals(this.mText.getText(), textViewTransformState.mText.getText()) || (lineCount = this.mText.getLineCount()) != 1 || lineCount != textViewTransformState.mText.getLineCount() || getEllipsisCount() != textViewTransformState.getEllipsisCount() || getContentHeight() == textViewTransformState.getContentHeight()) {
            return false;
        }
        return true;
    }
}
