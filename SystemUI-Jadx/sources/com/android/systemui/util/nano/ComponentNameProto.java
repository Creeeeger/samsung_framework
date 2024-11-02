package com.android.systemui.util.nano;

import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.MessageNano;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ComponentNameProto extends MessageNano {
    public String className;
    public String packageName;

    public ComponentNameProto() {
        clear();
    }

    public ComponentNameProto clear() {
        this.packageName = "";
        this.className = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public int computeSerializedSize() {
        int i = 0;
        if (!this.packageName.equals("")) {
            i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.packageName);
        }
        if (!this.className.equals("")) {
            return i + CodedOutputByteBufferNano.computeStringSize(2, this.className);
        }
        return i;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!this.packageName.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.packageName);
        }
        if (!this.className.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.className);
        }
    }
}
