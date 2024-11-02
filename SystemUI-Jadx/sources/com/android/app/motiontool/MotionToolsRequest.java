package com.android.app.motiontool;

import com.google.protobuf.ArrayDecoders;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Protobuf;
import com.google.protobuf.RawMessageInfo;
import com.google.protobuf.Schema;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MotionToolsRequest extends GeneratedMessageLite implements MessageLiteOrBuilder {
    public static final int BEGIN_TRACE_FIELD_NUMBER = 2;
    private static final MotionToolsRequest DEFAULT_INSTANCE;
    public static final int END_TRACE_FIELD_NUMBER = 3;
    public static final int HANDSHAKE_FIELD_NUMBER = 1;
    private static volatile Parser PARSER = null;
    public static final int POLL_TRACE_FIELD_NUMBER = 4;
    private int bitField0_;
    private int typeCase_ = 0;
    private Object type_;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.app.motiontool.MotionToolsRequest$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder extends GeneratedMessageLite.Builder implements MessageLiteOrBuilder {
        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Builder() {
            super(MotionToolsRequest.DEFAULT_INSTANCE);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum TypeCase {
        HANDSHAKE(1),
        BEGIN_TRACE(2),
        END_TRACE(3),
        POLL_TRACE(4),
        TYPE_NOT_SET(0);

        private final int value;

        TypeCase(int i) {
            this.value = i;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    static {
        MotionToolsRequest motionToolsRequest = new MotionToolsRequest();
        DEFAULT_INSTANCE = motionToolsRequest;
        GeneratedMessageLite.registerDefaultInstance(MotionToolsRequest.class, motionToolsRequest);
    }

    private MotionToolsRequest() {
    }

    public static MotionToolsRequest parseFrom(byte[] bArr) {
        MotionToolsRequest motionToolsRequest = DEFAULT_INSTANCE;
        int length = bArr.length;
        ExtensionRegistryLite emptyRegistry = ExtensionRegistryLite.getEmptyRegistry();
        motionToolsRequest.getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) motionToolsRequest.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            Protobuf protobuf = Protobuf.INSTANCE;
            protobuf.getClass();
            Schema schemaFor = protobuf.schemaFor(generatedMessageLite.getClass());
            schemaFor.mergeFrom(generatedMessageLite, bArr, 0, length + 0, new ArrayDecoders.Registers(emptyRegistry));
            schemaFor.makeImmutable(generatedMessageLite);
            if (GeneratedMessageLite.isInitialized(generatedMessageLite, true)) {
                return (MotionToolsRequest) generatedMessageLite;
            }
            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new UninitializedMessageException(generatedMessageLite).getMessage());
            invalidProtocolBufferException.setUnfinishedMessage(generatedMessageLite);
            throw invalidProtocolBufferException;
        } catch (InvalidProtocolBufferException e) {
            e = e;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            e.setUnfinishedMessage(generatedMessageLite);
            throw e;
        } catch (UninitializedMessageException e2) {
            InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e2.getMessage());
            invalidProtocolBufferException2.setUnfinishedMessage(generatedMessageLite);
            throw invalidProtocolBufferException2;
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            InvalidProtocolBufferException invalidProtocolBufferException3 = new InvalidProtocolBufferException(e3);
            invalidProtocolBufferException3.setUnfinishedMessage(generatedMessageLite);
            throw invalidProtocolBufferException3;
        } catch (IndexOutOfBoundsException unused) {
            InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
            truncatedMessage.setUnfinishedMessage(generatedMessageLite);
            throw truncatedMessage;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new MotionToolsRequest();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ြ\u0000\u0002ြ\u0000\u0003ြ\u0000\u0004ြ\u0000", new Object[]{"type_", "typeCase_", "bitField0_", HandshakeRequest.class, BeginTraceRequest.class, EndTraceRequest.class, PollTraceRequest.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser parser = PARSER;
                if (parser == null) {
                    synchronized (MotionToolsRequest.class) {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = parser;
                        }
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final BeginTraceRequest getBeginTrace() {
        if (this.typeCase_ == 2) {
            return (BeginTraceRequest) this.type_;
        }
        return BeginTraceRequest.getDefaultInstance();
    }

    public final EndTraceRequest getEndTrace() {
        if (this.typeCase_ == 3) {
            return (EndTraceRequest) this.type_;
        }
        return EndTraceRequest.getDefaultInstance();
    }

    public final HandshakeRequest getHandshake() {
        if (this.typeCase_ == 1) {
            return (HandshakeRequest) this.type_;
        }
        return HandshakeRequest.getDefaultInstance();
    }

    public final PollTraceRequest getPollTrace() {
        if (this.typeCase_ == 4) {
            return (PollTraceRequest) this.type_;
        }
        return PollTraceRequest.getDefaultInstance();
    }

    public final TypeCase getTypeCase() {
        int i = this.typeCase_;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            TypeCase typeCase = TypeCase.HANDSHAKE;
                            return null;
                        }
                        return TypeCase.POLL_TRACE;
                    }
                    return TypeCase.END_TRACE;
                }
                return TypeCase.BEGIN_TRACE;
            }
            return TypeCase.HANDSHAKE;
        }
        return TypeCase.TYPE_NOT_SET;
    }
}
