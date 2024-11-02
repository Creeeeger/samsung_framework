package kotlin.text;

import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class StringsKt__IndentKt extends StringsKt__AppendableKt {
    public static final String trimIndent(String str) {
        int i;
        boolean z;
        List lines = StringsKt__StringsKt.lines(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (true ^ StringsKt__StringsJVMKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length = str2.length();
            while (true) {
                if (i2 < length) {
                    if (!CharsKt__CharJVMKt.isWhitespace(str2.charAt(i2))) {
                        break;
                    }
                    i2++;
                } else {
                    i2 = -1;
                    break;
                }
            }
            if (i2 == -1) {
                i2 = str2.length();
            }
            arrayList2.add(Integer.valueOf(i2));
        }
        Integer num = (Integer) CollectionsKt___CollectionsKt.minOrNull(arrayList2);
        if (num != null) {
            i = num.intValue();
        } else {
            i = 0;
        }
        int size = (lines.size() * 0) + str.length();
        StringsKt__IndentKt$getIndentFunction$1 stringsKt__IndentKt$getIndentFunction$1 = StringsKt__IndentKt$getIndentFunction$1.INSTANCE;
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
        ArrayList arrayList3 = new ArrayList();
        int i3 = 0;
        for (Object obj2 : lines) {
            int i4 = i3 + 1;
            String str3 = null;
            if (i3 >= 0) {
                String str4 = (String) obj2;
                if ((i3 != 0 && i3 != lastIndex) || !StringsKt__StringsJVMKt.isBlank(str4)) {
                    if (i >= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        int length2 = str4.length();
                        if (i <= length2) {
                            length2 = i;
                        }
                        str3 = (String) stringsKt__IndentKt$getIndentFunction$1.invoke(str4.substring(length2));
                        if (str3 == null) {
                            str3 = str4;
                        }
                    } else {
                        throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Requested character count ", i, " is less than zero.").toString());
                    }
                }
                if (str3 != null) {
                    arrayList3.add(str3);
                }
                i3 = i4;
            } else {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder(size);
        CollectionsKt___CollectionsKt.joinTo$default(arrayList3, sb, "\n");
        return sb.toString();
    }

    public static String trimMargin$default(String str) {
        if (!StringsKt__StringsJVMKt.isBlank("|")) {
            List lines = StringsKt__StringsKt.lines(str);
            int size = (lines.size() * 0) + str.length();
            StringsKt__IndentKt$getIndentFunction$1 stringsKt__IndentKt$getIndentFunction$1 = StringsKt__IndentKt$getIndentFunction$1.INSTANCE;
            int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(lines);
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : lines) {
                int i2 = i + 1;
                String str2 = null;
                if (i >= 0) {
                    String str3 = (String) obj;
                    if ((i != 0 && i != lastIndex) || !StringsKt__StringsJVMKt.isBlank(str3)) {
                        int length = str3.length();
                        int i3 = 0;
                        while (true) {
                            if (i3 < length) {
                                if (!CharsKt__CharJVMKt.isWhitespace(str3.charAt(i3))) {
                                    break;
                                }
                                i3++;
                            } else {
                                i3 = -1;
                                break;
                            }
                        }
                        if (i3 != -1 && str3.startsWith("|", i3)) {
                            str2 = str3.substring("|".length() + i3);
                        }
                        if (str2 == null || (str2 = (String) stringsKt__IndentKt$getIndentFunction$1.invoke(str2)) == null) {
                            str2 = str3;
                        }
                    }
                    if (str2 != null) {
                        arrayList.add(str2);
                    }
                    i = i2;
                } else {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                    throw null;
                }
            }
            StringBuilder sb = new StringBuilder(size);
            CollectionsKt___CollectionsKt.joinTo$default(arrayList, sb, "\n");
            return sb.toString();
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }
}
