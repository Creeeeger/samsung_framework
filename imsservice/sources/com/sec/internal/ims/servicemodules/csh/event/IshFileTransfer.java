package com.sec.internal.ims.servicemodules.csh.event;

import com.sec.internal.helper.Preconditions;

/* loaded from: classes.dex */
public class IshFileTransfer extends IshFile {
    private long mTransmittedBytes;

    public IshFileTransfer(String str, int i, String str2) {
        Preconditions.checkNotNull(str, "path can't be NULL");
        Preconditions.checkState(i >= 0);
        Preconditions.checkNotNull(str2, "mimeType can't be NULL");
        this.mTransmittedBytes = 0L;
        this.mPath = str;
        this.mSize = i;
        this.mMimeType = str2;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IshFile
    public String getPath() {
        return this.mPath;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IshFile
    public long getSize() {
        return this.mSize;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.IshFile
    public String toString() {
        return "IshFileTransfer [mTransmittedBytes=" + this.mTransmittedBytes + ", mPath=" + this.mPath + ", mSize=" + this.mSize + ", mMimeType=" + this.mMimeType + "]";
    }
}
