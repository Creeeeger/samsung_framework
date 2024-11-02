package com.android.framework.protobuf.nano;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class UnknownFieldData {
    final byte[] bytes;
    final int tag;

    public UnknownFieldData(int tag, byte[] bytes) {
        this.tag = tag;
        this.bytes = bytes;
    }

    public int computeSerializedSize() {
        int size = 0 + CodedOutputByteBufferNano.computeRawVarint32Size(this.tag);
        return size + this.bytes.length;
    }

    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        output.writeRawVarint32(this.tag);
        output.writeRawBytes(this.bytes);
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof UnknownFieldData)) {
            return false;
        }
        UnknownFieldData other = (UnknownFieldData) o;
        return this.tag == other.tag && Arrays.equals(this.bytes, other.bytes);
    }

    public int hashCode() {
        int result = (17 * 31) + this.tag;
        return (result * 31) + Arrays.hashCode(this.bytes);
    }
}
