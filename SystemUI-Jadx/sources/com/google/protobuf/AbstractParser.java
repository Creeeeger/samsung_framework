package com.google.protobuf;

import com.google.protobuf.CodedInputStream;
import com.google.protobuf.GeneratedMessageLite;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AbstractParser implements Parser {
    static {
        ExtensionRegistryLite.getEmptyRegistry();
    }

    public final MessageLite parseFrom(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        CodedInputStream.ArrayDecoder newCodedInput = byteString.newCodedInput();
        GeneratedMessageLite parsePartialFrom = ((GeneratedMessageLite.DefaultInstanceBasedParser) this).parsePartialFrom(newCodedInput, extensionRegistryLite);
        try {
            newCodedInput.checkLastTagWas(0);
            if (GeneratedMessageLite.isInitialized(parsePartialFrom, true)) {
                return parsePartialFrom;
            }
            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new UninitializedMessageException(parsePartialFrom).getMessage());
            invalidProtocolBufferException.setUnfinishedMessage(parsePartialFrom);
            throw invalidProtocolBufferException;
        } catch (InvalidProtocolBufferException e) {
            e.setUnfinishedMessage(parsePartialFrom);
            throw e;
        }
    }
}
