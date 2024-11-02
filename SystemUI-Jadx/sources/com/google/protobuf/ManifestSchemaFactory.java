package com.google.protobuf;

import java.nio.charset.Charset;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ManifestSchemaFactory {
    public static final AnonymousClass1 EMPTY_FACTORY = new MessageInfoFactory() { // from class: com.google.protobuf.ManifestSchemaFactory.1
        @Override // com.google.protobuf.MessageInfoFactory
        public final boolean isSupported(Class cls) {
            return false;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public final MessageInfo messageInfoFor(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }
    };
    public final MessageInfoFactory messageInfoFactory;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CompositeMessageInfoFactory implements MessageInfoFactory {
        public final MessageInfoFactory[] factories;

        public CompositeMessageInfoFactory(MessageInfoFactory... messageInfoFactoryArr) {
            this.factories = messageInfoFactoryArr;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public final boolean isSupported(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public final MessageInfo messageInfoFor(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return messageInfoFactory.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
        }
    }

    private ManifestSchemaFactory(MessageInfoFactory messageInfoFactory) {
        Charset charset = Internal.UTF_8;
        if (messageInfoFactory == null) {
            throw new NullPointerException("messageInfoFactory");
        }
        this.messageInfoFactory = messageInfoFactory;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ManifestSchemaFactory() {
        /*
            r6 = this;
            com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory r0 = new com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory
            r1 = 2
            com.google.protobuf.MessageInfoFactory[] r1 = new com.google.protobuf.MessageInfoFactory[r1]
            com.google.protobuf.GeneratedMessageInfoFactory r2 = com.google.protobuf.GeneratedMessageInfoFactory.instance
            r3 = 0
            r1[r3] = r2
            java.lang.String r2 = "com.google.protobuf.DescriptorMessageInfoFactory"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Exception -> L22
            java.lang.String r4 = "getInstance"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L22
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L22
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L22
            r4 = 0
            java.lang.Object r2 = r2.invoke(r4, r3)     // Catch: java.lang.Exception -> L22
            com.google.protobuf.MessageInfoFactory r2 = (com.google.protobuf.MessageInfoFactory) r2     // Catch: java.lang.Exception -> L22
            goto L24
        L22:
            com.google.protobuf.ManifestSchemaFactory$1 r2 = com.google.protobuf.ManifestSchemaFactory.EMPTY_FACTORY
        L24:
            r3 = 1
            r1[r3] = r2
            r0.<init>(r1)
            r6.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.ManifestSchemaFactory.<init>():void");
    }
}
