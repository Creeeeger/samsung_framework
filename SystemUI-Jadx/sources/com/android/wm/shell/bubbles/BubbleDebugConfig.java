package com.android.wm.shell.bubbles;

import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleDebugConfig {
    /* JADX WARN: Multi-variable type inference failed */
    public static String formatBubblesString(List list, BubbleViewProvider bubbleViewProvider) {
        byte b;
        String str;
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Bubble bubble = (Bubble) it.next();
            if (bubble == null) {
                sb.append("   <null> !!!!!\n");
            } else {
                if (bubbleViewProvider != null && bubbleViewProvider.getKey() != "Overflow" && bubble == bubbleViewProvider) {
                    b = true;
                } else {
                    b = false;
                }
                if (b != false) {
                    str = "=>";
                } else {
                    str = "  ";
                }
                sb.append(String.format("%s Bubble{act=%12d, showInShade=%d, key=%s}\n", str, Long.valueOf(bubble.getLastActivity()), Integer.valueOf(bubble.showInShade() ? 1 : 0), bubble.mKey));
            }
        }
        return sb.toString();
    }
}
