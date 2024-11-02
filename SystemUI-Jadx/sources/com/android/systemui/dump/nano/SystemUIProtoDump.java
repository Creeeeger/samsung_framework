package com.android.systemui.dump.nano;

import com.android.systemui.qs.nano.QsTileState;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.MessageNano;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIProtoDump extends MessageNano {
    public QsTileState[] tiles;

    public SystemUIProtoDump() {
        clear();
    }

    public SystemUIProtoDump clear() {
        this.tiles = QsTileState.emptyArray();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public int computeSerializedSize() {
        QsTileState[] qsTileStateArr = this.tiles;
        int i = 0;
        if (qsTileStateArr == null || qsTileStateArr.length <= 0) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            QsTileState[] qsTileStateArr2 = this.tiles;
            if (i < qsTileStateArr2.length) {
                QsTileState qsTileState = qsTileStateArr2[i];
                if (qsTileState != null) {
                    i2 += CodedOutputByteBufferNano.computeMessageSize(1, qsTileState);
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        QsTileState[] qsTileStateArr = this.tiles;
        if (qsTileStateArr != null && qsTileStateArr.length > 0) {
            int i = 0;
            while (true) {
                QsTileState[] qsTileStateArr2 = this.tiles;
                if (i < qsTileStateArr2.length) {
                    QsTileState qsTileState = qsTileStateArr2[i];
                    if (qsTileState != null) {
                        codedOutputByteBufferNano.writeMessage(1, qsTileState);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
