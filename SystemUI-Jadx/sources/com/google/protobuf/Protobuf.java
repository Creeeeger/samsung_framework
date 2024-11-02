package com.google.protobuf;

import com.google.protobuf.ListFieldSchema;
import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Protobuf {
    public static final Protobuf INSTANCE = new Protobuf();
    public final ConcurrentMap schemaCache = new ConcurrentHashMap();
    public final ManifestSchemaFactory schemaFactory = new ManifestSchemaFactory();

    private Protobuf() {
    }

    public final Schema schemaFor(Class cls) {
        Schema newSchema;
        Class cls2;
        Charset charset = Internal.UTF_8;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.schemaCache;
            Schema schema = (Schema) concurrentHashMap.get(cls);
            if (schema == null) {
                ManifestSchemaFactory manifestSchemaFactory = this.schemaFactory;
                manifestSchemaFactory.getClass();
                Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
                }
                MessageInfo messageInfoFor = manifestSchemaFactory.messageInfoFactory.messageInfoFor(cls);
                if (messageInfoFor.isMessageSetWireFormat()) {
                    if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                        newSchema = MessageSetSchema.newSchema(SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, messageInfoFor.getDefaultInstance());
                    } else {
                        UnknownFieldSchema unknownFieldSchema = SchemaUtil.PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
                        ExtensionSchema extensionSchema = ExtensionSchemas.FULL_SCHEMA;
                        if (extensionSchema != null) {
                            newSchema = MessageSetSchema.newSchema(unknownFieldSchema, extensionSchema, messageInfoFor.getDefaultInstance());
                        } else {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                    }
                } else {
                    boolean z = true;
                    if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                        if (messageInfoFor.getSyntax() != ProtoSyntax.PROTO2) {
                            z = false;
                        }
                        if (z) {
                            newSchema = MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.LITE_SCHEMA, ListFieldSchema.LITE_INSTANCE, SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, MapFieldSchemas.LITE_SCHEMA);
                        } else {
                            newSchema = MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.LITE_SCHEMA, ListFieldSchema.LITE_INSTANCE, SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, null, MapFieldSchemas.LITE_SCHEMA);
                        }
                    } else {
                        if (messageInfoFor.getSyntax() != ProtoSyntax.PROTO2) {
                            z = false;
                        }
                        if (z) {
                            NewInstanceSchema newInstanceSchema = NewInstanceSchemas.FULL_SCHEMA;
                            ListFieldSchema.ListFieldSchemaFull listFieldSchemaFull = ListFieldSchema.FULL_INSTANCE;
                            UnknownFieldSchema unknownFieldSchema2 = SchemaUtil.PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
                            ExtensionSchema extensionSchema2 = ExtensionSchemas.FULL_SCHEMA;
                            if (extensionSchema2 != null) {
                                newSchema = MessageSchema.newSchema(messageInfoFor, newInstanceSchema, listFieldSchemaFull, unknownFieldSchema2, extensionSchema2, MapFieldSchemas.FULL_SCHEMA);
                            } else {
                                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                            }
                        } else {
                            newSchema = MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.FULL_SCHEMA, ListFieldSchema.FULL_INSTANCE, SchemaUtil.PROTO3_UNKNOWN_FIELD_SET_SCHEMA, null, MapFieldSchemas.FULL_SCHEMA);
                        }
                    }
                }
                Schema schema2 = newSchema;
                Schema schema3 = (Schema) concurrentHashMap.putIfAbsent(cls, schema2);
                if (schema3 != null) {
                    return schema3;
                }
                return schema2;
            }
            return schema;
        }
        throw new NullPointerException("messageType");
    }
}
