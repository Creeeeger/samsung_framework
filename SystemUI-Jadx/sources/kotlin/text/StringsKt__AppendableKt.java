package kotlin.text;

import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class StringsKt__AppendableKt {
    public static final void appendElement(Appendable appendable, Object obj, Function1 function1) {
        boolean z;
        if (function1 != null) {
            ((StringBuilder) appendable).append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof CharSequence;
        }
        if (z) {
            ((StringBuilder) appendable).append((CharSequence) obj);
        } else if (obj instanceof Character) {
            ((StringBuilder) appendable).append(((Character) obj).charValue());
        } else {
            ((StringBuilder) appendable).append((CharSequence) String.valueOf(obj));
        }
    }
}
