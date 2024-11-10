package org.apache.commons.compress.archivers.sevenz;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public class SevenZArchiveEntry {
    public long accessDate;
    public Iterable contentMethods;
    public long crc;
    public long creationDate;
    public boolean hasAccessDate;
    public boolean hasCrc;
    public boolean hasCreationDate;
    public boolean hasLastModifiedDate;
    public boolean hasStream;
    public boolean hasWindowsAttributes;
    public boolean isAntiItem;
    public boolean isDirectory;
    public long lastModifiedDate;
    public String name;
    public long size;
    public int windowsAttributes;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public boolean hasStream() {
        return this.hasStream;
    }

    public void setHasStream(boolean z) {
        this.hasStream = z;
    }

    public void setDirectory(boolean z) {
        this.isDirectory = z;
    }

    public void setAntiItem(boolean z) {
        this.isAntiItem = z;
    }

    public boolean getHasCreationDate() {
        return this.hasCreationDate;
    }

    public void setHasCreationDate(boolean z) {
        this.hasCreationDate = z;
    }

    public void setCreationDate(long j) {
        this.creationDate = j;
    }

    public boolean getHasLastModifiedDate() {
        return this.hasLastModifiedDate;
    }

    public void setHasLastModifiedDate(boolean z) {
        this.hasLastModifiedDate = z;
    }

    public void setLastModifiedDate(long j) {
        this.lastModifiedDate = j;
    }

    public boolean getHasAccessDate() {
        return this.hasAccessDate;
    }

    public void setHasAccessDate(boolean z) {
        this.hasAccessDate = z;
    }

    public void setAccessDate(long j) {
        this.accessDate = j;
    }

    public boolean getHasWindowsAttributes() {
        return this.hasWindowsAttributes;
    }

    public void setHasWindowsAttributes(boolean z) {
        this.hasWindowsAttributes = z;
    }

    public void setWindowsAttributes(int i) {
        this.windowsAttributes = i;
    }

    public boolean getHasCrc() {
        return this.hasCrc;
    }

    public void setHasCrc(boolean z) {
        this.hasCrc = z;
    }

    public long getCrcValue() {
        return this.crc;
    }

    public void setCrcValue(long j) {
        this.crc = j;
    }

    public long getSize() {
        return this.size;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setContentMethods(Iterable iterable) {
        if (iterable != null) {
            LinkedList linkedList = new LinkedList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                linkedList.addLast((SevenZMethodConfiguration) it.next());
            }
            this.contentMethods = Collections.unmodifiableList(linkedList);
            return;
        }
        this.contentMethods = null;
    }

    public Iterable getContentMethods() {
        return this.contentMethods;
    }
}
