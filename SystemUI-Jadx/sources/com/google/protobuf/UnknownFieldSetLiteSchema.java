package com.google.protobuf;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnknownFieldSetLiteSchema extends UnknownFieldSchema {
    @Override // com.google.protobuf.UnknownFieldSchema
    public final void addFixed32(int i, int i2, Object obj) {
        ((UnknownFieldSetLite) obj).storeField((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void addFixed64(int i, long j, Object obj) {
        ((UnknownFieldSetLite) obj).storeField((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void addGroup(int i, Object obj, Object obj2) {
        ((UnknownFieldSetLite) obj).storeField((i << 3) | 3, (UnknownFieldSetLite) obj2);
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void addLengthDelimited(Object obj, int i, ByteString byteString) {
        ((UnknownFieldSetLite) obj).storeField((i << 3) | 2, byteString);
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void addVarint(int i, long j, Object obj) {
        ((UnknownFieldSetLite) obj).storeField((i << 3) | 0, Long.valueOf(j));
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final UnknownFieldSetLite getBuilderFromMessage(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite == UnknownFieldSetLite.DEFAULT_INSTANCE) {
            UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
            generatedMessageLite.unknownFields = newInstance;
            return newInstance;
        }
        return unknownFieldSetLite;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final UnknownFieldSetLite getFromMessage(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final int getSerializedSize(Object obj) {
        return ((UnknownFieldSetLite) obj).getSerializedSize();
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final int getSerializedSizeAsMessageSet(Object obj) {
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i = unknownFieldSetLite.memoizedSerializedSize;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < unknownFieldSetLite.count; i3++) {
                int i4 = unknownFieldSetLite.tags[i3] >>> 3;
                i2 += CodedOutputStream.computeBytesSize(3, (ByteString) unknownFieldSetLite.objects[i3]) + CodedOutputStream.computeUInt32Size(2, i4) + (CodedOutputStream.computeTagSize(1) * 2);
            }
            unknownFieldSetLite.memoizedSerializedSize = i2;
            return i2;
        }
        return i;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void makeImmutable(Object obj) {
        ((GeneratedMessageLite) obj).unknownFields.isMutable = false;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final UnknownFieldSetLite merge(Object obj, Object obj2) {
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) obj2;
        UnknownFieldSetLite unknownFieldSetLite3 = UnknownFieldSetLite.DEFAULT_INSTANCE;
        if (!unknownFieldSetLite3.equals(unknownFieldSetLite2)) {
            if (unknownFieldSetLite3.equals(unknownFieldSetLite)) {
                return UnknownFieldSetLite.mutableCopyOf(unknownFieldSetLite, unknownFieldSetLite2);
            }
            unknownFieldSetLite.getClass();
            if (!unknownFieldSetLite2.equals(unknownFieldSetLite3)) {
                if (unknownFieldSetLite.isMutable) {
                    int i = unknownFieldSetLite.count + unknownFieldSetLite2.count;
                    unknownFieldSetLite.ensureCapacity(i);
                    System.arraycopy(unknownFieldSetLite2.tags, 0, unknownFieldSetLite.tags, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                    System.arraycopy(unknownFieldSetLite2.objects, 0, unknownFieldSetLite.objects, unknownFieldSetLite.count, unknownFieldSetLite2.count);
                    unknownFieldSetLite.count = i;
                    return unknownFieldSetLite;
                }
                throw new UnsupportedOperationException();
            }
            return unknownFieldSetLite;
        }
        return unknownFieldSetLite;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final UnknownFieldSetLite newBuilder() {
        return UnknownFieldSetLite.newInstance();
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void setBuilderToMessage(Object obj, Object obj2) {
        ((GeneratedMessageLite) obj).unknownFields = (UnknownFieldSetLite) obj2;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void setToMessage(Object obj, Object obj2) {
        ((GeneratedMessageLite) obj).unknownFields = (UnknownFieldSetLite) obj2;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final UnknownFieldSetLite toImmutable(Object obj) {
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        unknownFieldSetLite.isMutable = false;
        return unknownFieldSetLite;
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void writeAsMessageSetTo(Object obj, CodedOutputStreamWriter codedOutputStreamWriter) {
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        unknownFieldSetLite.getClass();
        codedOutputStreamWriter.getClass();
        if (Writer$FieldOrder.ASCENDING == Writer$FieldOrder.DESCENDING) {
            int i = unknownFieldSetLite.count;
            while (true) {
                i--;
                if (i >= 0) {
                    codedOutputStreamWriter.writeMessageSetItem(unknownFieldSetLite.tags[i] >>> 3, unknownFieldSetLite.objects[i]);
                } else {
                    return;
                }
            }
        } else {
            for (int i2 = 0; i2 < unknownFieldSetLite.count; i2++) {
                codedOutputStreamWriter.writeMessageSetItem(unknownFieldSetLite.tags[i2] >>> 3, unknownFieldSetLite.objects[i2]);
            }
        }
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void writeTo(Object obj, CodedOutputStreamWriter codedOutputStreamWriter) {
        ((UnknownFieldSetLite) obj).writeTo(codedOutputStreamWriter);
    }

    @Override // com.google.protobuf.UnknownFieldSchema
    public final void shouldDiscardUnknownFields() {
    }
}
