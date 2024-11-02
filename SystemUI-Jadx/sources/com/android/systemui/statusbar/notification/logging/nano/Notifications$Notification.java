package com.android.systemui.statusbar.notification.logging.nano;

import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.MessageNano;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Notifications$Notification extends MessageNano {
    private static volatile Notifications$Notification[] _emptyArray;
    public int groupInstanceId;
    public int instanceId;
    public boolean isGroupSummary;
    public String packageName;
    public int section;
    public int uid;

    public Notifications$Notification() {
        clear();
    }

    public static Notifications$Notification[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new Notifications$Notification[0];
                }
            }
        }
        return _emptyArray;
    }

    public Notifications$Notification clear() {
        this.uid = 0;
        this.packageName = "";
        this.instanceId = 0;
        this.groupInstanceId = 0;
        this.isGroupSummary = false;
        this.section = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public int computeSerializedSize() {
        int i = this.uid;
        int i2 = 0;
        if (i != 0) {
            i2 = 0 + CodedOutputByteBufferNano.computeInt32Size(1, i);
        }
        if (!this.packageName.equals("")) {
            i2 += CodedOutputByteBufferNano.computeStringSize(2, this.packageName);
        }
        int i3 = this.instanceId;
        if (i3 != 0) {
            i2 += CodedOutputByteBufferNano.computeInt32Size(3, i3);
        }
        int i4 = this.groupInstanceId;
        if (i4 != 0) {
            i2 += CodedOutputByteBufferNano.computeInt32Size(4, i4);
        }
        if (this.isGroupSummary) {
            i2 += CodedOutputByteBufferNano.computeTagSize(5) + 1;
        }
        int i5 = this.section;
        if (i5 != 0) {
            return i2 + CodedOutputByteBufferNano.computeInt32Size(6, i5);
        }
        return i2;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i = this.uid;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(1, i);
        }
        if (!this.packageName.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.packageName);
        }
        int i2 = this.instanceId;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeInt32(3, i2);
        }
        int i3 = this.groupInstanceId;
        if (i3 != 0) {
            codedOutputByteBufferNano.writeInt32(4, i3);
        }
        boolean z = this.isGroupSummary;
        if (z) {
            codedOutputByteBufferNano.writeTag(5, 0);
            codedOutputByteBufferNano.writeRawByte(z ? 1 : 0);
        }
        int i4 = this.section;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(6, i4);
        }
    }
}
