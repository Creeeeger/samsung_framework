package com.android.systemui.tracing.nano;

import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.MessageNano;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemUiTraceFileProto extends MessageNano {
    public SystemUiTraceEntryProto[] entry;
    public long magicNumber;

    public SystemUiTraceFileProto() {
        clear();
    }

    public SystemUiTraceFileProto clear() {
        this.magicNumber = 0L;
        this.entry = SystemUiTraceEntryProto.emptyArray();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public int computeSerializedSize() {
        int i;
        int i2 = 0;
        if (this.magicNumber != 0) {
            i = CodedOutputByteBufferNano.computeTagSize(1) + 8 + 0;
        } else {
            i = 0;
        }
        SystemUiTraceEntryProto[] systemUiTraceEntryProtoArr = this.entry;
        if (systemUiTraceEntryProtoArr != null && systemUiTraceEntryProtoArr.length > 0) {
            while (true) {
                SystemUiTraceEntryProto[] systemUiTraceEntryProtoArr2 = this.entry;
                if (i2 >= systemUiTraceEntryProtoArr2.length) {
                    break;
                }
                SystemUiTraceEntryProto systemUiTraceEntryProto = systemUiTraceEntryProtoArr2[i2];
                if (systemUiTraceEntryProto != null) {
                    i += CodedOutputByteBufferNano.computeMessageSize(2, systemUiTraceEntryProto);
                }
                i2++;
            }
        }
        return i;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        long j = this.magicNumber;
        if (j != 0) {
            codedOutputByteBufferNano.writeFixed64(1, j);
        }
        SystemUiTraceEntryProto[] systemUiTraceEntryProtoArr = this.entry;
        if (systemUiTraceEntryProtoArr != null && systemUiTraceEntryProtoArr.length > 0) {
            int i = 0;
            while (true) {
                SystemUiTraceEntryProto[] systemUiTraceEntryProtoArr2 = this.entry;
                if (i < systemUiTraceEntryProtoArr2.length) {
                    SystemUiTraceEntryProto systemUiTraceEntryProto = systemUiTraceEntryProtoArr2[i];
                    if (systemUiTraceEntryProto != null) {
                        codedOutputByteBufferNano.writeMessage(2, systemUiTraceEntryProto);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
