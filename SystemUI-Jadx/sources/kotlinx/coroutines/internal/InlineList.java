package kotlinx.coroutines.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class InlineList {
    public final Object holder;

    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m2588plusFjFbRPM(Object obj, LockFreeLinkedListNode lockFreeLinkedListNode) {
        if (obj == null) {
            return lockFreeLinkedListNode;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(lockFreeLinkedListNode);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(lockFreeLinkedListNode);
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof InlineList)) {
            return false;
        }
        if (!Intrinsics.areEqual(this.holder, ((InlineList) obj).holder)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.holder;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "InlineList(holder=" + this.holder + ")";
    }
}
