package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.LazyField;
import java.util.Iterator;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MessageSetSchema implements Schema {
    public final MessageLite defaultInstance;
    public final ExtensionSchema extensionSchema;
    public final boolean hasExtensions;
    public final UnknownFieldSchema unknownFieldSchema;

    private MessageSetSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        this.unknownFieldSchema = unknownFieldSchema;
        this.hasExtensions = extensionSchema.hasExtensions(messageLite);
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
    }

    public static MessageSetSchema newSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        return new MessageSetSchema(unknownFieldSchema, extensionSchema, messageLite);
    }

    @Override // com.google.protobuf.Schema
    public final boolean equals(Object obj, Object obj2) {
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        if (!unknownFieldSchema.getFromMessage(obj).equals(unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            ExtensionSchema extensionSchema = this.extensionSchema;
            return extensionSchema.getExtensions(obj).equals(extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    @Override // com.google.protobuf.Schema
    public final int getSerializedSize(Object obj) {
        SmallSortedMap smallSortedMap;
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        int i = 0;
        int serializedSizeAsMessageSet = unknownFieldSchema.getSerializedSizeAsMessageSet(unknownFieldSchema.getFromMessage(obj)) + 0;
        if (this.hasExtensions) {
            FieldSet extensions = this.extensionSchema.getExtensions(obj);
            int i2 = 0;
            while (true) {
                smallSortedMap = extensions.fields;
                if (i >= smallSortedMap.getNumArrayEntries()) {
                    break;
                }
                i2 += FieldSet.getMessageSetSerializedSize(smallSortedMap.getArrayEntryAt(i));
                i++;
            }
            Iterator it = smallSortedMap.getOverflowEntries().iterator();
            while (it.hasNext()) {
                i2 += FieldSet.getMessageSetSerializedSize((Map.Entry) it.next());
            }
            return serializedSizeAsMessageSet + i2;
        }
        return serializedSizeAsMessageSet;
    }

    @Override // com.google.protobuf.Schema
    public final int hashCode(Object obj) {
        int hashCode = this.unknownFieldSchema.getFromMessage(obj).hashCode();
        if (this.hasExtensions) {
            return (hashCode * 53) + this.extensionSchema.getExtensions(obj).hashCode();
        }
        return hashCode;
    }

    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        return this.extensionSchema.getExtensions(obj).isInitialized();
    }

    @Override // com.google.protobuf.Schema
    public final void makeImmutable(Object obj) {
        this.unknownFieldSchema.makeImmutable(obj);
        this.extensionSchema.makeImmutable(obj);
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        unknownFieldSchema.setToMessage(obj, unknownFieldSchema.merge(unknownFieldSchema.getFromMessage(obj), unknownFieldSchema.getFromMessage(obj2)));
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    @Override // com.google.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        MessageLite messageLite = this.defaultInstance;
        if (messageLite instanceof GeneratedMessageLite) {
            GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) messageLite;
            generatedMessageLite.getClass();
            return (GeneratedMessageLite) generatedMessageLite.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
        }
        GeneratedMessageLite generatedMessageLite2 = (GeneratedMessageLite) messageLite;
        generatedMessageLite2.getClass();
        return ((GeneratedMessageLite.Builder) generatedMessageLite2.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER)).buildPartial();
    }

    public final boolean parseMessageSetItemOrUnknownField(Reader reader, ExtensionRegistryLite extensionRegistryLite, ExtensionSchema extensionSchema, FieldSet fieldSet, UnknownFieldSchema unknownFieldSchema, Object obj) {
        CodedInputStreamReader codedInputStreamReader = (CodedInputStreamReader) reader;
        int i = codedInputStreamReader.tag;
        MessageLite messageLite = this.defaultInstance;
        if (i != 11) {
            if ((i & 7) == 2) {
                GeneratedMessageLite.GeneratedExtension findExtensionByNumber = extensionSchema.findExtensionByNumber(extensionRegistryLite, messageLite, i >>> 3);
                if (findExtensionByNumber != null) {
                    extensionSchema.parseLengthPrefixedMessageSetItem(reader, findExtensionByNumber, extensionRegistryLite, fieldSet);
                    return true;
                }
                return unknownFieldSchema.mergeOneFieldFrom(obj, reader);
            }
            return codedInputStreamReader.skipField();
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension = null;
        int i2 = 0;
        ByteString byteString = null;
        while (codedInputStreamReader.getFieldNumber() != Integer.MAX_VALUE) {
            int i3 = codedInputStreamReader.tag;
            if (i3 == 16) {
                i2 = codedInputStreamReader.readUInt32();
                generatedExtension = extensionSchema.findExtensionByNumber(extensionRegistryLite, messageLite, i2);
            } else if (i3 == 26) {
                if (generatedExtension != null) {
                    extensionSchema.parseLengthPrefixedMessageSetItem(reader, generatedExtension, extensionRegistryLite, fieldSet);
                } else {
                    byteString = codedInputStreamReader.readBytes();
                }
            } else if (!codedInputStreamReader.skipField()) {
                break;
            }
        }
        if (codedInputStreamReader.tag == 12) {
            if (byteString != null) {
                if (generatedExtension != null) {
                    extensionSchema.parseMessageSetItem(byteString, generatedExtension, extensionRegistryLite, fieldSet);
                } else {
                    unknownFieldSchema.addLengthDelimited(obj, i2, byteString);
                }
            }
            return true;
        }
        throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.protobuf.Schema
    public final void writeTo(Object obj, CodedOutputStreamWriter codedOutputStreamWriter) {
        Iterator it = this.extensionSchema.getExtensions(obj).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor) entry.getKey();
            if (extensionDescriptor.type.getJavaType() == WireFormat$JavaType.MESSAGE && !extensionDescriptor.isRepeated && !extensionDescriptor.isPacked) {
                if (entry instanceof LazyField.LazyEntry) {
                    codedOutputStreamWriter.writeMessageSetItem(extensionDescriptor.number, ((LazyField) ((LazyField.LazyEntry) entry).entry.getValue()).toByteString());
                } else {
                    codedOutputStreamWriter.writeMessageSetItem(extensionDescriptor.number, entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        unknownFieldSchema.writeAsMessageSetTo(unknownFieldSchema.getFromMessage(obj), codedOutputStreamWriter);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce A[EDGE_INSN: B:28:0x00ce->B:29:0x00ce BREAK  A[LOOP:1: B:13:0x0079->B:21:0x00ca], SYNTHETIC] */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mergeFrom(java.lang.Object r17, byte[] r18, int r19, int r20, com.google.protobuf.ArrayDecoders.Registers r21) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSetSchema.mergeFrom(java.lang.Object, byte[], int, int, com.google.protobuf.ArrayDecoders$Registers):void");
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, Reader reader, ExtensionRegistryLite extensionRegistryLite) {
        CodedInputStreamReader codedInputStreamReader;
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        UnknownFieldSetLite builderFromMessage = unknownFieldSchema.getBuilderFromMessage(obj);
        ExtensionSchema extensionSchema = this.extensionSchema;
        FieldSet mutableExtensions = extensionSchema.getMutableExtensions(obj);
        do {
            try {
                codedInputStreamReader = (CodedInputStreamReader) reader;
                if (codedInputStreamReader.getFieldNumber() == Integer.MAX_VALUE) {
                    break;
                }
            } finally {
                unknownFieldSchema.setBuilderToMessage(obj, builderFromMessage);
            }
        } while (parseMessageSetItemOrUnknownField(codedInputStreamReader, extensionRegistryLite, extensionSchema, mutableExtensions, unknownFieldSchema, builderFromMessage));
    }
}
