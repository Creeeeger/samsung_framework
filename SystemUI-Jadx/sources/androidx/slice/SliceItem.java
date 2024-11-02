package androidx.slice;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AlignmentSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Pair;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceItem extends CustomVersionedParcelable {
    public String mFormat;
    public String[] mHints;
    public SliceItemHolder mHolder;
    public Object mObj;
    public CharSequence mSanitizedText;
    public String mSubType;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ActionHandler {
    }

    public SliceItem(Object obj, String str, String str2, String[] strArr) {
        this.mHints = strArr;
        this.mFormat = str;
        this.mSubType = str2;
        this.mObj = obj;
    }

    public static void fixSpannableText(Spannable spannable) {
        boolean z;
        Object obj;
        for (Object obj2 : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (!(obj2 instanceof AlignmentSpan) && !(obj2 instanceof ForegroundColorSpan) && !(obj2 instanceof RelativeSizeSpan) && !(obj2 instanceof StyleSpan)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                obj = obj2;
            } else {
                obj = null;
            }
            if (obj != obj2) {
                if (obj != null) {
                    spannable.setSpan(obj, spannable.getSpanStart(obj2), spannable.getSpanEnd(obj2), spannable.getSpanFlags(obj2));
                }
                spannable.removeSpan(obj2);
            }
        }
    }

    public final void addHint() {
        Object[] objArr;
        String[] strArr = this.mHints;
        int i = 0;
        if (strArr != null) {
            int length = strArr.length;
            objArr = (Object[]) Array.newInstance((Class<?>) String.class, length + 1);
            System.arraycopy(strArr, 0, objArr, 0, length);
            i = length;
        } else {
            objArr = (Object[]) Array.newInstance((Class<?>) String.class, 1);
        }
        objArr[i] = "partial";
        this.mHints = (String[]) objArr;
    }

    public final void fireActionInternal(Context context, Intent intent) {
        Object obj = ((Pair) this.mObj).first;
        if (obj instanceof PendingIntent) {
            ((PendingIntent) obj).send(context, 0, intent, null, null);
        } else {
            ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
            throw null;
        }
    }

    public final PendingIntent getAction() {
        Object obj = ((Pair) this.mObj).first;
        if (obj instanceof PendingIntent) {
            return (PendingIntent) obj;
        }
        return null;
    }

    public final List getHints() {
        return Arrays.asList(this.mHints);
    }

    public final int getInt() {
        return ((Integer) this.mObj).intValue();
    }

    public final long getLong() {
        return ((Long) this.mObj).longValue();
    }

    public final CharSequence getSanitizedText() {
        if (this.mSanitizedText == null) {
            CharSequence charSequence = (CharSequence) this.mObj;
            if (charSequence instanceof Spannable) {
                fixSpannableText((Spannable) charSequence);
            } else if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                boolean z = false;
                Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
                int length = spans.length;
                int i = 0;
                while (true) {
                    boolean z2 = true;
                    if (i < length) {
                        Object obj = spans[i];
                        if (!(obj instanceof AlignmentSpan) && !(obj instanceof ForegroundColorSpan) && !(obj instanceof RelativeSizeSpan) && !(obj instanceof StyleSpan)) {
                            z2 = false;
                        }
                        if (!z2) {
                            break;
                        }
                        i++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    SpannableString spannableString = new SpannableString(charSequence);
                    fixSpannableText(spannableString);
                    charSequence = spannableString;
                }
            }
            this.mSanitizedText = charSequence;
        }
        return this.mSanitizedText;
    }

    public final Slice getSlice() {
        if ("action".equals(this.mFormat)) {
            return (Slice) ((Pair) this.mObj).second;
        }
        return (Slice) this.mObj;
    }

    public final boolean hasAnyHints(String... strArr) {
        for (String str : strArr) {
            if (ArrayUtils.contains(this.mHints, str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasHint(String str) {
        return ArrayUtils.contains(this.mHints, str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01dc, code lost:
    
        if (r14.equals("long") == false) goto L97;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String toString(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.SliceItem.toString(java.lang.String):java.lang.String");
    }

    public SliceItem(Object obj, String str, String str2, List<String> list) {
        this(obj, str, str2, (String[]) list.toArray(new String[list.size()]));
    }

    public SliceItem() {
        this.mHints = Slice.NO_HINTS;
        this.mFormat = "text";
        this.mSubType = null;
    }

    public SliceItem(PendingIntent pendingIntent, Slice slice, String str, String str2, String[] strArr) {
        this(new Pair(pendingIntent, slice), str, str2, strArr);
    }

    public SliceItem(ActionHandler actionHandler, Slice slice, String str, String str2, String[] strArr) {
        this(new Pair(actionHandler, slice), str, str2, strArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public SliceItem(Bundle bundle) {
        char c;
        Object pair;
        this.mHints = Slice.NO_HINTS;
        this.mFormat = "text";
        this.mSubType = null;
        this.mHints = bundle.getStringArray("hints");
        this.mFormat = bundle.getString("format");
        this.mSubType = bundle.getString("subtype");
        String str = this.mFormat;
        str.getClass();
        switch (str.hashCode()) {
            case -1422950858:
                if (str.equals("action")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1377881982:
                if (str.equals("bundle")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 104431:
                if (str.equals("int")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3327612:
                if (str.equals("long")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 100313435:
                if (str.equals("image")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 100358090:
                if (str.equals("input")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                pair = new Pair(bundle.getParcelable("obj"), new Slice(bundle.getBundle("obj_2")));
                break;
            case 1:
                pair = bundle.getBundle("obj");
                break;
            case 2:
                pair = Integer.valueOf(bundle.getInt("obj"));
                break;
            case 3:
                pair = Long.valueOf(bundle.getLong("obj"));
                break;
            case 4:
                pair = bundle.getCharSequence("obj");
                break;
            case 5:
                pair = IconCompat.createFromBundle(bundle.getBundle("obj"));
                break;
            case 6:
                pair = bundle.getParcelable("obj");
                break;
            case 7:
                pair = new Slice(bundle.getBundle("obj"));
                break;
            default:
                throw new RuntimeException("Unsupported type ".concat(str));
        }
        this.mObj = pair;
    }

    public final String toString() {
        return toString("");
    }
}
