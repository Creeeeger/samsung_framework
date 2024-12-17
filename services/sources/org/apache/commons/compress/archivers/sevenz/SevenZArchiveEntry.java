package org.apache.commons.compress.archivers.sevenz;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class SevenZArchiveEntry {
    public Iterable contentMethods;
    public long crc;
    public boolean hasAccessDate;
    public boolean hasCrc;
    public boolean hasCreationDate;
    public boolean hasLastModifiedDate;
    public boolean hasStream;
    public boolean hasWindowsAttributes;
    public String name;
    public long size;

    public final void setContentMethods(Iterable iterable) {
        if (iterable == null) {
            this.contentMethods = null;
            return;
        }
        LinkedList linkedList = new LinkedList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            linkedList.addLast((SevenZMethodConfiguration) it.next());
        }
        this.contentMethods = Collections.unmodifiableList(linkedList);
    }
}
