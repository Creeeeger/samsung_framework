package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class EmojiProcessor {
    private EmojiCompat.GlyphChecker mGlyphChecker;
    private final MetadataRepo mMetadataRepo;
    private final EmojiCompat.SpanFactory mSpanFactory;

    private static class EmojiProcessAddSpanCallback implements EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {
        private final EmojiCompat.SpanFactory mSpanFactory;
        public UnprecomputeTextOnModificationSpannable spannable;

        EmojiProcessAddSpanCallback(UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat.SpanFactory spanFactory) {
            this.spannable = unprecomputeTextOnModificationSpannable;
            this.mSpanFactory = spanFactory;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final UnprecomputeTextOnModificationSpannable getResult() {
            return this.spannable;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (typefaceEmojiRasterizer.isPreferredSystemRender()) {
                return true;
            }
            if (this.spannable == null) {
                this.spannable = new UnprecomputeTextOnModificationSpannable(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            ((EmojiCompat.DefaultSpanFactory) this.mSpanFactory).getClass();
            this.spannable.setSpan(new TypefaceEmojiSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }
    }

    private interface EmojiProcessCallback<T> {
        T getResult();

        boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    static final class ProcessorSm {
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        ProcessorSm(MetadataRepo.Node node, boolean z, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }

        private void reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            int[] iArr;
            if (this.mCurrentNode.getData().isDefaultEmoji()) {
                return true;
            }
            if (this.mLastCodepoint == 65039) {
                return true;
            }
            return this.mUseEmojiAsDefaultStyle && ((iArr = this.mEmojiAsDefaultStyleExceptions) == null || Arrays.binarySearch(iArr, this.mCurrentNode.getData().getCodepointAt(0)) < 0);
        }

        final int check(int i) {
            MetadataRepo.Node node = this.mCurrentNode.get(i);
            int i2 = 1;
            if (this.mState == 2) {
                if (node != null) {
                    this.mCurrentNode = node;
                    this.mCurrentDepth++;
                } else {
                    if (i == 65038) {
                        reset();
                    } else {
                        if (!(i == 65039)) {
                            if (this.mCurrentNode.getData() != null) {
                                if (this.mCurrentDepth != 1) {
                                    this.mFlushNode = this.mCurrentNode;
                                    reset();
                                } else if (shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                                    this.mFlushNode = this.mCurrentNode;
                                    reset();
                                } else {
                                    reset();
                                }
                                i2 = 3;
                            } else {
                                reset();
                            }
                        }
                    }
                }
                i2 = 2;
            } else if (node == null) {
                reset();
            } else {
                this.mState = 2;
                this.mCurrentNode = node;
                this.mCurrentDepth = 1;
                i2 = 2;
            }
            this.mLastCodepoint = i;
            return i2;
        }

        final TypefaceEmojiRasterizer getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        final TypefaceEmojiRasterizer getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        final boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }
    }

    EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.DefaultSpanFactory defaultSpanFactory, EmojiCompat.GlyphChecker glyphChecker, Set set) {
        this.mSpanFactory = defaultSpanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new MarkExclusionCallback(str));
        }
    }

    private static boolean delete(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!(selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004d, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x008a, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x007d, code lost:
    
        if (r11 != false) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean handleDeleteSurroundingText(android.view.inputmethod.InputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.handleDeleteSurroundingText(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
    }

    static boolean handleOnKeyDown(Editable editable, int i, KeyEvent keyEvent) {
        if (!(i != 67 ? i != 112 ? false : delete(editable, keyEvent, true) : delete(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean hasGlyph(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (typefaceEmojiRasterizer.getHasGlyph() == 0) {
            EmojiCompat.GlyphChecker glyphChecker = this.mGlyphChecker;
            typefaceEmojiRasterizer.getSdkAdded();
            typefaceEmojiRasterizer.setHasGlyph(((DefaultGlyphChecker) glyphChecker).hasGlyph(i, i2, charSequence));
        }
        return typefaceEmojiRasterizer.getHasGlyph() == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0098, code lost:
    
        ((androidx.emoji2.text.SpannableBuilder) r9).endBatchEdit();
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[Catch: all -> 0x009f, TryCatch #0 {all -> 0x009f, blocks: (B:44:0x000c, B:47:0x0011, B:49:0x0015, B:51:0x0024, B:7:0x0036, B:9:0x0040, B:11:0x0043, B:13:0x0047, B:15:0x0053, B:17:0x0056, B:22:0x0065, B:25:0x006c, B:27:0x0081, B:5:0x002c), top: B:43:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0081 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #0 {all -> 0x009f, blocks: (B:44:0x000c, B:47:0x0011, B:49:0x0015, B:51:0x0024, B:7:0x0036, B:9:0x0040, B:11:0x0043, B:13:0x0047, B:15:0x0053, B:17:0x0056, B:22:0x0065, B:25:0x006c, B:27:0x0081, B:5:0x002c), top: B:43:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.CharSequence process(java.lang.CharSequence r9, int r10, int r11, boolean r12) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.emoji2.text.SpannableBuilder
            if (r0 == 0) goto La
            r1 = r9
            androidx.emoji2.text.SpannableBuilder r1 = (androidx.emoji2.text.SpannableBuilder) r1
            r1.beginBatchEdit()
        La:
            if (r0 != 0) goto L2c
            boolean r1 = r9 instanceof android.text.Spannable     // Catch: java.lang.Throwable -> L9f
            if (r1 == 0) goto L11
            goto L2c
        L11:
            boolean r1 = r9 instanceof android.text.Spanned     // Catch: java.lang.Throwable -> L9f
            if (r1 == 0) goto L2a
            r1 = r9
            android.text.Spanned r1 = (android.text.Spanned) r1     // Catch: java.lang.Throwable -> L9f
            int r2 = r10 + (-1)
            int r3 = r11 + 1
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r4 = androidx.emoji2.text.EmojiSpan.class
            int r1 = r1.nextSpanTransition(r2, r3, r4)     // Catch: java.lang.Throwable -> L9f
            if (r1 > r11) goto L2a
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r1 = new androidx.emoji2.text.UnprecomputeTextOnModificationSpannable     // Catch: java.lang.Throwable -> L9f
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L9f
            goto L34
        L2a:
            r1 = 0
            goto L34
        L2c:
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r1 = new androidx.emoji2.text.UnprecomputeTextOnModificationSpannable     // Catch: java.lang.Throwable -> L9f
            r2 = r9
            android.text.Spannable r2 = (android.text.Spannable) r2     // Catch: java.lang.Throwable -> L9f
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L9f
        L34:
            if (r1 == 0) goto L61
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r2 = androidx.emoji2.text.EmojiSpan.class
            java.lang.Object[] r2 = r1.getSpans(r10, r11, r2)     // Catch: java.lang.Throwable -> L9f
            androidx.emoji2.text.EmojiSpan[] r2 = (androidx.emoji2.text.EmojiSpan[]) r2     // Catch: java.lang.Throwable -> L9f
            if (r2 == 0) goto L61
            int r3 = r2.length     // Catch: java.lang.Throwable -> L9f
            if (r3 <= 0) goto L61
            int r3 = r2.length     // Catch: java.lang.Throwable -> L9f
            r4 = 0
        L45:
            if (r4 >= r3) goto L61
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L9f
            int r6 = r1.getSpanStart(r5)     // Catch: java.lang.Throwable -> L9f
            int r7 = r1.getSpanEnd(r5)     // Catch: java.lang.Throwable -> L9f
            if (r6 == r11) goto L56
            r1.removeSpan(r5)     // Catch: java.lang.Throwable -> L9f
        L56:
            int r10 = java.lang.Math.min(r6, r10)     // Catch: java.lang.Throwable -> L9f
            int r11 = java.lang.Math.max(r7, r11)     // Catch: java.lang.Throwable -> L9f
            int r4 = r4 + 1
            goto L45
        L61:
            r3 = r10
            r4 = r11
            if (r3 == r4) goto L96
            int r10 = r9.length()     // Catch: java.lang.Throwable -> L9f
            if (r3 < r10) goto L6c
            goto L96
        L6c:
            r5 = 2147483647(0x7fffffff, float:NaN)
            androidx.emoji2.text.EmojiProcessor$EmojiProcessAddSpanCallback r7 = new androidx.emoji2.text.EmojiProcessor$EmojiProcessAddSpanCallback     // Catch: java.lang.Throwable -> L9f
            androidx.emoji2.text.EmojiCompat$SpanFactory r10 = r8.mSpanFactory     // Catch: java.lang.Throwable -> L9f
            r7.<init>(r1, r10)     // Catch: java.lang.Throwable -> L9f
            r1 = r8
            r2 = r9
            r6 = r12
            java.lang.Object r8 = r1.process(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9f
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r8 = (androidx.emoji2.text.UnprecomputeTextOnModificationSpannable) r8     // Catch: java.lang.Throwable -> L9f
            if (r8 == 0) goto L8d
            android.text.Spannable r8 = r8.getUnwrappedSpannable()     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto L8c
            androidx.emoji2.text.SpannableBuilder r9 = (androidx.emoji2.text.SpannableBuilder) r9
            r9.endBatchEdit()
        L8c:
            return r8
        L8d:
            if (r0 == 0) goto L95
            r8 = r9
            androidx.emoji2.text.SpannableBuilder r8 = (androidx.emoji2.text.SpannableBuilder) r8
            r8.endBatchEdit()
        L95:
            return r9
        L96:
            if (r0 == 0) goto L9e
            r8 = r9
            androidx.emoji2.text.SpannableBuilder r8 = (androidx.emoji2.text.SpannableBuilder) r8
            r8.endBatchEdit()
        L9e:
            return r9
        L9f:
            r8 = move-exception
            if (r0 == 0) goto La7
            androidx.emoji2.text.SpannableBuilder r9 = (androidx.emoji2.text.SpannableBuilder) r9
            r9.endBatchEdit()
        La7:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.process(java.lang.CharSequence, int, int, boolean):java.lang.CharSequence");
    }

    private <T> T process(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessCallback<T> emojiProcessCallback) {
        int i4;
        int i5 = 0;
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), false, null);
        int codePointAt = Character.codePointAt(charSequence, i);
        boolean z2 = true;
        loop0: while (true) {
            int i6 = codePointAt;
            i4 = i;
            while (i4 < i2 && i5 < i3 && z2) {
                int check = processorSm.check(i6);
                if (check == 1) {
                    i += Character.charCount(Character.codePointAt(charSequence, i));
                    if (i < i2) {
                        codePointAt = Character.codePointAt(charSequence, i);
                    }
                } else if (check == 2) {
                    i4 += Character.charCount(i6);
                    if (i4 < i2) {
                        i6 = Character.codePointAt(charSequence, i4);
                    }
                } else if (check == 3) {
                    if (z || !hasGlyph(charSequence, i, i4, processorSm.getFlushMetadata())) {
                        z2 = emojiProcessCallback.handleEmoji(charSequence, i, i4, processorSm.getFlushMetadata());
                        i5++;
                    }
                    i = i4;
                }
                codePointAt = i6;
            }
        }
        if (processorSm.isInFlushableState() && i5 < i3 && z2 && (z || !hasGlyph(charSequence, i, i4, processorSm.getCurrentMetadata()))) {
            emojiProcessCallback.handleEmoji(charSequence, i, i4, processorSm.getCurrentMetadata());
        }
        return emojiProcessCallback.getResult();
    }

    private static class MarkExclusionCallback implements EmojiProcessCallback<MarkExclusionCallback> {
        private final String mExclusion;

        MarkExclusionCallback(String str) {
            this.mExclusion = str;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (!TextUtils.equals(charSequence.subSequence(i, i2), this.mExclusion)) {
                return true;
            }
            typefaceEmojiRasterizer.setExclusion();
            return false;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final MarkExclusionCallback getResult() {
            return this;
        }
    }
}
