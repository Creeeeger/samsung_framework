package com.android.systemui.statusbar.notification.collection.render;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NodeControllerKt {
    public static final void treeSpecToStrHelper(NodeSpec nodeSpec, StringBuilder sb, String str) {
        NodeSpecImpl nodeSpecImpl = (NodeSpecImpl) nodeSpec;
        sb.append(str + "{" + nodeSpecImpl.controller.getNodeLabel() + "}\n");
        ArrayList arrayList = (ArrayList) nodeSpecImpl.children;
        if (!arrayList.isEmpty()) {
            String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                treeSpecToStrHelper((NodeSpec) it.next(), sb, m);
            }
        }
    }
}
