package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SetBuilder {
    public final List contributions;

    private SetBuilder(int i) {
        this.contributions = new ArrayList(i);
    }

    public static SetBuilder newSetBuilder(int i) {
        return new SetBuilder(i);
    }

    public final void add(Object obj) {
        List list = this.contributions;
        if (obj != null) {
            ((ArrayList) list).add(obj);
            return;
        }
        throw new NullPointerException("Set contributions cannot be null");
    }

    public final void addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Set contributions cannot be null");
            }
        }
        ((ArrayList) this.contributions).addAll(collection);
    }

    public final Set build() {
        List list = this.contributions;
        if (((ArrayList) list).isEmpty()) {
            return Collections.emptySet();
        }
        if (((ArrayList) list).size() == 1) {
            return Collections.singleton(((ArrayList) list).get(0));
        }
        return Collections.unmodifiableSet(new HashSet(list));
    }
}
