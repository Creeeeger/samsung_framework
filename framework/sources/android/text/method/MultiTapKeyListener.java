package android.text.method;

import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.method.TextKeyListener;
import android.util.SparseArray;

/* loaded from: classes3.dex */
public class MultiTapKeyListener extends BaseKeyListener implements SpanWatcher {
    private static MultiTapKeyListener[] sInstance = new MultiTapKeyListener[TextKeyListener.Capitalize.values().length * 2];
    private static final SparseArray<String> sRecs;
    private boolean mAutoText;
    private TextKeyListener.Capitalize mCapitalize;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        sRecs = sparseArray;
        sparseArray.put(8, ".,1!@#$%^&*:/?'=()");
        sparseArray.put(9, "abc2ABC");
        sparseArray.put(10, "def3DEF");
        sparseArray.put(11, "ghi4GHI");
        sparseArray.put(12, "jkl5JKL");
        sparseArray.put(13, "mno6MNO");
        sparseArray.put(14, "pqrs7PQRS");
        sparseArray.put(15, "tuv8TUV");
        sparseArray.put(16, "wxyz9WXYZ");
        sparseArray.put(7, "0+");
        sparseArray.put(18, " ");
    }

    public MultiTapKeyListener(TextKeyListener.Capitalize cap, boolean autotext) {
        this.mCapitalize = cap;
        this.mAutoText = autotext;
    }

    public static MultiTapKeyListener getInstance(boolean z, TextKeyListener.Capitalize capitalize) {
        int ordinal = (capitalize.ordinal() * 2) + (z ? 1 : 0);
        MultiTapKeyListener[] multiTapKeyListenerArr = sInstance;
        if (multiTapKeyListenerArr[ordinal] == null) {
            multiTapKeyListenerArr[ordinal] = new MultiTapKeyListener(capitalize, z);
        }
        return sInstance[ordinal];
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return makeTextContentType(this.mCapitalize, this.mAutoText);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0181  */
    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(android.view.View r21, android.text.Editable r22, int r23, android.view.KeyEvent r24) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.method.MultiTapKeyListener.onKeyDown(android.view.View, android.text.Editable, int, android.view.KeyEvent):boolean");
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable buf, Object what, int s, int e, int start, int stop) {
        if (what == Selection.SELECTION_END) {
            buf.removeSpan(TextKeyListener.ACTIVE);
            removeTimeouts(buf);
        }
    }

    private static void removeTimeouts(Spannable spannable) {
        for (Timeout timeout : (Timeout[]) spannable.getSpans(0, spannable.length(), Timeout.class)) {
            timeout.removeCallbacks(timeout);
            timeout.mBuffer = null;
            spannable.removeSpan(timeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Timeout extends Handler implements Runnable {
        private Editable mBuffer;

        public Timeout(Editable buffer) {
            this.mBuffer = buffer;
            buffer.setSpan(this, 0, buffer.length(), 18);
            postAtTime(this, SystemClock.uptimeMillis() + 2000);
        }

        @Override // java.lang.Runnable
        public void run() {
            Spannable buf = this.mBuffer;
            if (buf != null) {
                int st = Selection.getSelectionStart(buf);
                int en = Selection.getSelectionEnd(buf);
                int start = buf.getSpanStart(TextKeyListener.ACTIVE);
                int end = buf.getSpanEnd(TextKeyListener.ACTIVE);
                if (st == start && en == end) {
                    Selection.setSelection(buf, Selection.getSelectionEnd(buf));
                }
                buf.removeSpan(this);
            }
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable s, Object what, int start, int end) {
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable s, Object what, int start, int end) {
    }
}
