package android.text;

import android.graphics.Paint;
import android.graphics.text.LineBreakConfig;
import android.hardware.scontext.SContextConstants;
import android.text.Layout;
import android.text.TextUtils;
import android.text.style.LineHeightSpan;
import android.util.Log;
import android.util.Pools;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;

/* loaded from: classes3.dex */
public class StaticLayout extends Layout {
    private static final char CHAR_NEW_LINE = '\n';
    private static final int COLUMNS_ELLIPSIZE = 7;
    private static final int COLUMNS_NORMAL = 5;
    private static final int DEFAULT_MAX_LINE_HEIGHT = -1;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 6;
    private static final int ELLIPSIS_START = 5;
    private static final int END_HYPHEN_MASK = 7;
    private static final int EXTRA = 3;
    private static final double EXTRA_ROUNDING = 0.5d;
    private static final int HYPHEN = 4;
    private static final int HYPHEN_MASK = 255;
    private static final int START = 0;
    private static final int START_HYPHEN_BITS_SHIFT = 3;
    private static final int START_HYPHEN_MASK = 24;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final float TAB_INCREMENT = 20.0f;
    private static final int TAB_MASK = 536870912;
    static final String TAG = "StaticLayout";
    private static final int TOP = 1;
    private int mBottomPadding;
    private int mColumns;
    private boolean mEllipsized;
    private int mEllipsizedWidth;
    private boolean mFallbackLineSpacing;
    private int[] mLeftIndents;
    private int mLineCount;
    private Layout.Directions[] mLineDirections;
    private int[] mLines;
    private int mMaxLineHeight;
    private int mMaximumVisibleLineCount;
    private int[] mRightIndents;
    private int mTopPadding;

    /* synthetic */ StaticLayout(Builder builder, StaticLayoutIA staticLayoutIA) {
        this(builder);
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private static final Pools.SynchronizedPool<Builder> sPool = new Pools.SynchronizedPool<>(3);
        private boolean mAddLastLineLineSpacing;
        private Layout.Alignment mAlignment;
        private int mBreakStrategy;
        private TextUtils.TruncateAt mEllipsize;
        private int mEllipsizedWidth;
        private int mEnd;
        private boolean mFallbackLineSpacing;
        private int mHyphenationFrequency;
        private boolean mIncludePad;
        private int mJustificationMode;
        private int[] mLeftIndents;
        private int mMaxLines;
        private TextPaint mPaint;
        private int[] mRightIndents;
        private float mSpacingAdd;
        private float mSpacingMult;
        private int mStart;
        private CharSequence mText;
        private TextDirectionHeuristic mTextDir;
        private int mWidth;
        private LineBreakConfig mLineBreakConfig = LineBreakConfig.NONE;
        private final Paint.FontMetricsInt mFontMetricsInt = new Paint.FontMetricsInt();

        private Builder() {
        }

        public static Builder obtain(CharSequence source, int start, int end, TextPaint paint, int width) {
            Builder b = sPool.acquire();
            if (b == null) {
                b = new Builder();
            }
            b.mText = source;
            b.mStart = start;
            b.mEnd = end;
            b.mPaint = paint;
            b.mWidth = width;
            b.mAlignment = Layout.Alignment.ALIGN_NORMAL;
            b.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            b.mSpacingMult = 1.0f;
            b.mSpacingAdd = 0.0f;
            b.mIncludePad = true;
            b.mFallbackLineSpacing = false;
            b.mEllipsizedWidth = width;
            b.mEllipsize = null;
            b.mMaxLines = Integer.MAX_VALUE;
            b.mBreakStrategy = 0;
            b.mHyphenationFrequency = 0;
            b.mJustificationMode = 0;
            b.mLineBreakConfig = LineBreakConfig.NONE;
            return b;
        }

        public static void recycle(Builder b) {
            b.mPaint = null;
            b.mText = null;
            b.mLeftIndents = null;
            b.mRightIndents = null;
            sPool.release(b);
        }

        public void finish() {
            this.mText = null;
            this.mPaint = null;
            this.mLeftIndents = null;
            this.mRightIndents = null;
        }

        public Builder setText(CharSequence source) {
            return setText(source, 0, source.length());
        }

        public Builder setText(CharSequence source, int start, int end) {
            this.mText = source;
            this.mStart = start;
            this.mEnd = end;
            return this;
        }

        public Builder setPaint(TextPaint paint) {
            this.mPaint = paint;
            return this;
        }

        public Builder setWidth(int width) {
            this.mWidth = width;
            if (this.mEllipsize == null) {
                this.mEllipsizedWidth = width;
            }
            return this;
        }

        public Builder setAlignment(Layout.Alignment alignment) {
            this.mAlignment = alignment;
            return this;
        }

        public Builder setTextDirection(TextDirectionHeuristic textDir) {
            this.mTextDir = textDir;
            return this;
        }

        public Builder setLineSpacing(float spacingAdd, float spacingMult) {
            this.mSpacingAdd = spacingAdd;
            this.mSpacingMult = spacingMult;
            return this;
        }

        public Builder setIncludePad(boolean includePad) {
            this.mIncludePad = includePad;
            return this;
        }

        public Builder setUseLineSpacingFromFallbacks(boolean useLineSpacingFromFallbacks) {
            this.mFallbackLineSpacing = useLineSpacingFromFallbacks;
            return this;
        }

        public Builder setEllipsizedWidth(int ellipsizedWidth) {
            this.mEllipsizedWidth = ellipsizedWidth;
            return this;
        }

        public Builder setEllipsize(TextUtils.TruncateAt ellipsize) {
            this.mEllipsize = ellipsize;
            return this;
        }

        public Builder setMaxLines(int maxLines) {
            this.mMaxLines = maxLines;
            return this;
        }

        public Builder setBreakStrategy(int breakStrategy) {
            this.mBreakStrategy = breakStrategy;
            return this;
        }

        public Builder setHyphenationFrequency(int hyphenationFrequency) {
            this.mHyphenationFrequency = hyphenationFrequency;
            return this;
        }

        public Builder setIndents(int[] leftIndents, int[] rightIndents) {
            this.mLeftIndents = leftIndents;
            this.mRightIndents = rightIndents;
            return this;
        }

        public Builder setJustificationMode(int justificationMode) {
            this.mJustificationMode = justificationMode;
            return this;
        }

        public Builder setAddLastLineLineSpacing(boolean value) {
            this.mAddLastLineLineSpacing = value;
            return this;
        }

        public Builder setLineBreakConfig(LineBreakConfig lineBreakConfig) {
            this.mLineBreakConfig = lineBreakConfig;
            return this;
        }

        public StaticLayout build() {
            StaticLayout result = new StaticLayout(this);
            recycle(this);
            return result;
        }
    }

    @Deprecated
    public StaticLayout(CharSequence source, TextPaint paint, int width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        this(source, 0, source.length(), paint, width, align, spacingmult, spacingadd, includepad);
    }

    @Deprecated
    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        this(source, bufstart, bufend, paint, outerwidth, align, spacingmult, spacingadd, includepad, null, 0);
    }

    @Deprecated
    public StaticLayout(CharSequence source, int bufstart, int bufend, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        this(source, bufstart, bufend, paint, outerwidth, align, TextDirectionHeuristics.FIRSTSTRONG_LTR, spacingmult, spacingadd, includepad, ellipsize, ellipsizedWidth, Integer.MAX_VALUE);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StaticLayout(java.lang.CharSequence r15, int r16, int r17, android.text.TextPaint r18, int r19, android.text.Layout.Alignment r20, android.text.TextDirectionHeuristic r21, float r22, float r23, boolean r24, android.text.TextUtils.TruncateAt r25, int r26, int r27) {
        /*
            r14 = this;
            r8 = r14
            r9 = r15
            r10 = r25
            r11 = r26
            r12 = r27
            if (r10 != 0) goto Lc
            r1 = r9
            goto L1d
        Lc:
            boolean r0 = r9 instanceof android.text.Spanned
            if (r0 == 0) goto L17
            android.text.Layout$SpannedEllipsizer r0 = new android.text.Layout$SpannedEllipsizer
            r0.<init>(r15)
            r1 = r0
            goto L1d
        L17:
            android.text.Layout$Ellipsizer r0 = new android.text.Layout$Ellipsizer
            r0.<init>(r15)
            r1 = r0
        L1d:
            r0 = r14
            r2 = r18
            r3 = r19
            r4 = r20
            r5 = r21
            r6 = r22
            r7 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = -1
            r8.mMaxLineHeight = r0
            r0 = 2147483647(0x7fffffff, float:NaN)
            r8.mMaximumVisibleLineCount = r0
            android.text.StaticLayout$Builder r0 = android.text.StaticLayout.Builder.obtain(r15, r16, r17, r18, r19)
            r1 = r20
            android.text.StaticLayout$Builder r0 = r0.setAlignment(r1)
            r2 = r21
            android.text.StaticLayout$Builder r0 = r0.setTextDirection(r2)
            r3 = r22
            r4 = r23
            android.text.StaticLayout$Builder r0 = r0.setLineSpacing(r4, r3)
            r5 = r24
            android.text.StaticLayout$Builder r0 = r0.setIncludePad(r5)
            android.text.StaticLayout$Builder r0 = r0.setEllipsizedWidth(r11)
            android.text.StaticLayout$Builder r0 = r0.setEllipsize(r10)
            android.text.StaticLayout$Builder r0 = r0.setMaxLines(r12)
            if (r10 == 0) goto L75
            java.lang.CharSequence r6 = r14.getText()
            android.text.Layout$Ellipsizer r6 = (android.text.Layout.Ellipsizer) r6
            r6.mLayout = r8
            r6.mWidth = r11
            r6.mMethod = r10
            r8.mEllipsizedWidth = r11
            r7 = 7
            r8.mColumns = r7
            r6 = r19
            goto L7c
        L75:
            r6 = 5
            r8.mColumns = r6
            r6 = r19
            r8.mEllipsizedWidth = r6
        L7c:
            java.lang.Class<android.text.Layout$Directions> r7 = android.text.Layout.Directions.class
            r13 = 2
            java.lang.Object[] r7 = com.android.internal.util.ArrayUtils.newUnpaddedArray(r7, r13)
            android.text.Layout$Directions[] r7 = (android.text.Layout.Directions[]) r7
            r8.mLineDirections = r7
            int r7 = r8.mColumns
            int r7 = r7 * r13
            int[] r7 = com.android.internal.util.ArrayUtils.newUnpaddedIntArray(r7)
            r8.mLines = r7
            r8.mMaximumVisibleLineCount = r12
            boolean r7 = android.text.StaticLayout.Builder.m4881$$Nest$fgetmIncludePad(r0)
            boolean r13 = android.text.StaticLayout.Builder.m4881$$Nest$fgetmIncludePad(r0)
            r14.generate(r0, r7, r13)
            android.text.StaticLayout.Builder.m4894$$Nest$smrecycle(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.StaticLayout.<init>(java.lang.CharSequence, int, int, android.text.TextPaint, int, android.text.Layout$Alignment, android.text.TextDirectionHeuristic, float, float, boolean, android.text.TextUtils$TruncateAt, int, int):void");
    }

    public StaticLayout(CharSequence text) {
        super(text, null, 0, null, 0.0f, 0.0f);
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mColumns = 7;
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.CharSequence] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private StaticLayout(android.text.StaticLayout.Builder r11) {
        /*
            r10 = this;
            android.text.TextUtils$TruncateAt r0 = android.text.StaticLayout.Builder.m4875$$Nest$fgetmEllipsize(r11)
            if (r0 != 0) goto Lc
            java.lang.CharSequence r0 = android.text.StaticLayout.Builder.m4891$$Nest$fgetmText(r11)
            r3 = r0
            goto L29
        Lc:
            java.lang.CharSequence r0 = android.text.StaticLayout.Builder.m4891$$Nest$fgetmText(r11)
            boolean r0 = r0 instanceof android.text.Spanned
            if (r0 == 0) goto L1f
            android.text.Layout$SpannedEllipsizer r0 = new android.text.Layout$SpannedEllipsizer
            java.lang.CharSequence r1 = android.text.StaticLayout.Builder.m4891$$Nest$fgetmText(r11)
            r0.<init>(r1)
            r3 = r0
            goto L29
        L1f:
            android.text.Layout$Ellipsizer r0 = new android.text.Layout$Ellipsizer
            java.lang.CharSequence r1 = android.text.StaticLayout.Builder.m4891$$Nest$fgetmText(r11)
            r0.<init>(r1)
            r3 = r0
        L29:
            android.text.TextPaint r4 = android.text.StaticLayout.Builder.m4886$$Nest$fgetmPaint(r11)
            int r5 = android.text.StaticLayout.Builder.m4893$$Nest$fgetmWidth(r11)
            android.text.Layout$Alignment r6 = android.text.StaticLayout.Builder.m4873$$Nest$fgetmAlignment(r11)
            android.text.TextDirectionHeuristic r7 = android.text.StaticLayout.Builder.m4892$$Nest$fgetmTextDir(r11)
            float r8 = android.text.StaticLayout.Builder.m4889$$Nest$fgetmSpacingMult(r11)
            float r9 = android.text.StaticLayout.Builder.m4888$$Nest$fgetmSpacingAdd(r11)
            r2 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            r0 = -1
            r10.mMaxLineHeight = r0
            r0 = 2147483647(0x7fffffff, float:NaN)
            r10.mMaximumVisibleLineCount = r0
            android.text.TextUtils$TruncateAt r0 = android.text.StaticLayout.Builder.m4875$$Nest$fgetmEllipsize(r11)
            if (r0 == 0) goto L71
            java.lang.CharSequence r0 = r10.getText()
            android.text.Layout$Ellipsizer r0 = (android.text.Layout.Ellipsizer) r0
            r0.mLayout = r10
            int r1 = android.text.StaticLayout.Builder.m4876$$Nest$fgetmEllipsizedWidth(r11)
            r0.mWidth = r1
            android.text.TextUtils$TruncateAt r1 = android.text.StaticLayout.Builder.m4875$$Nest$fgetmEllipsize(r11)
            r0.mMethod = r1
            int r1 = android.text.StaticLayout.Builder.m4876$$Nest$fgetmEllipsizedWidth(r11)
            r10.mEllipsizedWidth = r1
            r1 = 7
            r10.mColumns = r1
            goto L7a
        L71:
            r0 = 5
            r10.mColumns = r0
            int r0 = android.text.StaticLayout.Builder.m4893$$Nest$fgetmWidth(r11)
            r10.mEllipsizedWidth = r0
        L7a:
            java.lang.Class<android.text.Layout$Directions> r0 = android.text.Layout.Directions.class
            r1 = 2
            java.lang.Object[] r0 = com.android.internal.util.ArrayUtils.newUnpaddedArray(r0, r1)
            android.text.Layout$Directions[] r0 = (android.text.Layout.Directions[]) r0
            r10.mLineDirections = r0
            int r0 = r10.mColumns
            int r0 = r0 * r1
            int[] r0 = com.android.internal.util.ArrayUtils.newUnpaddedIntArray(r0)
            r10.mLines = r0
            int r0 = android.text.StaticLayout.Builder.m4885$$Nest$fgetmMaxLines(r11)
            r10.mMaximumVisibleLineCount = r0
            int[] r0 = android.text.StaticLayout.Builder.m4883$$Nest$fgetmLeftIndents(r11)
            r10.mLeftIndents = r0
            int[] r0 = android.text.StaticLayout.Builder.m4887$$Nest$fgetmRightIndents(r11)
            r10.mRightIndents = r0
            int r0 = android.text.StaticLayout.Builder.m4882$$Nest$fgetmJustificationMode(r11)
            r10.setJustificationMode(r0)
            boolean r0 = android.text.StaticLayout.Builder.m4881$$Nest$fgetmIncludePad(r11)
            boolean r1 = android.text.StaticLayout.Builder.m4881$$Nest$fgetmIncludePad(r11)
            r10.generate(r11, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.StaticLayout.<init>(android.text.StaticLayout$Builder):void");
    }

    private static int getBaseHyphenationFrequency(int frequency) {
        switch (frequency) {
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0352, code lost:
    
        if (r2 != android.text.TextUtils.TruncateAt.MARQUEE) goto L355;
     */
    /* JADX WARN: Removed duplicated region for block: B:173:0x069b A[LOOP:0: B:25:0x018f->B:173:0x069b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x068b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0305 A[LOOP:3: B:58:0x0303->B:59:0x0305, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0360 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x03d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void generate(android.text.StaticLayout.Builder r90, boolean r91, boolean r92) {
        /*
            Method dump skipped, instructions count: 1912
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.StaticLayout.generate(android.text.StaticLayout$Builder, boolean, boolean):void");
    }

    private int out(CharSequence text, int start, int end, int above, int below, int top, int bottom, int v, float spacingmult, float spacingadd, LineHeightSpan[] chooseHt, int[] chooseHtv, Paint.FontMetricsInt fm, boolean hasTab, int hyphenEdit, boolean needMultiply, MeasuredParagraph measured, int bufEnd, boolean includePad, boolean trackPad, boolean addLastLineLineSpacing, char[] chs, int widthStart, TextUtils.TruncateAt ellipsize, float ellipsisWidth, float textWidth, TextPaint paint, boolean moreChars) {
        int[] lines;
        int i;
        int j;
        int above2;
        int below2;
        int top2;
        int bottom2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean lastCharIsNewLine;
        int extra;
        int want;
        int i8;
        int j2;
        int j3 = this.mLineCount;
        int i9 = this.mColumns;
        int off = j3 * i9;
        int i10 = 1;
        int want2 = off + i9 + 1;
        int[] lines2 = this.mLines;
        int dir = measured.getParagraphDir();
        if (want2 < lines2.length) {
            lines = lines2;
        } else {
            int[] grow = ArrayUtils.newUnpaddedIntArray(GrowingArrayUtils.growSize(want2));
            System.arraycopy(lines2, 0, grow, 0, lines2.length);
            this.mLines = grow;
            lines = grow;
        }
        if (j3 >= this.mLineDirections.length) {
            Layout.Directions[] grow2 = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, GrowingArrayUtils.growSize(j3));
            Layout.Directions[] directionsArr = this.mLineDirections;
            System.arraycopy(directionsArr, 0, grow2, 0, directionsArr.length);
            this.mLineDirections = grow2;
        }
        if (chooseHt != null) {
            fm.ascent = above;
            fm.descent = below;
            fm.top = top;
            fm.bottom = bottom;
            int i11 = 0;
            while (i11 < chooseHt.length) {
                if (chooseHt[i11] instanceof LineHeightSpan.WithDensity) {
                    want = want2;
                    i8 = i10;
                    j2 = j3;
                    ((LineHeightSpan.WithDensity) chooseHt[i11]).chooseHeight(text, start, end, chooseHtv[i11], v, fm, paint);
                } else {
                    want = want2;
                    i8 = i10;
                    j2 = j3;
                    chooseHt[i11].chooseHeight(text, start, end, chooseHtv[i11], v, fm);
                }
                i11++;
                i10 = i8;
                want2 = want;
                j3 = j2;
            }
            i = i10;
            j = j3;
            above2 = fm.ascent;
            below2 = fm.descent;
            top2 = fm.top;
            bottom2 = fm.bottom;
        } else {
            i = 1;
            j = j3;
            above2 = above;
            below2 = below;
            top2 = top;
            bottom2 = bottom;
        }
        int i12 = j == 0 ? i : 0;
        int i13 = j + 1;
        int i14 = this.mMaximumVisibleLineCount;
        int i15 = i13 == i14 ? i : 0;
        if (ellipsize == null) {
            i2 = widthStart;
            i3 = bufEnd;
            i4 = 0;
        } else {
            boolean forceEllipsis = (moreChars && this.mLineCount + i == i14) ? i : 0;
            if (((((!(i14 == i && moreChars) && (i12 == 0 || moreChars)) || ellipsize == TextUtils.TruncateAt.MARQUEE) && (i12 != 0 || ((i15 == 0 && moreChars) || ellipsize != TextUtils.TruncateAt.END))) ? 0 : i) != 0) {
                i2 = widthStart;
                i3 = bufEnd;
                calculateEllipsis(start, end, measured, widthStart, ellipsisWidth, ellipsize, j, textWidth, paint, forceEllipsis, chs);
                i4 = 0;
            } else {
                i2 = widthStart;
                i3 = bufEnd;
                int[] iArr = this.mLines;
                int i16 = this.mColumns;
                i4 = 0;
                iArr[(i16 * j) + 5] = 0;
                iArr[(i16 * j) + 6] = 0;
            }
        }
        if (this.mEllipsized) {
            lastCharIsNewLine = true;
            i6 = i4;
            i7 = start;
        } else {
            if (i2 != i3 && i3 > 0) {
                if (text.charAt(i3 - 1) == '\n') {
                    i5 = 1;
                    int i17 = i5;
                    if (end != i3 && i17 == 0) {
                        lastCharIsNewLine = true;
                        i6 = i4;
                        i7 = start;
                    } else {
                        i6 = i4;
                        i7 = start;
                        if (i7 != i3 && i17 != 0) {
                            lastCharIsNewLine = true;
                        } else {
                            lastCharIsNewLine = false;
                        }
                    }
                }
            }
            i5 = i4;
            int i172 = i5;
            if (end != i3) {
            }
            i6 = i4;
            i7 = start;
            if (i7 != i3) {
            }
            lastCharIsNewLine = false;
        }
        if (i12 != 0) {
            if (trackPad) {
                this.mTopPadding = top2 - above2;
            }
            if (includePad) {
                above2 = top2;
            }
        }
        if (lastCharIsNewLine) {
            if (trackPad) {
                this.mBottomPadding = bottom2 - below2;
            }
            if (includePad) {
                below2 = bottom2;
            }
        }
        if (needMultiply && (addLastLineLineSpacing || !lastCharIsNewLine)) {
            double ex = ((below2 - above2) * (spacingmult - 1.0f)) + spacingadd;
            if (ex >= SContextConstants.ENVIRONMENT_VALUE_UNKNOWN) {
                extra = (int) (EXTRA_ROUNDING + ex);
            } else {
                extra = -((int) ((-ex) + EXTRA_ROUNDING));
            }
        } else {
            extra = 0;
        }
        lines[off + 0] = i7;
        lines[off + 1] = v;
        lines[off + 2] = below2 + extra;
        lines[off + 3] = extra;
        boolean z = this.mEllipsized;
        if (!z && i15 != 0) {
            int maxLineBelow = includePad ? bottom2 : below2;
            this.mMaxLineHeight = v + (maxLineBelow - above2);
        }
        int maxLineBelow2 = below2 - above2;
        int v2 = v + maxLineBelow2 + extra;
        int i18 = this.mColumns;
        lines[off + i18 + i6] = end;
        lines[off + i18 + 1] = v2;
        int i19 = off + 0;
        lines[i19] = lines[i19] | (hasTab ? 536870912 : i6);
        if (!z) {
            lines[off + 4] = hyphenEdit;
        } else if (ellipsize == TextUtils.TruncateAt.START) {
            lines[off + 4] = packHyphenEdit(i6, unpackEndHyphenEdit(hyphenEdit));
        } else if (ellipsize == TextUtils.TruncateAt.END) {
            lines[off + 4] = packHyphenEdit(unpackStartHyphenEdit(hyphenEdit), i6);
        } else {
            lines[off + 4] = packHyphenEdit(i6, i6);
        }
        int i20 = off + 0;
        lines[i20] = lines[i20] | (dir << 30);
        this.mLineDirections[j] = measured.getDirections(i7 - i2, end - i2);
        this.mLineCount++;
        return v2;
    }

    private void calculateEllipsis(int lineStart, int lineEnd, MeasuredParagraph measured, int widthStart, float avail, TextUtils.TruncateAt where, int line, float textWidth, TextPaint paint, boolean forceEllipsis, char[] chs) {
        float avail2 = avail - getTotalInsets(line);
        if (textWidth <= avail2 && !forceEllipsis) {
            int[] iArr = this.mLines;
            int i = this.mColumns;
            iArr[(i * line) + 5] = 0;
            iArr[(i * line) + 6] = 0;
            return;
        }
        float ellipsisWidth = paint.measureText(TextUtils.getEllipsisString(where));
        int ellipsisStart = 0;
        int ellipsisCount = 0;
        int len = lineEnd - lineStart;
        if (where == TextUtils.TruncateAt.START) {
            if (this.mMaximumVisibleLineCount == 1) {
                float sum = 0.0f;
                int i2 = len;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    float w = measured.getCharWidthAt(((i2 - 1) + lineStart) - widthStart);
                    if (w + sum + ellipsisWidth > avail2) {
                        while (i2 < len && measured.getCharWidthAt((i2 + lineStart) - widthStart) == 0.0f) {
                            i2++;
                        }
                    } else {
                        sum += w;
                        i2--;
                    }
                }
                ellipsisStart = 0;
                ellipsisCount = i2;
            } else if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Start Ellipsis only supported with one line");
            }
        } else if (where == TextUtils.TruncateAt.END || where == TextUtils.TruncateAt.MARQUEE || where == TextUtils.TruncateAt.END_SMALL) {
            float sum2 = 0.0f;
            int i3 = 0;
            while (i3 < len) {
                float w2 = measured.getCharWidthAt((i3 + lineStart) - widthStart);
                if (w2 + sum2 + ellipsisWidth > avail2) {
                    break;
                }
                sum2 += w2;
                i3++;
            }
            ellipsisStart = i3;
            ellipsisCount = len - i3;
            if (forceEllipsis && ellipsisCount == 0 && len > 0) {
                ellipsisStart = len - 1;
                while (ellipsisStart > 0 && measured.getCharWidthAt((ellipsisStart + lineStart) - widthStart) == 0.0f && chs != null && chs[(ellipsisStart + lineStart) - widthStart] != '\n') {
                    ellipsisStart--;
                }
                ellipsisCount = len - ellipsisStart;
            }
        } else if (this.mMaximumVisibleLineCount == 1) {
            float lsum = 0.0f;
            float rsum = 0.0f;
            int right = len;
            float ravail = (avail2 - ellipsisWidth) / 2.0f;
            while (true) {
                if (right <= 0) {
                    break;
                }
                float w3 = measured.getCharWidthAt(((right - 1) + lineStart) - widthStart);
                if (w3 + rsum > ravail) {
                    while (right < len && measured.getCharWidthAt((right + lineStart) - widthStart) == 0.0f) {
                        right++;
                    }
                } else {
                    rsum += w3;
                    right--;
                }
            }
            float lavail = (avail2 - ellipsisWidth) - rsum;
            int left = 0;
            while (left < right) {
                float w4 = measured.getCharWidthAt((left + lineStart) - widthStart);
                if (w4 + lsum > lavail) {
                    break;
                }
                lsum += w4;
                left++;
            }
            ellipsisStart = left;
            ellipsisCount = right - left;
        } else if (Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "Middle Ellipsis only supported with one line");
        }
        this.mEllipsized = true;
        int[] iArr2 = this.mLines;
        int i4 = this.mColumns;
        iArr2[(i4 * line) + 5] = ellipsisStart;
        iArr2[(i4 * line) + 6] = ellipsisCount;
    }

    private float getTotalInsets(int line) {
        int totalIndent = 0;
        int[] iArr = this.mLeftIndents;
        if (iArr != null) {
            totalIndent = iArr[Math.min(line, iArr.length - 1)];
        }
        int[] iArr2 = this.mRightIndents;
        if (iArr2 != null) {
            totalIndent += iArr2[Math.min(line, iArr2.length - 1)];
        }
        return totalIndent;
    }

    @Override // android.text.Layout
    public int getLineForVertical(int vertical) {
        int high = this.mLineCount;
        int low = -1;
        int[] lines = this.mLines;
        while (high - low > 1) {
            int guess = (high + low) >> 1;
            if (lines[(this.mColumns * guess) + 1] > vertical) {
                high = guess;
            } else {
                low = guess;
            }
        }
        if (low < 0) {
            return 0;
        }
        return low;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return this.mLineCount;
    }

    @Override // android.text.Layout
    public int getLineTop(int line) {
        return this.mLines[(this.mColumns * line) + 1];
    }

    @Override // android.text.Layout
    public int getLineExtra(int line) {
        return this.mLines[(this.mColumns * line) + 3];
    }

    @Override // android.text.Layout
    public int getLineDescent(int line) {
        return this.mLines[(this.mColumns * line) + 2];
    }

    @Override // android.text.Layout
    public int getLineStart(int line) {
        return this.mLines[(this.mColumns * line) + 0] & 536870911;
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int line) {
        return this.mLines[(this.mColumns * line) + 0] >> 30;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int line) {
        return (this.mLines[(this.mColumns * line) + 0] & 536870912) != 0;
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int line) {
        if (line > getLineCount()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mLineDirections[line];
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    public static int packHyphenEdit(int start, int end) {
        return (start << 3) | end;
    }

    public static int unpackStartHyphenEdit(int packedHyphenEdit) {
        return (packedHyphenEdit & 24) >> 3;
    }

    public static int unpackEndHyphenEdit(int packedHyphenEdit) {
        return packedHyphenEdit & 7;
    }

    @Override // android.text.Layout
    public int getStartHyphenEdit(int lineNumber) {
        return unpackStartHyphenEdit(this.mLines[(this.mColumns * lineNumber) + 4] & 255);
    }

    @Override // android.text.Layout
    public int getEndHyphenEdit(int lineNumber) {
        return unpackEndHyphenEdit(this.mLines[(this.mColumns * lineNumber) + 4] & 255);
    }

    @Override // android.text.Layout
    public int getIndentAdjust(int line, Layout.Alignment align) {
        if (align == Layout.Alignment.ALIGN_LEFT) {
            int[] iArr = this.mLeftIndents;
            if (iArr == null) {
                return 0;
            }
            return iArr[Math.min(line, iArr.length - 1)];
        }
        if (align == Layout.Alignment.ALIGN_RIGHT) {
            int[] iArr2 = this.mRightIndents;
            if (iArr2 == null) {
                return 0;
            }
            return -iArr2[Math.min(line, iArr2.length - 1)];
        }
        if (align == Layout.Alignment.ALIGN_CENTER) {
            int left = 0;
            int[] iArr3 = this.mLeftIndents;
            if (iArr3 != null) {
                left = iArr3[Math.min(line, iArr3.length - 1)];
            }
            int right = 0;
            int[] iArr4 = this.mRightIndents;
            if (iArr4 != null) {
                right = iArr4[Math.min(line, iArr4.length - 1)];
            }
            return (left - right) >> 1;
        }
        throw new AssertionError("unhandled alignment " + align);
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int line) {
        int i = this.mColumns;
        if (i < 7) {
            return 0;
        }
        return this.mLines[(i * line) + 6];
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int line) {
        int i = this.mColumns;
        if (i < 7) {
            return 0;
        }
        return this.mLines[(i * line) + 5];
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public boolean isFallbackLineSpacingEnabled() {
        return this.mFallbackLineSpacing;
    }

    @Override // android.text.Layout
    public int getHeight(boolean cap) {
        int i;
        if (cap && this.mLineCount > this.mMaximumVisibleLineCount && this.mMaxLineHeight == -1 && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "maxLineHeight should not be -1.  maxLines:" + this.mMaximumVisibleLineCount + " lineCount:" + this.mLineCount);
        }
        return (!cap || this.mLineCount <= this.mMaximumVisibleLineCount || (i = this.mMaxLineHeight) == -1) ? super.getHeight() : i;
    }

    /* loaded from: classes3.dex */
    static class LineBreaks {
        private static final int INITIAL_SIZE = 16;
        public int[] breaks = new int[16];
        public float[] widths = new float[16];
        public float[] ascents = new float[16];
        public float[] descents = new float[16];
        public int[] flags = new int[16];

        LineBreaks() {
        }
    }
}
