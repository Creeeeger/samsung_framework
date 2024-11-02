package com.android.wm.shell.nano;

import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.MessageNano;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HandlerMapping extends MessageNano {
    private static volatile HandlerMapping[] _emptyArray;
    public int id;
    public String name;

    public HandlerMapping() {
        clear();
    }

    public static HandlerMapping[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new HandlerMapping[0];
                }
            }
        }
        return _emptyArray;
    }

    public HandlerMapping clear() {
        this.id = 0;
        this.name = "";
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeStringSize(2, this.name) + CodedOutputByteBufferNano.computeInt32Size(1, this.id) + 0;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeInt32(1, this.id);
        codedOutputByteBufferNano.writeString(2, this.name);
    }
}
