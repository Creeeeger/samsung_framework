package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EmojiTextWatcher implements TextWatcher {
    public final EditText mEditText;
    public final boolean mExpectInitializedEmojiCompat;
    public InitCallbackImpl mInitCallback;
    public final int mMaxEmojiCount = Integer.MAX_VALUE;
    public boolean mEnabled = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class InitCallbackImpl extends EmojiCompat.InitCallback {
        public final Reference mViewRef;

        public InitCallbackImpl(EditText editText) {
            this.mViewRef = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void onInitialized() {
            EmojiTextWatcher.processTextOnEnablingEvent((EditText) this.mViewRef.get(), 1);
        }
    }

    public EmojiTextWatcher(EditText editText, boolean z) {
        this.mEditText = editText;
        this.mExpectInitializedEmojiCompat = z;
    }

    public static void processTextOnEnablingEvent(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat emojiCompat = EmojiCompat.get();
            if (editableText == null) {
                length = 0;
            } else {
                emojiCompat.getClass();
                length = editableText.length();
            }
            emojiCompat.process(0, length, editableText, Integer.MAX_VALUE);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        if (r0 == false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    @Override // android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTextChanged(java.lang.CharSequence r4, int r5, int r6, int r7) {
        /*
            r3 = this;
            android.widget.EditText r0 = r3.mEditText
            boolean r0 = r0.isInEditMode()
            if (r0 != 0) goto L58
            boolean r0 = r3.mEnabled
            r1 = 1
            if (r0 == 0) goto L1b
            boolean r0 = r3.mExpectInitializedEmojiCompat
            r2 = 0
            if (r0 != 0) goto L1c
            androidx.emoji2.text.EmojiCompat r0 = androidx.emoji2.text.EmojiCompat.sInstance
            if (r0 == 0) goto L18
            r0 = r1
            goto L19
        L18:
            r0 = r2
        L19:
            if (r0 != 0) goto L1c
        L1b:
            r2 = r1
        L1c:
            if (r2 == 0) goto L1f
            goto L58
        L1f:
            if (r6 > r7) goto L58
            boolean r6 = r4 instanceof android.text.Spannable
            if (r6 == 0) goto L58
            androidx.emoji2.text.EmojiCompat r6 = androidx.emoji2.text.EmojiCompat.get()
            int r6 = r6.getLoadState()
            if (r6 == 0) goto L42
            if (r6 == r1) goto L35
            r4 = 3
            if (r6 == r4) goto L42
            goto L58
        L35:
            android.text.Spannable r4 = (android.text.Spannable) r4
            androidx.emoji2.text.EmojiCompat r6 = androidx.emoji2.text.EmojiCompat.get()
            int r7 = r7 + r5
            int r3 = r3.mMaxEmojiCount
            r6.process(r5, r7, r4, r3)
            goto L58
        L42:
            androidx.emoji2.text.EmojiCompat r4 = androidx.emoji2.text.EmojiCompat.get()
            androidx.emoji2.viewsintegration.EmojiTextWatcher$InitCallbackImpl r5 = r3.mInitCallback
            if (r5 != 0) goto L53
            androidx.emoji2.viewsintegration.EmojiTextWatcher$InitCallbackImpl r5 = new androidx.emoji2.viewsintegration.EmojiTextWatcher$InitCallbackImpl
            android.widget.EditText r6 = r3.mEditText
            r5.<init>(r6)
            r3.mInitCallback = r5
        L53:
            androidx.emoji2.viewsintegration.EmojiTextWatcher$InitCallbackImpl r3 = r3.mInitCallback
            r4.registerInitCallback(r3)
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.viewsintegration.EmojiTextWatcher.onTextChanged(java.lang.CharSequence, int, int, int):void");
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
