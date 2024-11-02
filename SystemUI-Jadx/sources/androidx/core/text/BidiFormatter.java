package androidx.core.text;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BidiFormatter {
    public static final BidiFormatter DEFAULT_LTR_INSTANCE;
    public static final BidiFormatter DEFAULT_RTL_INSTANCE;
    public static final TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal DEFAULT_TEXT_DIRECTION_HEURISTIC;
    public static final String LRM_STRING;
    public static final String RLM_STRING;
    public final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    public final int mFlags;
    public final boolean mIsRtlContext;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DirectionalityEstimator {
        public static final byte[] DIR_TYPE_CACHE = new byte[1792];
        public int charIndex;
        public final boolean isHtml;
        public char lastChar;
        public final int length;
        public final CharSequence text;

        static {
            for (int i = 0; i < 1792; i++) {
                DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
            }
        }

        public DirectionalityEstimator(CharSequence charSequence, boolean z) {
            this.text = charSequence;
            this.isHtml = z;
            this.length = charSequence.length();
        }

        public final byte dirTypeBackward() {
            byte directionality;
            char charAt;
            char charAt2;
            int i = this.charIndex - 1;
            CharSequence charSequence = this.text;
            char charAt3 = charSequence.charAt(i);
            this.lastChar = charAt3;
            if (Character.isLowSurrogate(charAt3)) {
                int codePointBefore = Character.codePointBefore(charSequence, this.charIndex);
                this.charIndex -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.charIndex--;
            char c = this.lastChar;
            if (c < 1792) {
                directionality = DIR_TYPE_CACHE[c];
            } else {
                directionality = Character.getDirectionality(c);
            }
            if (this.isHtml) {
                char c2 = this.lastChar;
                if (c2 == '>') {
                    int i2 = this.charIndex;
                    while (true) {
                        int i3 = this.charIndex;
                        if (i3 <= 0) {
                            break;
                        }
                        int i4 = i3 - 1;
                        this.charIndex = i4;
                        char charAt4 = charSequence.charAt(i4);
                        this.lastChar = charAt4;
                        if (charAt4 == '<') {
                            break;
                        }
                        if (charAt4 == '>') {
                            break;
                        }
                        if (charAt4 == '\"' || charAt4 == '\'') {
                            do {
                                int i5 = this.charIndex;
                                if (i5 > 0) {
                                    int i6 = i5 - 1;
                                    this.charIndex = i6;
                                    charAt2 = charSequence.charAt(i6);
                                    this.lastChar = charAt2;
                                }
                            } while (charAt2 != charAt4);
                        }
                    }
                    this.charIndex = i2;
                    this.lastChar = '>';
                    return (byte) 13;
                }
                if (c2 == ';') {
                    int i7 = this.charIndex;
                    do {
                        int i8 = this.charIndex;
                        if (i8 <= 0) {
                            break;
                        }
                        int i9 = i8 - 1;
                        this.charIndex = i9;
                        charAt = charSequence.charAt(i9);
                        this.lastChar = charAt;
                        if (charAt == '&') {
                            return (byte) 12;
                        }
                    } while (charAt != ';');
                    this.charIndex = i7;
                    this.lastChar = ';';
                    return (byte) 13;
                }
                return directionality;
            }
            return directionality;
        }
    }

    static {
        TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal textDirectionHeuristicInternal = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        DEFAULT_TEXT_DIRECTION_HEURISTIC = textDirectionHeuristicInternal;
        LRM_STRING = Character.toString((char) 8206);
        RLM_STRING = Character.toString((char) 8207);
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, textDirectionHeuristicInternal);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, textDirectionHeuristicInternal);
    }

    public BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mIsRtlContext = z;
        this.mFlags = i;
        this.mDefaultTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x00e5, code lost:
    
        if (r13 != r3) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a2, code lost:
    
        r4 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x008d, code lost:
    
        if (r9 == '&') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x008f, code lost:
    
        r4 = r0.charIndex;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0091, code lost:
    
        if (r4 >= r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0093, code lost:
    
        r0.charIndex = r4 + 1;
        r4 = r8.charAt(r4);
        r0.lastChar = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x009f, code lost:
    
        if (r4 == ';') goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00cb, code lost:
    
        if (r13 != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00ce, code lost:
    
        if (r2 == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00ec, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00d4, code lost:
    
        if (r0.charIndex <= 0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00da, code lost:
    
        switch(r0.dirTypeBackward()) {
            case 14: goto L107;
            case 15: goto L107;
            case 16: goto L106;
            case 17: goto L106;
            case 18: goto L105;
            default: goto L111;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00de, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00e1, code lost:
    
        if (r13 != r3) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00e9, code lost:
    
        r3 = r3 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getEntryDir(java.lang.CharSequence r13) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.BidiFormatter.getEntryDir(java.lang.CharSequence):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0042, code lost:
    
        return 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x0021. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getExitDir(java.lang.CharSequence r7) {
        /*
            androidx.core.text.BidiFormatter$DirectionalityEstimator r0 = new androidx.core.text.BidiFormatter$DirectionalityEstimator
            r1 = 0
            r0.<init>(r7, r1)
            int r7 = r0.length
            r0.charIndex = r7
            r7 = r1
        Lb:
            r2 = r7
        Lc:
            int r3 = r0.charIndex
            if (r3 <= 0) goto L42
            byte r3 = r0.dirTypeBackward()
            r4 = -1
            if (r3 == 0) goto L3a
            r5 = 1
            if (r3 == r5) goto L33
            r6 = 2
            if (r3 == r6) goto L33
            r6 = 9
            if (r3 == r6) goto Lc
            switch(r3) {
                case 14: goto L2d;
                case 15: goto L2d;
                case 16: goto L2a;
                case 17: goto L2a;
                case 18: goto L27;
                default: goto L24;
            }
        L24:
            if (r7 != 0) goto Lc
            goto L40
        L27:
            int r2 = r2 + 1
            goto Lc
        L2a:
            if (r7 != r2) goto L30
            goto L35
        L2d:
            if (r7 != r2) goto L30
            goto L3c
        L30:
            int r2 = r2 + (-1)
            goto Lc
        L33:
            if (r2 != 0) goto L37
        L35:
            r1 = r5
            goto L42
        L37:
            if (r7 != 0) goto Lc
            goto L40
        L3a:
            if (r2 != 0) goto L3e
        L3c:
            r1 = r4
            goto L42
        L3e:
            if (r7 != 0) goto Lc
        L40:
            r7 = r2
            goto Lb
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.BidiFormatter.getExitDir(java.lang.CharSequence):int");
    }

    public static BidiFormatter getInstance() {
        Builder builder = new Builder();
        int i = builder.mFlags;
        if (i == 2 && builder.mTextDirectionHeuristicCompat == DEFAULT_TEXT_DIRECTION_HEURISTIC) {
            if (builder.mIsRtlContext) {
                return DEFAULT_RTL_INSTANCE;
            }
            return DEFAULT_LTR_INSTANCE;
        }
        return new BidiFormatter(builder.mIsRtlContext, i, builder.mTextDirectionHeuristicCompat);
    }

    public final String unicodeWrap(String str) {
        if (str == null) {
            return null;
        }
        return ((SpannableStringBuilder) unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat)).toString();
    }

    public final CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        String str;
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) textDirectionHeuristicCompat).isRtl(charSequence.length(), charSequence);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean z = (this.mFlags & 2) != 0;
        String str2 = RLM_STRING;
        String str3 = LRM_STRING;
        boolean z2 = this.mIsRtlContext;
        if (z) {
            boolean isRtl2 = (isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR).isRtl(charSequence.length(), charSequence);
            if (z2 || !(isRtl2 || getEntryDir(charSequence) == 1)) {
                str = (!z2 || (isRtl2 && getEntryDir(charSequence) != -1)) ? "" : str2;
            } else {
                str = str3;
            }
            spannableStringBuilder.append((CharSequence) str);
        }
        if (isRtl != z2) {
            spannableStringBuilder.append(isRtl ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean isRtl3 = (isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR).isRtl(charSequence.length(), charSequence);
        if (!z2 && (isRtl3 || getExitDir(charSequence) == 1)) {
            str2 = str3;
        } else if (!z2 || (isRtl3 && getExitDir(charSequence) != -1)) {
            str2 = "";
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public int mFlags;
        public boolean mIsRtlContext;
        public TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal mTextDirectionHeuristicCompat;

        public Builder() {
            Locale locale = Locale.getDefault();
            TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal textDirectionHeuristicInternal = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            int i = TextUtilsCompat.$r8$clinit;
            this.mIsRtlContext = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public Builder(boolean z) {
            this.mIsRtlContext = z;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public Builder(Locale locale) {
            TextDirectionHeuristicsCompat.TextDirectionHeuristicInternal textDirectionHeuristicInternal = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            int i = TextUtilsCompat.$r8$clinit;
            this.mIsRtlContext = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }
    }
}
