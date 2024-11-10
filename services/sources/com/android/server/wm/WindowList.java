package com.android.server.wm;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class WindowList extends ArrayList {
    public void addFirst(Object obj) {
        add(0, obj);
    }

    public Object peekLast() {
        if (size() > 0) {
            return get(size() - 1);
        }
        return null;
    }

    public Object peekFirst() {
        if (size() > 0) {
            return get(0);
        }
        return null;
    }
}
