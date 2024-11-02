package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import java.io.IOException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LazyFieldLite {
    public ByteString delayedBytes;
    public final ExtensionRegistryLite extensionRegistry;
    public volatile ByteString memoizedBytes;
    public volatile MessageLite value;

    static {
        ExtensionRegistryLite.getEmptyRegistry();
    }

    public LazyFieldLite() {
    }

    public LazyFieldLite(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        if (extensionRegistryLite == null) {
            throw new NullPointerException("found null ExtensionRegistry");
        }
        if (byteString != null) {
            this.extensionRegistry = extensionRegistryLite;
            this.delayedBytes = byteString;
            return;
        }
        throw new NullPointerException("found null ByteString");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyFieldLite)) {
            return false;
        }
        LazyFieldLite lazyFieldLite = (LazyFieldLite) obj;
        MessageLite messageLite = this.value;
        MessageLite messageLite2 = lazyFieldLite.value;
        if (messageLite == null && messageLite2 == null) {
            return toByteString().equals(lazyFieldLite.toByteString());
        }
        if (messageLite != null && messageLite2 != null) {
            return messageLite.equals(messageLite2);
        }
        if (messageLite != null) {
            return messageLite.equals(lazyFieldLite.getValue((GeneratedMessageLite) ((GeneratedMessageLite) messageLite).dynamicMethod(GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE)));
        }
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) messageLite2;
        generatedMessageLite.getClass();
        return getValue((GeneratedMessageLite) generatedMessageLite.dynamicMethod(GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE)).equals(messageLite2);
    }

    public final MessageLite getValue(MessageLite messageLite) {
        if (this.value == null) {
            synchronized (this) {
                if (this.value == null) {
                    try {
                        if (this.delayedBytes != null) {
                            GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) messageLite;
                            generatedMessageLite.getClass();
                            Parser parser = (Parser) generatedMessageLite.dynamicMethod(GeneratedMessageLite.MethodToInvoke.GET_PARSER);
                            AbstractParser abstractParser = (AbstractParser) parser;
                            this.value = abstractParser.parseFrom(this.extensionRegistry, this.delayedBytes);
                            this.memoizedBytes = this.delayedBytes;
                        } else {
                            this.value = messageLite;
                            this.memoizedBytes = ByteString.EMPTY;
                        }
                    } catch (InvalidProtocolBufferException unused) {
                        this.value = messageLite;
                        this.memoizedBytes = ByteString.EMPTY;
                    }
                }
            }
        }
        return this.value;
    }

    public int hashCode() {
        return 1;
    }

    public final ByteString toByteString() {
        if (this.memoizedBytes != null) {
            return this.memoizedBytes;
        }
        ByteString byteString = this.delayedBytes;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            if (this.memoizedBytes != null) {
                return this.memoizedBytes;
            }
            if (this.value == null) {
                this.memoizedBytes = ByteString.EMPTY;
            } else {
                AbstractMessageLite abstractMessageLite = (AbstractMessageLite) this.value;
                abstractMessageLite.getClass();
                try {
                    int serializedSize = ((GeneratedMessageLite) abstractMessageLite).getSerializedSize(null);
                    ByteString byteString2 = ByteString.EMPTY;
                    ByteString.CodedBuilder codedBuilder = new ByteString.CodedBuilder(serializedSize, null);
                    ((GeneratedMessageLite) abstractMessageLite).writeTo(codedBuilder.output);
                    if (codedBuilder.output.spaceLeft() == 0) {
                        this.memoizedBytes = new ByteString.LiteralByteString(codedBuilder.buffer);
                    } else {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                } catch (IOException e) {
                    throw new RuntimeException(abstractMessageLite.getSerializingExceptionMessage("ByteString"), e);
                }
            }
            return this.memoizedBytes;
        }
    }
}
