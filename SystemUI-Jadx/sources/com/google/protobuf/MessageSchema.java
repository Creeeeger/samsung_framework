package com.google.protobuf;

import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.google.protobuf.ArrayDecoders;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.UnsafeUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MessageSchema implements Schema {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Unsafe UNSAFE;
    public final int[] buffer;
    public final int checkInitializedCount;
    public final MessageLite defaultInstance;
    public final ExtensionSchema extensionSchema;
    public final boolean hasExtensions;
    public final int[] intArray;
    public final ListFieldSchema listFieldSchema;
    public final boolean lite;
    public final MapFieldSchema mapFieldSchema;
    public final int maxFieldNumber;
    public final int minFieldNumber;
    public final NewInstanceSchema newInstanceSchema;
    public final Object[] objects;
    public final boolean proto3;
    public final int repeatedFieldOffsetStart;
    public final UnknownFieldSchema unknownFieldSchema;
    public final boolean useCachedSizeField;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.protobuf.MessageSchema$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat$FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat$FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new UnsafeUtil.AnonymousClass1());
        } catch (Throwable unused) {
            unsafe = null;
        }
        UNSAFE = unsafe;
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, boolean z, boolean z2, int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        boolean z3;
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z;
        if (extensionSchema != null && extensionSchema.hasExtensions(messageLite)) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.hasExtensions = z3;
        this.useCachedSizeField = z2;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    public static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    public static int decodeMapEntryValue(byte[] bArr, int i, int i2, WireFormat$FieldType wireFormat$FieldType, Class cls, ArrayDecoders.Registers registers) {
        boolean z;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[wireFormat$FieldType.ordinal()]) {
            case 1:
                int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                if (registers.long1 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                registers.object1 = Boolean.valueOf(z);
                return decodeVarint64;
            case 2:
                return ArrayDecoders.decodeBytes(bArr, i, registers);
            case 3:
                registers.object1 = Double.valueOf(Double.longBitsToDouble(ArrayDecoders.decodeFixed64(i, bArr)));
                return i + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(i, bArr));
                return i + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(i, bArr));
                return i + 8;
            case 8:
                registers.object1 = Float.valueOf(Float.intBitsToFloat(ArrayDecoders.decodeFixed32(i, bArr)));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return decodeVarint32;
            case 12:
            case 13:
                int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return decodeVarint642;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.INSTANCE.schemaFor(cls), bArr, i, i2, registers);
            case 15:
                int decodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return decodeVarint322;
            case 16:
                int decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return decodeVarint643;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(bArr, i, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    public static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite == UnknownFieldSetLite.DEFAULT_INSTANCE) {
            UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
            generatedMessageLite.unknownFields = newInstance;
            return newInstance;
        }
        return unknownFieldSetLite;
    }

    public static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    public static List listAt(long j, Object obj) {
        return (List) UnsafeUtil.getObject(j, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:255:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0591  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0538  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.protobuf.MessageSchema newSchema(com.google.protobuf.MessageInfo r50, com.google.protobuf.NewInstanceSchema r51, com.google.protobuf.ListFieldSchema r52, com.google.protobuf.UnknownFieldSchema r53, com.google.protobuf.ExtensionSchema r54, com.google.protobuf.MapFieldSchema r55) {
        /*
            Method dump skipped, instructions count: 1608
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.newSchema(com.google.protobuf.MessageInfo, com.google.protobuf.NewInstanceSchema, com.google.protobuf.ListFieldSchema, com.google.protobuf.UnknownFieldSchema, com.google.protobuf.ExtensionSchema, com.google.protobuf.MapFieldSchema):com.google.protobuf.MessageSchema");
    }

    public static long offset(int i) {
        return i & 1048575;
    }

    public static int oneofIntAt(long j, Object obj) {
        return ((Integer) UnsafeUtil.getObject(j, obj)).intValue();
    }

    public static long oneofLongAt(long j, Object obj) {
        return ((Long) UnsafeUtil.getObject(j, obj)).longValue();
    }

    public static Field reflectField(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Field ", str, " for ");
            m.append(cls.getName());
            m.append(" not found. Known fields are ");
            m.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m.toString());
        }
    }

    public static void writeString(int i, Object obj, CodedOutputStreamWriter codedOutputStreamWriter) {
        if (obj instanceof String) {
            codedOutputStreamWriter.output.writeString(i, (String) obj);
        } else {
            codedOutputStreamWriter.writeBytes(i, (ByteString) obj);
        }
    }

    public final boolean arePresentForEquals(int i, Object obj, Object obj2) {
        if (isFieldPresent(i, obj) == isFieldPresent(i, obj2)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(com.google.protobuf.UnsafeUtil.getObject(r7, r11), com.google.protobuf.UnsafeUtil.getObject(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(com.google.protobuf.UnsafeUtil.getObject(r7, r11), com.google.protobuf.UnsafeUtil.getObject(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getLong(r7, r11) == com.google.protobuf.UnsafeUtil.getLong(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getLong(r7, r11) == com.google.protobuf.UnsafeUtil.getLong(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bb, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f5, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(com.google.protobuf.UnsafeUtil.getObject(r7, r11), com.google.protobuf.UnsafeUtil.getObject(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(com.google.protobuf.UnsafeUtil.getObject(r7, r11), com.google.protobuf.UnsafeUtil.getObject(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0121, code lost:
    
        if (com.google.protobuf.SchemaUtil.safeEquals(com.google.protobuf.UnsafeUtil.getObject(r7, r11), com.google.protobuf.UnsafeUtil.getObject(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0133, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getBoolean(r7, r11) == com.google.protobuf.UnsafeUtil.getBoolean(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0145, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0159, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getLong(r7, r11) == com.google.protobuf.UnsafeUtil.getLong(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016b, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getInt(r7, r11) == com.google.protobuf.UnsafeUtil.getInt(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017e, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getLong(r7, r11) == com.google.protobuf.UnsafeUtil.getLong(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0191, code lost:
    
        if (com.google.protobuf.UnsafeUtil.getLong(r7, r11) == com.google.protobuf.UnsafeUtil.getLong(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01aa, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.protobuf.UnsafeUtil.getFloat(r7, r11)) == java.lang.Float.floatToIntBits(com.google.protobuf.UnsafeUtil.getFloat(r7, r12))) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c5, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.protobuf.UnsafeUtil.getDouble(r7, r11)) == java.lang.Double.doubleToLongBits(com.google.protobuf.UnsafeUtil.getDouble(r7, r12))) goto L109;
     */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01cc A[LOOP:0: B:2:0x0005->B:89:0x01cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01cb A[SYNTHETIC] */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.equals(java.lang.Object, java.lang.Object):boolean");
    }

    public final Object filterMapUnknownEnumValues(Object obj, int i, Object obj2, UnknownFieldSchema unknownFieldSchema, Object obj3) {
        int i2 = this.buffer[i];
        Object object = UnsafeUtil.getObject(typeAndOffsetAt(i) & 1048575, obj);
        if (object == null) {
            return obj2;
        }
        Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i);
        if (enumFieldVerifier == null) {
            return obj2;
        }
        MapFieldSchemaLite mapFieldSchemaLite = (MapFieldSchemaLite) this.mapFieldSchema;
        mapFieldSchemaLite.getClass();
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i);
        mapFieldSchemaLite.getClass();
        MapEntryLite.Metadata metadata = ((MapEntryLite) mapFieldDefaultEntry).metadata;
        Iterator it = ((MapFieldLite) object).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!enumFieldVerifier.isInRange(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = unknownFieldSchema.getBuilderFromMessage(obj3);
                }
                ByteString.CodedBuilder codedBuilder = new ByteString.CodedBuilder(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()), null);
                CodedOutputStream.ArrayEncoder arrayEncoder = codedBuilder.output;
                try {
                    MapEntryLite.writeTo(arrayEncoder, metadata, entry.getKey(), entry.getValue());
                    if (arrayEncoder.spaceLeft() == 0) {
                        unknownFieldSchema.addLengthDelimited(obj2, i2, new ByteString.LiteralByteString(codedBuilder.buffer));
                        it.remove();
                    } else {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    public final Internal.EnumVerifier getEnumFieldVerifier(int i) {
        return (Internal.EnumVerifier) this.objects[((i / 3) * 2) + 1];
    }

    public final Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
    }

    public final Schema getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.objects;
        Schema schema = (Schema) objArr[i2];
        if (schema != null) {
            return schema;
        }
        Schema schemaFor = Protobuf.INSTANCE.schemaFor((Class) objArr[i2 + 1]);
        objArr[i2] = schemaFor;
        return schemaFor;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0040. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:303:0x05d2. Please report as an issue. */
    @Override // com.google.protobuf.Schema
    public final int getSerializedSize(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int computeTagSize;
        int computeTagSize2;
        int computeUInt64SizeNoTag;
        int computeStringSizeNoTag;
        int computeTagSize3;
        int computeInt32SizeNoTag;
        int computeSizeFixed32List;
        int computeSizeFixed64ListNoTag;
        int computeTagSize4;
        int computeUInt32SizeNoTag;
        int computeTagSize5;
        int computeTagSize6;
        int computeUInt64SizeNoTag2;
        int computeTagSize7;
        int computeInt32SizeNoTag2;
        int i5;
        int computeTagSize8;
        int computeTagSize9;
        int computeTagSize10;
        int computeUInt64SizeNoTag3;
        int computeTagSize11;
        int computeInt32SizeNoTag3;
        int computeFixed64Size;
        int computeTagSize12;
        int computeTagSize13;
        int computeStringSizeNoTag2;
        int computeBytesSize;
        int computeSizeFixed64ListNoTag2;
        int computeTagSize14;
        int computeUInt32SizeNoTag2;
        int i6 = 267386880;
        boolean z2 = this.proto3;
        MapFieldSchema mapFieldSchema = this.mapFieldSchema;
        Unsafe unsafe = UNSAFE;
        boolean z3 = this.useCachedSizeField;
        UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
        int[] iArr = this.buffer;
        int i7 = 1048575;
        if (z2) {
            int i8 = 0;
            int i9 = 0;
            while (i8 < iArr.length) {
                int typeAndOffsetAt = typeAndOffsetAt(i8);
                int i10 = (typeAndOffsetAt & i6) >>> 20;
                int i11 = iArr[i8];
                long j = typeAndOffsetAt & i7;
                if (i10 >= FieldType.DOUBLE_LIST_PACKED.id() && i10 <= FieldType.SINT64_LIST_PACKED.id()) {
                    i5 = iArr[i8 + 2] & i7;
                } else {
                    i5 = 0;
                }
                switch (i10) {
                    case 0:
                        if (isFieldPresent(i8, obj)) {
                            computeTagSize8 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize8 + 8;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (isFieldPresent(i8, obj)) {
                            computeTagSize9 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize9 + 4;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (isFieldPresent(i8, obj)) {
                            long j2 = UnsafeUtil.getLong(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag(j2);
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (isFieldPresent(i8, obj)) {
                            long j3 = UnsafeUtil.getLong(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag(j3);
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (isFieldPresent(i8, obj)) {
                            int i12 = UnsafeUtil.getInt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeInt32SizeNoTag(i12);
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeFixed64Size(i11);
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeFixed32Size(i11);
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (isFieldPresent(i8, obj)) {
                            computeTagSize12 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize12 + 1;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!isFieldPresent(i8, obj)) {
                            break;
                        } else {
                            Object object = UnsafeUtil.getObject(j, obj);
                            if (object instanceof ByteString) {
                                computeBytesSize = CodedOutputStream.computeBytesSize(i11, (ByteString) object);
                                i9 += computeBytesSize;
                                break;
                            } else {
                                computeTagSize13 = CodedOutputStream.computeTagSize(i11);
                                computeStringSizeNoTag2 = CodedOutputStream.computeStringSizeNoTag((String) object);
                                computeBytesSize = computeStringSizeNoTag2 + computeTagSize13;
                                i9 += computeBytesSize;
                            }
                        }
                    case 9:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = SchemaUtil.computeSizeMessage(i11, getMessageFieldSchema(i8), UnsafeUtil.getObject(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeBytesSize(i11, (ByteString) UnsafeUtil.getObject(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeUInt32Size(i11, UnsafeUtil.getInt(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (isFieldPresent(i8, obj)) {
                            int i13 = UnsafeUtil.getInt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeInt32SizeNoTag(i13);
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (isFieldPresent(i8, obj)) {
                            computeTagSize9 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize9 + 4;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (isFieldPresent(i8, obj)) {
                            computeTagSize8 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize8 + 8;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (isFieldPresent(i8, obj)) {
                            int i14 = UnsafeUtil.getInt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeUInt32SizeNoTag((i14 >> 31) ^ (i14 << 1));
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (isFieldPresent(i8, obj)) {
                            long j4 = UnsafeUtil.getLong(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag((j4 >> 63) ^ (j4 << 1));
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (isFieldPresent(i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeGroupSize(i11, (MessageLite) UnsafeUtil.getObject(j, obj), getMessageFieldSchema(i8));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        computeFixed64Size = SchemaUtil.computeSizeFixed64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 19:
                        computeFixed64Size = SchemaUtil.computeSizeFixed32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 20:
                        computeFixed64Size = SchemaUtil.computeSizeInt64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 21:
                        computeFixed64Size = SchemaUtil.computeSizeUInt64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 22:
                        computeFixed64Size = SchemaUtil.computeSizeInt32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 23:
                        computeFixed64Size = SchemaUtil.computeSizeFixed64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 24:
                        computeFixed64Size = SchemaUtil.computeSizeFixed32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 25:
                        List listAt = listAt(j, obj);
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int size = listAt.size();
                        if (size != 0) {
                            computeFixed64Size = (CodedOutputStream.computeTagSize(i11) + 1) * size;
                            i9 += computeFixed64Size;
                            break;
                        }
                        computeFixed64Size = 0;
                        i9 += computeFixed64Size;
                    case 26:
                        computeFixed64Size = SchemaUtil.computeSizeStringList(i11, listAt(j, obj));
                        i9 += computeFixed64Size;
                        break;
                    case 27:
                        computeFixed64Size = SchemaUtil.computeSizeMessageList(i11, listAt(j, obj), getMessageFieldSchema(i8));
                        i9 += computeFixed64Size;
                        break;
                    case 28:
                        computeFixed64Size = SchemaUtil.computeSizeByteStringList(i11, listAt(j, obj));
                        i9 += computeFixed64Size;
                        break;
                    case 29:
                        computeFixed64Size = SchemaUtil.computeSizeUInt32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 30:
                        computeFixed64Size = SchemaUtil.computeSizeEnumList(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 31:
                        computeFixed64Size = SchemaUtil.computeSizeFixed32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 32:
                        computeFixed64Size = SchemaUtil.computeSizeFixed64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 33:
                        computeFixed64Size = SchemaUtil.computeSizeSInt32List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 34:
                        computeFixed64Size = SchemaUtil.computeSizeSInt64List(listAt(j, obj), i11);
                        i9 += computeFixed64Size;
                        break;
                    case 35:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 36:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 37:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 38:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 39:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 40:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 41:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 42:
                        List list = (List) unsafe.getObject(obj, j);
                        Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        computeSizeFixed64ListNoTag2 = list.size();
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 43:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 44:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 45:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 46:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 47:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 48:
                        computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(obj, j));
                        if (computeSizeFixed64ListNoTag2 <= 0) {
                            break;
                        } else {
                            if (z3) {
                                unsafe.putInt(obj, i5, computeSizeFixed64ListNoTag2);
                            }
                            computeTagSize14 = CodedOutputStream.computeTagSize(i11);
                            computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            i9 += computeUInt32SizeNoTag2 + computeTagSize14 + computeSizeFixed64ListNoTag2;
                            break;
                        }
                    case 49:
                        List listAt2 = listAt(j, obj);
                        Schema messageFieldSchema = getMessageFieldSchema(i8);
                        Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        int size2 = listAt2.size();
                        if (size2 != 0) {
                            int i15 = 0;
                            for (int i16 = 0; i16 < size2; i16++) {
                                i15 = CodedOutputStream.computeGroupSize(i11, (MessageLite) listAt2.get(i16), messageFieldSchema) + i15;
                            }
                            computeFixed64Size = i15;
                            i9 += computeFixed64Size;
                            break;
                        }
                        computeFixed64Size = 0;
                        i9 += computeFixed64Size;
                    case 50:
                        computeFixed64Size = ((MapFieldSchemaLite) mapFieldSchema).getSerializedSize(i11, UnsafeUtil.getObject(j, obj), getMapFieldDefaultEntry(i8));
                        i9 += computeFixed64Size;
                        break;
                    case 51:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeTagSize8 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize8 + 8;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeTagSize9 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize9 + 4;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (isOneofPresent(i11, i8, obj)) {
                            long oneofLongAt = oneofLongAt(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag(oneofLongAt);
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (isOneofPresent(i11, i8, obj)) {
                            long oneofLongAt2 = oneofLongAt(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag(oneofLongAt2);
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (isOneofPresent(i11, i8, obj)) {
                            int oneofIntAt = oneofIntAt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeInt32SizeNoTag(oneofIntAt);
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeFixed64Size(i11);
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeFixed32Size(i11);
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeTagSize12 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize12 + 1;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!isOneofPresent(i11, i8, obj)) {
                            break;
                        } else {
                            Object object2 = UnsafeUtil.getObject(j, obj);
                            if (object2 instanceof ByteString) {
                                computeBytesSize = CodedOutputStream.computeBytesSize(i11, (ByteString) object2);
                                i9 += computeBytesSize;
                                break;
                            } else {
                                computeTagSize13 = CodedOutputStream.computeTagSize(i11);
                                computeStringSizeNoTag2 = CodedOutputStream.computeStringSizeNoTag((String) object2);
                                computeBytesSize = computeStringSizeNoTag2 + computeTagSize13;
                                i9 += computeBytesSize;
                            }
                        }
                    case 60:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = SchemaUtil.computeSizeMessage(i11, getMessageFieldSchema(i8), UnsafeUtil.getObject(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeBytesSize(i11, (ByteString) UnsafeUtil.getObject(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeUInt32Size(i11, oneofIntAt(j, obj));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (isOneofPresent(i11, i8, obj)) {
                            int oneofIntAt2 = oneofIntAt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeInt32SizeNoTag(oneofIntAt2);
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeTagSize9 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize9 + 4;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeTagSize8 = CodedOutputStream.computeTagSize(i11);
                            computeFixed64Size = computeTagSize8 + 8;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (isOneofPresent(i11, i8, obj)) {
                            int oneofIntAt3 = oneofIntAt(j, obj);
                            computeTagSize11 = CodedOutputStream.computeTagSize(i11);
                            computeInt32SizeNoTag3 = CodedOutputStream.computeUInt32SizeNoTag((oneofIntAt3 >> 31) ^ (oneofIntAt3 << 1));
                            computeFixed64Size = computeInt32SizeNoTag3 + computeTagSize11;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (isOneofPresent(i11, i8, obj)) {
                            long oneofLongAt3 = oneofLongAt(j, obj);
                            computeTagSize10 = CodedOutputStream.computeTagSize(i11);
                            computeUInt64SizeNoTag3 = CodedOutputStream.computeUInt64SizeNoTag((oneofLongAt3 >> 63) ^ (oneofLongAt3 << 1));
                            computeFixed64Size = computeUInt64SizeNoTag3 + computeTagSize10;
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (isOneofPresent(i11, i8, obj)) {
                            computeFixed64Size = CodedOutputStream.computeGroupSize(i11, (MessageLite) UnsafeUtil.getObject(j, obj), getMessageFieldSchema(i8));
                            i9 += computeFixed64Size;
                            break;
                        } else {
                            break;
                        }
                }
                i8 += 3;
                i6 = 267386880;
                i7 = 1048575;
            }
            return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(obj)) + i9;
        }
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1048575;
        while (i17 < iArr.length) {
            int typeAndOffsetAt2 = typeAndOffsetAt(i17);
            int i21 = iArr[i17];
            int i22 = (typeAndOffsetAt2 & 267386880) >>> 20;
            if (i22 <= 17) {
                i3 = iArr[i17 + 2];
                int i23 = i3 & 1048575;
                i4 = 1 << (i3 >>> 20);
                if (i23 != i20) {
                    i = i18;
                    i19 = unsafe.getInt(obj, i23);
                    i20 = i23;
                } else {
                    i = i18;
                }
                i2 = 1048575;
            } else {
                i = i18;
                if (z3 && i22 >= FieldType.DOUBLE_LIST_PACKED.id() && i22 <= FieldType.SINT64_LIST_PACKED.id()) {
                    i2 = 1048575;
                    i3 = iArr[i17 + 2] & 1048575;
                } else {
                    i2 = 1048575;
                    i3 = 0;
                }
                i4 = 0;
            }
            int i24 = typeAndOffsetAt2 & i2;
            int i25 = i20;
            long j5 = i24;
            switch (i22) {
                case 0:
                    z = true;
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 8;
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 1:
                    z = true;
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 4;
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 2:
                    z = true;
                    if ((i19 & i4) != 0) {
                        long j6 = unsafe.getLong(obj, j5);
                        computeTagSize2 = CodedOutputStream.computeTagSize(i21);
                        computeUInt64SizeNoTag = CodedOutputStream.computeUInt64SizeNoTag(j6);
                        computeTagSize = computeTagSize2 + computeUInt64SizeNoTag;
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 3:
                    z = true;
                    if ((i19 & i4) != 0) {
                        long j7 = unsafe.getLong(obj, j5);
                        computeTagSize2 = CodedOutputStream.computeTagSize(i21);
                        computeUInt64SizeNoTag = CodedOutputStream.computeUInt64SizeNoTag(j7);
                        computeTagSize = computeTagSize2 + computeUInt64SizeNoTag;
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 4:
                    z = true;
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeInt32SizeNoTag(unsafe.getInt(obj, j5)) + CodedOutputStream.computeTagSize(i21);
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 5:
                    z = true;
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeFixed64Size(i21);
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 6:
                    z = true;
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeFixed32Size(i21);
                        i18 = i + computeTagSize;
                        break;
                    }
                    i18 = i;
                    break;
                case 7:
                    if ((i19 & i4) != 0) {
                        z = true;
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 1;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 8:
                    if ((i19 & i4) != 0) {
                        Object object3 = unsafe.getObject(obj, j5);
                        if (object3 instanceof ByteString) {
                            computeStringSizeNoTag = CodedOutputStream.computeBytesSize(i21, (ByteString) object3);
                        } else {
                            computeStringSizeNoTag = CodedOutputStream.computeStringSizeNoTag((String) object3) + CodedOutputStream.computeTagSize(i21);
                        }
                        i18 = i + computeStringSizeNoTag;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 9:
                    if ((i19 & i4) != 0) {
                        computeTagSize = SchemaUtil.computeSizeMessage(i21, getMessageFieldSchema(i17), unsafe.getObject(obj, j5));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 10:
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeBytesSize(i21, (ByteString) unsafe.getObject(obj, j5));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 11:
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeUInt32Size(i21, unsafe.getInt(obj, j5));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 12:
                    if ((i19 & i4) != 0) {
                        int i26 = unsafe.getInt(obj, j5);
                        computeTagSize3 = CodedOutputStream.computeTagSize(i21);
                        computeInt32SizeNoTag = CodedOutputStream.computeInt32SizeNoTag(i26);
                        computeTagSize = computeInt32SizeNoTag + computeTagSize3;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 13:
                    if ((i19 & i4) != 0) {
                        computeStringSizeNoTag = CodedOutputStream.computeTagSize(i21) + 4;
                        i18 = i + computeStringSizeNoTag;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 14:
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 8;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 15:
                    if ((i19 & i4) != 0) {
                        int i27 = unsafe.getInt(obj, j5);
                        computeTagSize3 = CodedOutputStream.computeTagSize(i21);
                        computeInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag((i27 >> 31) ^ (i27 << 1));
                        computeTagSize = computeInt32SizeNoTag + computeTagSize3;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 16:
                    if ((i19 & i4) != 0) {
                        long j8 = unsafe.getLong(obj, j5);
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + CodedOutputStream.computeUInt64SizeNoTag((j8 >> 63) ^ (j8 << 1));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    } else {
                        z = true;
                        i18 = i;
                        break;
                    }
                case 17:
                    if ((i19 & i4) != 0) {
                        computeTagSize = CodedOutputStream.computeGroupSize(i21, (MessageLite) unsafe.getObject(obj, j5), getMessageFieldSchema(i17));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 18:
                    computeTagSize = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(obj, j5), i21);
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 19:
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 20:
                    computeSizeFixed32List = SchemaUtil.computeSizeInt64List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 21:
                    computeSizeFixed32List = SchemaUtil.computeSizeUInt64List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 22:
                    computeSizeFixed32List = SchemaUtil.computeSizeInt32List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 23:
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 24:
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 25:
                    List list2 = (List) unsafe.getObject(obj, j5);
                    Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size3 = list2.size();
                    if (size3 == 0) {
                        computeSizeFixed32List = 0;
                    } else {
                        computeSizeFixed32List = (CodedOutputStream.computeTagSize(i21) + 1) * size3;
                    }
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 26:
                    computeTagSize = SchemaUtil.computeSizeStringList(i21, (List) unsafe.getObject(obj, j5));
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 27:
                    computeTagSize = SchemaUtil.computeSizeMessageList(i21, (List) unsafe.getObject(obj, j5), getMessageFieldSchema(i17));
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 28:
                    computeTagSize = SchemaUtil.computeSizeByteStringList(i21, (List) unsafe.getObject(obj, j5));
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 29:
                    computeTagSize = SchemaUtil.computeSizeUInt32List((List) unsafe.getObject(obj, j5), i21);
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 30:
                    computeSizeFixed32List = SchemaUtil.computeSizeEnumList((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 31:
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 32:
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed64List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 33:
                    computeSizeFixed32List = SchemaUtil.computeSizeSInt32List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 34:
                    computeSizeFixed32List = SchemaUtil.computeSizeSInt64List((List) unsafe.getObject(obj, j5), i21);
                    i18 = i + computeSizeFixed32List;
                    z = true;
                    break;
                case 35:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 36:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 37:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 38:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 39:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 40:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 41:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 42:
                    List list3 = (List) unsafe.getObject(obj, j5);
                    Class cls5 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    computeSizeFixed64ListNoTag = list3.size();
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 43:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 44:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 45:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 46:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 47:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 48:
                    computeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(obj, j5));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (z3) {
                            unsafe.putInt(obj, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize4 = CodedOutputStream.computeTagSize(i21);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i18 = computeUInt32SizeNoTag + computeTagSize4 + computeSizeFixed64ListNoTag + i;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 49:
                    List list4 = (List) unsafe.getObject(obj, j5);
                    Schema messageFieldSchema2 = getMessageFieldSchema(i17);
                    Class cls6 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                    int size4 = list4.size();
                    if (size4 == 0) {
                        computeTagSize = 0;
                    } else {
                        int i28 = 0;
                        int i29 = 0;
                        while (i28 < size4) {
                            i29 += CodedOutputStream.computeGroupSize(i21, (MessageLite) list4.get(i28), messageFieldSchema2);
                            i28++;
                            list4 = list4;
                        }
                        computeTagSize = i29;
                    }
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 50:
                    computeTagSize = ((MapFieldSchemaLite) mapFieldSchema).getSerializedSize(i21, unsafe.getObject(obj, j5), getMapFieldDefaultEntry(i17));
                    z = true;
                    i18 = i + computeTagSize;
                    break;
                case 51:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize5 = CodedOutputStream.computeTagSize(i21);
                        computeTagSize = computeTagSize5 + 8;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 52:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 4;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 53:
                    if (isOneofPresent(i21, i17, obj)) {
                        long oneofLongAt4 = oneofLongAt(j5, obj);
                        computeTagSize6 = CodedOutputStream.computeTagSize(i21);
                        computeUInt64SizeNoTag2 = CodedOutputStream.computeUInt64SizeNoTag(oneofLongAt4);
                        computeTagSize = computeTagSize6 + computeUInt64SizeNoTag2;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 54:
                    if (isOneofPresent(i21, i17, obj)) {
                        long oneofLongAt5 = oneofLongAt(j5, obj);
                        computeTagSize6 = CodedOutputStream.computeTagSize(i21);
                        computeUInt64SizeNoTag2 = CodedOutputStream.computeUInt64SizeNoTag(oneofLongAt5);
                        computeTagSize = computeTagSize6 + computeUInt64SizeNoTag2;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 55:
                    if (isOneofPresent(i21, i17, obj)) {
                        int oneofIntAt4 = oneofIntAt(j5, obj);
                        computeTagSize7 = CodedOutputStream.computeTagSize(i21);
                        computeInt32SizeNoTag2 = CodedOutputStream.computeInt32SizeNoTag(oneofIntAt4);
                        computeTagSize = computeInt32SizeNoTag2 + computeTagSize7;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 56:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeFixed64Size(i21);
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 57:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeStringSizeNoTag = CodedOutputStream.computeFixed32Size(i21);
                        i18 = i + computeStringSizeNoTag;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 58:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeTagSize(i21) + 1;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 59:
                    if (isOneofPresent(i21, i17, obj)) {
                        Object object4 = unsafe.getObject(obj, j5);
                        if (object4 instanceof ByteString) {
                            computeStringSizeNoTag = CodedOutputStream.computeBytesSize(i21, (ByteString) object4);
                        } else {
                            computeStringSizeNoTag = CodedOutputStream.computeStringSizeNoTag((String) object4) + CodedOutputStream.computeTagSize(i21);
                        }
                        i18 = i + computeStringSizeNoTag;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 60:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = SchemaUtil.computeSizeMessage(i21, getMessageFieldSchema(i17), unsafe.getObject(obj, j5));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 61:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeBytesSize(i21, (ByteString) unsafe.getObject(obj, j5));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 62:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeUInt32Size(i21, oneofIntAt(j5, obj));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 63:
                    if (isOneofPresent(i21, i17, obj)) {
                        int oneofIntAt5 = oneofIntAt(j5, obj);
                        computeTagSize7 = CodedOutputStream.computeTagSize(i21);
                        computeInt32SizeNoTag2 = CodedOutputStream.computeInt32SizeNoTag(oneofIntAt5);
                        computeTagSize = computeInt32SizeNoTag2 + computeTagSize7;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 64:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeStringSizeNoTag = CodedOutputStream.computeTagSize(i21) + 4;
                        i18 = i + computeStringSizeNoTag;
                        z = true;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 65:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize5 = CodedOutputStream.computeTagSize(i21);
                        computeTagSize = computeTagSize5 + 8;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 66:
                    if (isOneofPresent(i21, i17, obj)) {
                        int oneofIntAt6 = oneofIntAt(j5, obj);
                        computeTagSize7 = CodedOutputStream.computeTagSize(i21);
                        computeInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag((oneofIntAt6 >> 31) ^ (oneofIntAt6 << 1));
                        computeTagSize = computeInt32SizeNoTag2 + computeTagSize7;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 67:
                    if (isOneofPresent(i21, i17, obj)) {
                        long oneofLongAt6 = oneofLongAt(j5, obj);
                        computeTagSize6 = CodedOutputStream.computeTagSize(i21);
                        computeUInt64SizeNoTag2 = CodedOutputStream.computeUInt64SizeNoTag((oneofLongAt6 >> 63) ^ (oneofLongAt6 << 1));
                        computeTagSize = computeTagSize6 + computeUInt64SizeNoTag2;
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                case 68:
                    if (isOneofPresent(i21, i17, obj)) {
                        computeTagSize = CodedOutputStream.computeGroupSize(i21, (MessageLite) unsafe.getObject(obj, j5), getMessageFieldSchema(i17));
                        z = true;
                        i18 = i + computeTagSize;
                        break;
                    }
                    z = true;
                    i18 = i;
                    break;
                default:
                    z = true;
                    i18 = i;
                    break;
            }
            i17 += 3;
            i20 = i25;
        }
        int serializedSize = unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(obj)) + i18;
        if (this.hasExtensions) {
            FieldSet extensions = this.extensionSchema.getExtensions(obj);
            int i30 = 0;
            int i31 = 0;
            while (true) {
                SmallSortedMap smallSortedMap = extensions.fields;
                if (i30 < smallSortedMap.getNumArrayEntries()) {
                    Map.Entry arrayEntryAt = smallSortedMap.getArrayEntryAt(i30);
                    i31 = FieldSet.computeFieldSize((GeneratedMessageLite.ExtensionDescriptor) arrayEntryAt.getKey(), arrayEntryAt.getValue()) + i31;
                    i30++;
                } else {
                    for (Map.Entry entry : smallSortedMap.getOverflowEntries()) {
                        i31 = FieldSet.computeFieldSize((GeneratedMessageLite.ExtensionDescriptor) entry.getKey(), entry.getValue()) + i31;
                    }
                    serializedSize += i31;
                }
            }
        }
        return serializedSize;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f2, code lost:
    
        if (r4 != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        if (r4 != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01f5, code lost:
    
        r8 = 1237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01f6, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.hashCode(java.lang.Object):int");
    }

    public final boolean isFieldPresent(int i, Object obj) {
        boolean equals;
        int i2 = this.buffer[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int typeAndOffsetAt = typeAndOffsetAt(i);
            long j2 = typeAndOffsetAt & 1048575;
            switch ((typeAndOffsetAt & 267386880) >>> 20) {
                case 0:
                    if (Double.doubleToRawLongBits(UnsafeUtil.getDouble(j2, obj)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(UnsafeUtil.getFloat(j2, obj)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (UnsafeUtil.getLong(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (UnsafeUtil.getLong(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (UnsafeUtil.getLong(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return UnsafeUtil.getBoolean(j2, obj);
                case 8:
                    Object object = UnsafeUtil.getObject(j2, obj);
                    if (object instanceof String) {
                        equals = ((String) object).isEmpty();
                        break;
                    } else if (object instanceof ByteString) {
                        equals = ByteString.EMPTY.equals(object);
                        break;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (UnsafeUtil.getObject(j2, obj) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    equals = ByteString.EMPTY.equals(UnsafeUtil.getObject(j2, obj));
                    break;
                case 11:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (UnsafeUtil.getLong(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (UnsafeUtil.getInt(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (UnsafeUtil.getLong(j2, obj) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (UnsafeUtil.getObject(j2, obj) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
            return !equals;
        }
        if (((1 << (i2 >>> 20)) & UnsafeUtil.getInt(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        boolean z;
        boolean z2;
        int i = 1048575;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            boolean z3 = true;
            if (i2 < this.checkInitializedCount) {
                int i4 = this.intArray[i2];
                int[] iArr = this.buffer;
                int i5 = iArr[i4];
                int typeAndOffsetAt = typeAndOffsetAt(i4);
                int i6 = iArr[i4 + 2];
                int i7 = i6 & 1048575;
                int i8 = 1 << (i6 >>> 20);
                if (i7 != i) {
                    if (i7 != 1048575) {
                        i3 = UNSAFE.getInt(obj, i7);
                    }
                    i = i7;
                }
                if ((268435456 & typeAndOffsetAt) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    if (i == 1048575) {
                        z2 = isFieldPresent(i4, obj);
                    } else if ((i3 & i8) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        return false;
                    }
                }
                int i9 = (267386880 & typeAndOffsetAt) >>> 20;
                if (i9 != 9 && i9 != 17) {
                    if (i9 != 27) {
                        if (i9 != 60 && i9 != 68) {
                            if (i9 != 49) {
                                if (i9 != 50) {
                                    continue;
                                } else {
                                    Object object = UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
                                    ((MapFieldSchemaLite) this.mapFieldSchema).getClass();
                                    MapFieldLite mapFieldLite = (MapFieldLite) object;
                                    if (!mapFieldLite.isEmpty() && ((MapEntryLite) getMapFieldDefaultEntry(i4)).metadata.valueType.getJavaType() == WireFormat$JavaType.MESSAGE) {
                                        Iterator it = mapFieldLite.values().iterator();
                                        Schema schema = null;
                                        while (true) {
                                            if (!it.hasNext()) {
                                                break;
                                            }
                                            Object next = it.next();
                                            if (schema == null) {
                                                schema = Protobuf.INSTANCE.schemaFor(next.getClass());
                                            }
                                            if (!schema.isInitialized(next)) {
                                                z3 = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z3) {
                                        return false;
                                    }
                                }
                            }
                        } else if (isOneofPresent(i5, i4, obj) && !getMessageFieldSchema(i4).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                            return false;
                        }
                    }
                    List list = (List) UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj);
                    if (!list.isEmpty()) {
                        Schema messageFieldSchema = getMessageFieldSchema(i4);
                        int i10 = 0;
                        while (true) {
                            if (i10 >= list.size()) {
                                break;
                            }
                            if (!messageFieldSchema.isInitialized(list.get(i10))) {
                                z3 = false;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (!z3) {
                        return false;
                    }
                } else {
                    if (i == 1048575) {
                        z3 = isFieldPresent(i4, obj);
                    } else if ((i8 & i3) == 0) {
                        z3 = false;
                    }
                    if (z3 && !getMessageFieldSchema(i4).isInitialized(UnsafeUtil.getObject(typeAndOffsetAt & 1048575, obj))) {
                        return false;
                    }
                }
                i2++;
            } else {
                if (this.hasExtensions && !this.extensionSchema.getExtensions(obj).isInitialized()) {
                    return false;
                }
                return true;
            }
        }
    }

    public final boolean isOneofPresent(int i, int i2, Object obj) {
        if (UnsafeUtil.getInt(this.buffer[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    @Override // com.google.protobuf.Schema
    public final void makeImmutable(Object obj) {
        if (!isMutable(obj)) {
            return;
        }
        if (obj instanceof GeneratedMessageLite) {
            GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
            generatedMessageLite.setMemoizedSerializedSize(Integer.MAX_VALUE);
            generatedMessageLite.memoizedHashCode = 0;
            generatedMessageLite.markImmutable();
        }
        int length = this.buffer.length;
        for (int i = 0; i < length; i += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i);
            long j = 1048575 & typeAndOffsetAt;
            int i2 = (typeAndOffsetAt & 267386880) >>> 20;
            Unsafe unsafe = UNSAFE;
            if (i2 != 9) {
                switch (i2) {
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.listFieldSchema.makeImmutableListAt(j, obj);
                        break;
                    case 50:
                        Object object = unsafe.getObject(obj, j);
                        if (object != null) {
                            ((MapFieldSchemaLite) this.mapFieldSchema).getClass();
                            ((MapFieldLite) object).makeImmutable();
                            unsafe.putObject(obj, j, object);
                            break;
                        } else {
                            break;
                        }
                }
            }
            if (isFieldPresent(i, obj)) {
                getMessageFieldSchema(i).makeImmutable(unsafe.getObject(obj, j));
            }
        }
        this.unknownFieldSchema.makeImmutable(obj);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(obj);
        }
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        checkMutable(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.buffer;
            if (i < iArr.length) {
                int typeAndOffsetAt = typeAndOffsetAt(i);
                long j = 1048575 & typeAndOffsetAt;
                int i2 = iArr[i];
                switch ((typeAndOffsetAt & 267386880) >>> 20) {
                    case 0:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.MEMORY_ACCESSOR.putDouble(obj, j, UnsafeUtil.getDouble(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 1:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.MEMORY_ACCESSOR.putFloat(obj, j, UnsafeUtil.getFloat(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 2:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 3:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 4:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 5:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 6:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 7:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.MEMORY_ACCESSOR.putBoolean(obj, j, UnsafeUtil.getBoolean(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 8:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putObject(j, obj, UnsafeUtil.getObject(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 9:
                        mergeMessage(i, obj, obj2);
                        break;
                    case 10:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putObject(j, obj, UnsafeUtil.getObject(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 11:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 12:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 13:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 14:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 15:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putInt(UnsafeUtil.getInt(j, obj2), j, obj);
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 16:
                        if (!isFieldPresent(i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putLong(obj, j, UnsafeUtil.getLong(j, obj2));
                            setFieldPresent(i, obj);
                            break;
                        }
                    case 17:
                        mergeMessage(i, obj, obj2);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.listFieldSchema.mergeListsAt(j, obj, obj2);
                        break;
                    case 50:
                        Class cls = SchemaUtil.GENERATED_MESSAGE_CLASS;
                        UnsafeUtil.putObject(j, obj, ((MapFieldSchemaLite) this.mapFieldSchema).mergeFrom(UnsafeUtil.getObject(j, obj), UnsafeUtil.getObject(j, obj2)));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!isOneofPresent(i2, i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putObject(j, obj, UnsafeUtil.getObject(j, obj2));
                            setOneofPresent(i2, i, obj);
                            break;
                        }
                    case 60:
                        mergeOneofMessage(i, obj, obj2);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!isOneofPresent(i2, i, obj2)) {
                            break;
                        } else {
                            UnsafeUtil.putObject(j, obj, UnsafeUtil.getObject(j, obj2));
                            setOneofPresent(i2, i, obj);
                            break;
                        }
                    case 68:
                        mergeOneofMessage(i, obj, obj2);
                        break;
                }
                i += 3;
            } else {
                Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
                UnknownFieldSchema unknownFieldSchema = this.unknownFieldSchema;
                unknownFieldSchema.setToMessage(obj, unknownFieldSchema.merge(unknownFieldSchema.getFromMessage(obj), unknownFieldSchema.getFromMessage(obj2)));
                if (this.hasExtensions) {
                    SchemaUtil.mergeExtensions(this.extensionSchema, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    public final void mergeMap(Object obj, int i, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) {
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        Object object = UnsafeUtil.getObject(typeAndOffsetAt, obj);
        MapFieldSchema mapFieldSchema = this.mapFieldSchema;
        if (object == null) {
            ((MapFieldSchemaLite) mapFieldSchema).getClass();
            object = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
            UnsafeUtil.putObject(typeAndOffsetAt, obj, object);
        } else {
            MapFieldSchemaLite mapFieldSchemaLite = (MapFieldSchemaLite) mapFieldSchema;
            mapFieldSchemaLite.getClass();
            if (!((MapFieldLite) object).isMutable()) {
                mapFieldSchemaLite.getClass();
                MapFieldLite mutableCopy = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
                mapFieldSchemaLite.mergeFrom(mutableCopy, object);
                UnsafeUtil.putObject(typeAndOffsetAt, obj, mutableCopy);
                object = mutableCopy;
            }
        }
        MapFieldSchemaLite mapFieldSchemaLite2 = (MapFieldSchemaLite) mapFieldSchema;
        mapFieldSchemaLite2.getClass();
        MapFieldLite mapFieldLite = (MapFieldLite) object;
        mapFieldSchemaLite2.getClass();
        MapEntryLite.Metadata metadata = ((MapEntryLite) obj2).metadata;
        CodedInputStreamReader codedInputStreamReader = (CodedInputStreamReader) reader;
        codedInputStreamReader.requireWireType(2);
        CodedInputStream codedInputStream = codedInputStreamReader.input;
        int pushLimit = codedInputStream.pushLimit(codedInputStream.readUInt32());
        Object obj3 = metadata.defaultKey;
        Object obj4 = metadata.defaultValue;
        Object obj5 = obj4;
        while (true) {
            try {
                int fieldNumber = codedInputStreamReader.getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || codedInputStream.isAtEnd()) {
                    break;
                }
                if (fieldNumber != 1) {
                    if (fieldNumber != 2) {
                        try {
                            if (!codedInputStreamReader.skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!codedInputStreamReader.skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        obj5 = codedInputStreamReader.readField(metadata.valueType, obj4.getClass(), extensionRegistryLite);
                    }
                } else {
                    obj3 = codedInputStreamReader.readField(metadata.keyType, null, null);
                }
            } finally {
                codedInputStream.popLimit(pushLimit);
            }
        }
        mapFieldLite.put(obj3, obj5);
    }

    public final void mergeMessage(int i, Object obj, Object obj2) {
        if (!isFieldPresent(i, obj2)) {
            return;
        }
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        Unsafe unsafe = UNSAFE;
        Object object = unsafe.getObject(obj2, typeAndOffsetAt);
        if (object != null) {
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isFieldPresent(i, obj)) {
                if (!isMutable(object)) {
                    unsafe.putObject(obj, typeAndOffsetAt, object);
                } else {
                    GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(newInstance, object);
                    unsafe.putObject(obj, typeAndOffsetAt, newInstance);
                }
                setFieldPresent(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, typeAndOffsetAt);
            if (!isMutable(object2)) {
                GeneratedMessageLite newInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(newInstance2, object2);
                unsafe.putObject(obj, typeAndOffsetAt, newInstance2);
                object2 = newInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.buffer[i] + " is present but null: " + obj2);
    }

    public final void mergeOneofMessage(int i, Object obj, Object obj2) {
        int[] iArr = this.buffer;
        int i2 = iArr[i];
        if (!isOneofPresent(i2, i, obj2)) {
            return;
        }
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        Unsafe unsafe = UNSAFE;
        Object object = unsafe.getObject(obj2, typeAndOffsetAt);
        if (object != null) {
            Schema messageFieldSchema = getMessageFieldSchema(i);
            if (!isOneofPresent(i2, i, obj)) {
                if (!isMutable(object)) {
                    unsafe.putObject(obj, typeAndOffsetAt, object);
                } else {
                    GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(newInstance, object);
                    unsafe.putObject(obj, typeAndOffsetAt, newInstance);
                }
                setOneofPresent(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, typeAndOffsetAt);
            if (!isMutable(object2)) {
                GeneratedMessageLite newInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(newInstance2, object2);
                unsafe.putObject(obj, typeAndOffsetAt, newInstance2);
                object2 = newInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
    }

    public final Object mutableMessageFieldForMerge(int i, Object obj) {
        Schema messageFieldSchema = getMessageFieldSchema(i);
        long typeAndOffsetAt = typeAndOffsetAt(i) & 1048575;
        if (!isFieldPresent(i, obj)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, typeAndOffsetAt);
        if (isMutable(object)) {
            return object;
        }
        GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(newInstance, object);
        }
        return newInstance;
    }

    public final Object mutableOneofMessageFieldForMerge(int i, int i2, Object obj) {
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        if (!isOneofPresent(i, i2, obj)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, typeAndOffsetAt(i2) & 1048575);
        if (isMutable(object)) {
            return object;
        }
        GeneratedMessageLite newInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(newInstance, object);
        }
        return newInstance;
    }

    @Override // com.google.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        ((NewInstanceSchemaLite) this.newInstanceSchema).getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) this.defaultInstance;
        generatedMessageLite.getClass();
        return (GeneratedMessageLite) generatedMessageLite.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    public final int parseMapField(Object obj, byte[] bArr, int i, int i2, int i3, long j, ArrayDecoders.Registers registers) {
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i3);
        Unsafe unsafe = UNSAFE;
        Object object = unsafe.getObject(obj, j);
        MapFieldSchemaLite mapFieldSchemaLite = (MapFieldSchemaLite) this.mapFieldSchema;
        mapFieldSchemaLite.getClass();
        if (!((MapFieldLite) object).isMutable()) {
            mapFieldSchemaLite.getClass();
            MapFieldLite mutableCopy = MapFieldLite.EMPTY_MAP_FIELD.mutableCopy();
            mapFieldSchemaLite.mergeFrom(mutableCopy, object);
            unsafe.putObject(obj, j, mutableCopy);
            object = mutableCopy;
        }
        mapFieldSchemaLite.getClass();
        MapEntryLite.Metadata metadata = ((MapEntryLite) mapFieldDefaultEntry).metadata;
        mapFieldSchemaLite.getClass();
        MapFieldLite mapFieldLite = (MapFieldLite) object;
        int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
        int i4 = registers.int1;
        if (i4 >= 0 && i4 <= i2 - decodeVarint32) {
            int i5 = decodeVarint32 + i4;
            Object obj2 = metadata.defaultKey;
            Object obj3 = metadata.defaultValue;
            Object obj4 = obj2;
            Object obj5 = obj3;
            while (decodeVarint32 < i5) {
                int i6 = decodeVarint32 + 1;
                byte b = bArr[decodeVarint32];
                if (b < 0) {
                    i6 = ArrayDecoders.decodeVarint32(b, bArr, i6, registers);
                    b = registers.int1;
                }
                int i7 = b >>> 3;
                int i8 = b & 7;
                if (i7 != 1) {
                    if (i7 == 2 && i8 == metadata.valueType.getWireType()) {
                        decodeVarint32 = decodeMapEntryValue(bArr, i6, i2, metadata.valueType, obj3.getClass(), registers);
                        obj5 = registers.object1;
                    }
                    decodeVarint32 = ArrayDecoders.skipField(b, bArr, i6, i2, registers);
                } else if (i8 == metadata.keyType.getWireType()) {
                    decodeVarint32 = decodeMapEntryValue(bArr, i6, i2, metadata.keyType, null, registers);
                    obj4 = registers.object1;
                } else {
                    decodeVarint32 = ArrayDecoders.skipField(b, bArr, i6, i2, registers);
                }
            }
            if (decodeVarint32 == i5) {
                mapFieldLite.put(obj4, obj5);
                return i5;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int parseOneofField(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ArrayDecoders.Registers registers) {
        boolean z;
        boolean z2;
        int mergeMessageField;
        long j2 = this.buffer[i8 + 2] & 1048575;
        Unsafe unsafe = UNSAFE;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(ArrayDecoders.decodeFixed64(i, bArr))));
                    int i9 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i9;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(ArrayDecoders.decodeFixed32(i, bArr))));
                    int i10 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i10;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(obj, j, Long.valueOf(registers.long1));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint64;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(obj, j, Integer.valueOf(registers.int1));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint32;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(ArrayDecoders.decodeFixed64(i, bArr)));
                    int i11 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i11;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(ArrayDecoders.decodeFixed32(i, bArr)));
                    int i12 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i12;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    if (registers.long1 != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    unsafe.putObject(obj, j, Boolean.valueOf(z));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint642;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int decodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i13 = registers.int1;
                    if (i13 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else {
                        if ((i6 & QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT) != 0) {
                            if (Utf8.processor.partialIsValidUtf8(decodeVarint322, decodeVarint322 + i13, bArr) == 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!z2) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                        }
                        unsafe.putObject(obj, j, new String(bArr, decodeVarint322, i13, Internal.UTF_8));
                        decodeVarint322 += i13;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint322;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    Object mutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(i4, i8, obj);
                    mergeMessageField = ArrayDecoders.mergeMessageField(mutableOneofMessageFieldForMerge, getMessageFieldSchema(i8), bArr, i, i2, registers);
                    storeOneofMessageField(i4, i8, obj, mutableOneofMessageFieldForMerge);
                    break;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    int decodeBytes = ArrayDecoders.decodeBytes(bArr, i, registers);
                    unsafe.putObject(obj, j, registers.object1);
                    unsafe.putInt(obj, j2, i4);
                    return decodeBytes;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int decodeVarint323 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i14 = registers.int1;
                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i8);
                    if (enumFieldVerifier != null && !enumFieldVerifier.isInRange(i14)) {
                        getMutableUnknownFields(obj).storeField(i3, Long.valueOf(i14));
                    } else {
                        unsafe.putObject(obj, j, Integer.valueOf(i14));
                        unsafe.putInt(obj, j2, i4);
                    }
                    return decodeVarint323;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    int decodeVarint324 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(obj, j, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint324;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    int decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(obj, j, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                    unsafe.putInt(obj, j2, i4);
                    return decodeVarint643;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    Object mutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(i4, i8, obj);
                    mergeMessageField = ArrayDecoders.mergeGroupField(mutableOneofMessageFieldForMerge2, getMessageFieldSchema(i8), bArr, i, i2, (i3 & (-8)) | 4, registers);
                    storeOneofMessageField(i4, i8, obj, mutableOneofMessageFieldForMerge2);
                    break;
                }
                return i;
            default:
                return i;
        }
        return mergeMessageField;
    }

    /* JADX WARN: Code restructure failed: missing block: B:260:0x03a3, code lost:
    
        if (r0 != r19) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x03ef, code lost:
    
        r14 = r35;
        r12 = r36;
        r3 = r37;
        r13 = r38;
        r1 = r39;
        r11 = r40;
        r4 = r20;
        r6 = r24;
        r2 = r28;
        r5 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x03d0, code lost:
    
        if (r0 != r14) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x03ed, code lost:
    
        if (r0 != r14) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0746, code lost:
    
        if (r5 == r1) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0748, code lost:
    
        r32.putInt(r12, r5, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x074e, code lost:
    
        r10 = r34.checkInitializedCount;
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0754, code lost:
    
        if (r10 >= r34.repeatedFieldOffsetStart) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0756, code lost:
    
        r3 = (com.google.protobuf.UnknownFieldSetLite) filterMapUnknownEnumValues(r35, r34.intArray[r10], r3, r34.unknownFieldSchema, r35);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x076c, code lost:
    
        if (r3 == null) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x076e, code lost:
    
        r34.unknownFieldSchema.setBuilderToMessage(r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0773, code lost:
    
        if (r8 != 0) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0775, code lost:
    
        if (r7 != r6) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x077c, code lost:
    
        throw com.google.protobuf.InvalidProtocolBufferException.parseFailure();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0781, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x077d, code lost:
    
        if (r7 > r6) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x077f, code lost:
    
        if (r9 != r8) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0786, code lost:
    
        throw com.google.protobuf.InvalidProtocolBufferException.parseFailure();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:111:0x058d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x00b4. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x06f6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x06fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int parseProto2Message(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.protobuf.ArrayDecoders.Registers r40) {
        /*
            Method dump skipped, instructions count: 2040
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.parseProto2Message(java.lang.Object, byte[], int, int, int, com.google.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    public final int parseRepeatedField(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, ArrayDecoders.Registers registers) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int decodeVarint32List;
        int i8;
        int i9 = i;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(obj, j2);
        if (!((AbstractProtobufList) protobufList).isMutable) {
            int size = protobufList.size();
            if (size == 0) {
                i8 = 10;
            } else {
                i8 = size * 2;
            }
            protobufList = protobufList.mutableCopyWithCapacity(i8);
            unsafe.putObject(obj, j2, protobufList);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedDoubleList(bArr, i9, protobufList, registers);
                }
                if (i5 == 1) {
                    DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
                    doubleArrayList.addDouble(Double.longBitsToDouble(ArrayDecoders.decodeFixed64(i9, bArr)));
                    int i10 = i9 + 8;
                    while (i10 < i2) {
                        int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                        if (i3 == registers.int1) {
                            doubleArrayList.addDouble(Double.longBitsToDouble(ArrayDecoders.decodeFixed64(decodeVarint32, bArr)));
                            i10 = decodeVarint32 + 8;
                        } else {
                            return i10;
                        }
                    }
                    return i10;
                }
                return i9;
            case 19:
            case 36:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFloatList(bArr, i9, protobufList, registers);
                }
                if (i5 == 5) {
                    FloatArrayList floatArrayList = (FloatArrayList) protobufList;
                    floatArrayList.addFloat(Float.intBitsToFloat(ArrayDecoders.decodeFixed32(i9, bArr)));
                    int i11 = i9 + 4;
                    while (i11 < i2) {
                        int decodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i11, registers);
                        if (i3 == registers.int1) {
                            floatArrayList.addFloat(Float.intBitsToFloat(ArrayDecoders.decodeFixed32(decodeVarint322, bArr)));
                            i11 = decodeVarint322 + 4;
                        } else {
                            return i11;
                        }
                    }
                    return i11;
                }
                return i9;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint64List(bArr, i9, protobufList, registers);
                }
                if (i5 == 0) {
                    LongArrayList longArrayList = (LongArrayList) protobufList;
                    int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i9, registers);
                    longArrayList.addLong(registers.long1);
                    while (decodeVarint64 < i2) {
                        int decodeVarint323 = ArrayDecoders.decodeVarint32(bArr, decodeVarint64, registers);
                        if (i3 == registers.int1) {
                            decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, decodeVarint323, registers);
                            longArrayList.addLong(registers.long1);
                        } else {
                            return decodeVarint64;
                        }
                    }
                    return decodeVarint64;
                }
                return i9;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint32List(bArr, i9, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList, registers);
                }
                return i9;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed64List(bArr, i9, protobufList, registers);
                }
                if (i5 == 1) {
                    LongArrayList longArrayList2 = (LongArrayList) protobufList;
                    longArrayList2.addLong(ArrayDecoders.decodeFixed64(i9, bArr));
                    int i12 = i9 + 8;
                    while (i12 < i2) {
                        int decodeVarint324 = ArrayDecoders.decodeVarint32(bArr, i12, registers);
                        if (i3 == registers.int1) {
                            longArrayList2.addLong(ArrayDecoders.decodeFixed64(decodeVarint324, bArr));
                            i12 = decodeVarint324 + 8;
                        } else {
                            return i12;
                        }
                    }
                    return i12;
                }
                return i9;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed32List(bArr, i9, protobufList, registers);
                }
                if (i5 == 5) {
                    IntArrayList intArrayList = (IntArrayList) protobufList;
                    intArrayList.addInt(ArrayDecoders.decodeFixed32(i9, bArr));
                    int i13 = i9 + 4;
                    while (i13 < i2) {
                        int decodeVarint325 = ArrayDecoders.decodeVarint32(bArr, i13, registers);
                        if (i3 == registers.int1) {
                            intArrayList.addInt(ArrayDecoders.decodeFixed32(decodeVarint325, bArr));
                            i13 = decodeVarint325 + 4;
                        } else {
                            return i13;
                        }
                    }
                    return i13;
                }
                return i9;
            case 25:
            case 42:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedBoolList(bArr, i9, protobufList, registers);
                }
                if (i5 == 0) {
                    BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
                    int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i9, registers);
                    if (registers.long1 != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    booleanArrayList.addBoolean(z);
                    while (decodeVarint642 < i2) {
                        int decodeVarint326 = ArrayDecoders.decodeVarint32(bArr, decodeVarint642, registers);
                        if (i3 == registers.int1) {
                            decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, decodeVarint326, registers);
                            if (registers.long1 != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            booleanArrayList.addBoolean(z2);
                        } else {
                            return decodeVarint642;
                        }
                    }
                    return decodeVarint642;
                }
                return i9;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int decodeVarint327 = ArrayDecoders.decodeVarint32(bArr, i9, registers);
                        int i14 = registers.int1;
                        if (i14 >= 0) {
                            if (i14 == 0) {
                                protobufList.add("");
                            } else {
                                protobufList.add(new String(bArr, decodeVarint327, i14, Internal.UTF_8));
                                decodeVarint327 += i14;
                            }
                            while (decodeVarint327 < i2) {
                                int decodeVarint328 = ArrayDecoders.decodeVarint32(bArr, decodeVarint327, registers);
                                if (i3 == registers.int1) {
                                    decodeVarint327 = ArrayDecoders.decodeVarint32(bArr, decodeVarint328, registers);
                                    int i15 = registers.int1;
                                    if (i15 >= 0) {
                                        if (i15 == 0) {
                                            protobufList.add("");
                                        } else {
                                            protobufList.add(new String(bArr, decodeVarint327, i15, Internal.UTF_8));
                                            decodeVarint327 += i15;
                                        }
                                    } else {
                                        throw InvalidProtocolBufferException.negativeSize();
                                    }
                                } else {
                                    return decodeVarint327;
                                }
                            }
                            return decodeVarint327;
                        }
                        throw InvalidProtocolBufferException.negativeSize();
                    }
                    int decodeVarint329 = ArrayDecoders.decodeVarint32(bArr, i9, registers);
                    int i16 = registers.int1;
                    if (i16 >= 0) {
                        if (i16 == 0) {
                            protobufList.add("");
                        } else {
                            int i17 = decodeVarint329 + i16;
                            if (Utf8.processor.partialIsValidUtf8(decodeVarint329, i17, bArr) == 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                protobufList.add(new String(bArr, decodeVarint329, i16, Internal.UTF_8));
                                decodeVarint329 = i17;
                            } else {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                        }
                        while (decodeVarint329 < i2) {
                            int decodeVarint3210 = ArrayDecoders.decodeVarint32(bArr, decodeVarint329, registers);
                            if (i3 == registers.int1) {
                                decodeVarint329 = ArrayDecoders.decodeVarint32(bArr, decodeVarint3210, registers);
                                int i18 = registers.int1;
                                if (i18 >= 0) {
                                    if (i18 == 0) {
                                        protobufList.add("");
                                    } else {
                                        int i19 = decodeVarint329 + i18;
                                        if (Utf8.processor.partialIsValidUtf8(decodeVarint329, i19, bArr) == 0) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        if (z4) {
                                            protobufList.add(new String(bArr, decodeVarint329, i18, Internal.UTF_8));
                                            decodeVarint329 = i19;
                                        } else {
                                            throw InvalidProtocolBufferException.invalidUtf8();
                                        }
                                    }
                                } else {
                                    throw InvalidProtocolBufferException.negativeSize();
                                }
                            } else {
                                return decodeVarint329;
                            }
                        }
                        return decodeVarint329;
                    }
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return i9;
            case 27:
                if (i5 == 2) {
                    return ArrayDecoders.decodeMessageList(getMessageFieldSchema(i6), i3, bArr, i, i2, protobufList, registers);
                }
                return i9;
            case 28:
                if (i5 == 2) {
                    int decodeVarint3211 = ArrayDecoders.decodeVarint32(bArr, i9, registers);
                    int i20 = registers.int1;
                    if (i20 >= 0) {
                        if (i20 <= bArr.length - decodeVarint3211) {
                            if (i20 == 0) {
                                protobufList.add(ByteString.EMPTY);
                            } else {
                                protobufList.add(ByteString.copyFrom(bArr, decodeVarint3211, i20));
                                decodeVarint3211 += i20;
                            }
                            while (decodeVarint3211 < i2) {
                                int decodeVarint3212 = ArrayDecoders.decodeVarint32(bArr, decodeVarint3211, registers);
                                if (i3 == registers.int1) {
                                    decodeVarint3211 = ArrayDecoders.decodeVarint32(bArr, decodeVarint3212, registers);
                                    int i21 = registers.int1;
                                    if (i21 >= 0) {
                                        if (i21 <= bArr.length - decodeVarint3211) {
                                            if (i21 == 0) {
                                                protobufList.add(ByteString.EMPTY);
                                            } else {
                                                protobufList.add(ByteString.copyFrom(bArr, decodeVarint3211, i21));
                                                decodeVarint3211 += i21;
                                            }
                                        } else {
                                            throw InvalidProtocolBufferException.truncatedMessage();
                                        }
                                    } else {
                                        throw InvalidProtocolBufferException.negativeSize();
                                    }
                                } else {
                                    return decodeVarint3211;
                                }
                            }
                            return decodeVarint3211;
                        }
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return i9;
            case 30:
            case 44:
                if (i5 == 2) {
                    decodeVarint32List = ArrayDecoders.decodePackedVarint32List(bArr, i9, protobufList, registers);
                } else {
                    if (i5 == 0) {
                        decodeVarint32List = ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList, registers);
                    }
                    return i9;
                }
                SchemaUtil.filterUnknownEnumList(obj, i4, protobufList, getEnumFieldVerifier(i6), (Object) null, this.unknownFieldSchema);
                return decodeVarint32List;
            case 33:
            case 47:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt32List(bArr, i9, protobufList, registers);
                }
                if (i5 == 0) {
                    IntArrayList intArrayList2 = (IntArrayList) protobufList;
                    int decodeVarint3213 = ArrayDecoders.decodeVarint32(bArr, i9, registers);
                    intArrayList2.addInt(CodedInputStream.decodeZigZag32(registers.int1));
                    while (decodeVarint3213 < i2) {
                        int decodeVarint3214 = ArrayDecoders.decodeVarint32(bArr, decodeVarint3213, registers);
                        if (i3 == registers.int1) {
                            decodeVarint3213 = ArrayDecoders.decodeVarint32(bArr, decodeVarint3214, registers);
                            intArrayList2.addInt(CodedInputStream.decodeZigZag32(registers.int1));
                        } else {
                            return decodeVarint3213;
                        }
                    }
                    return decodeVarint3213;
                }
                return i9;
            case 34:
            case 48:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt64List(bArr, i9, protobufList, registers);
                }
                if (i5 == 0) {
                    LongArrayList longArrayList3 = (LongArrayList) protobufList;
                    int decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i9, registers);
                    longArrayList3.addLong(CodedInputStream.decodeZigZag64(registers.long1));
                    while (decodeVarint643 < i2) {
                        int decodeVarint3215 = ArrayDecoders.decodeVarint32(bArr, decodeVarint643, registers);
                        if (i3 == registers.int1) {
                            decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, decodeVarint3215, registers);
                            longArrayList3.addLong(CodedInputStream.decodeZigZag64(registers.long1));
                        } else {
                            return decodeVarint643;
                        }
                    }
                    return decodeVarint643;
                }
                return i9;
            case 49:
                if (i5 == 3) {
                    Schema messageFieldSchema = getMessageFieldSchema(i6);
                    int i22 = (i3 & (-8)) | 4;
                    i9 = ArrayDecoders.decodeGroupField(messageFieldSchema, bArr, i, i2, i22, registers);
                    protobufList.add(registers.object1);
                    while (i9 < i2) {
                        int decodeVarint3216 = ArrayDecoders.decodeVarint32(bArr, i9, registers);
                        if (i3 == registers.int1) {
                            i9 = ArrayDecoders.decodeGroupField(messageFieldSchema, bArr, decodeVarint3216, i2, i22, registers);
                            protobufList.add(registers.object1);
                        }
                    }
                }
                return i9;
            default:
                return i9;
        }
    }

    public final void readGroupList(Object obj, long j, Reader reader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        List mutableListAt = this.listFieldSchema.mutableListAt(j, obj);
        CodedInputStreamReader codedInputStreamReader = (CodedInputStreamReader) reader;
        int i = codedInputStreamReader.tag;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            codedInputStreamReader.mergeGroupFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            mutableListAt.add(newInstance);
            CodedInputStream codedInputStream = codedInputStreamReader.input;
            if (!codedInputStream.isAtEnd() && codedInputStreamReader.nextTag == 0) {
                readTag = codedInputStream.readTag();
            } else {
                return;
            }
        } while (readTag == i);
        codedInputStreamReader.nextTag = readTag;
    }

    public final void readMessageList(Object obj, int i, Reader reader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int readTag;
        List mutableListAt = this.listFieldSchema.mutableListAt(i & 1048575, obj);
        CodedInputStreamReader codedInputStreamReader = (CodedInputStreamReader) reader;
        int i2 = codedInputStreamReader.tag;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            GeneratedMessageLite newInstance = schema.newInstance();
            codedInputStreamReader.mergeMessageFieldInternal(newInstance, schema, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            mutableListAt.add(newInstance);
            CodedInputStream codedInputStream = codedInputStreamReader.input;
            if (!codedInputStream.isAtEnd() && codedInputStreamReader.nextTag == 0) {
                readTag = codedInputStream.readTag();
            } else {
                return;
            }
        } while (readTag == i2);
        codedInputStreamReader.nextTag = readTag;
    }

    public final void readString(Object obj, int i, Reader reader) {
        boolean z;
        if ((536870912 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            CodedInputStreamReader codedInputStreamReader = (CodedInputStreamReader) reader;
            codedInputStreamReader.requireWireType(2);
            UnsafeUtil.putObject(i & 1048575, obj, codedInputStreamReader.input.readStringRequireUtf8());
        } else {
            if (this.lite) {
                CodedInputStreamReader codedInputStreamReader2 = (CodedInputStreamReader) reader;
                codedInputStreamReader2.requireWireType(2);
                UnsafeUtil.putObject(i & 1048575, obj, codedInputStreamReader2.input.readString());
                return;
            }
            UnsafeUtil.putObject(i & 1048575, obj, ((CodedInputStreamReader) reader).readBytes());
        }
    }

    public final void readStringList(Object obj, int i, Reader reader) {
        boolean z;
        if ((536870912 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        ListFieldSchema listFieldSchema = this.listFieldSchema;
        if (z) {
            ((CodedInputStreamReader) reader).readStringListInternal(listFieldSchema.mutableListAt(i & 1048575, obj), true);
        } else {
            ((CodedInputStreamReader) reader).readStringListInternal(listFieldSchema.mutableListAt(i & 1048575, obj), false);
        }
    }

    public final void setFieldPresent(int i, Object obj) {
        int i2 = this.buffer[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt((1 << (i2 >>> 20)) | UnsafeUtil.getInt(j, obj), j, obj);
    }

    public final void setOneofPresent(int i, int i2, Object obj) {
        UnsafeUtil.putInt(i, this.buffer[i2 + 2] & 1048575, obj);
    }

    public final int slowPositionForFieldNumber(int i, int i2) {
        int[] iArr = this.buffer;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final void storeMessageField(int i, Object obj, Object obj2) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i) & 1048575, obj2);
        setFieldPresent(i, obj);
    }

    public final void storeOneofMessageField(int i, int i2, Object obj, Object obj2) {
        UNSAFE.putObject(obj, typeAndOffsetAt(i2) & 1048575, obj2);
        setOneofPresent(i, i2, obj);
    }

    public final int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:239:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeFieldsInAscendingOrderProto3(java.lang.Object r18, com.google.protobuf.CodedOutputStreamWriter r19) {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.writeFieldsInAscendingOrderProto3(java.lang.Object, com.google.protobuf.CodedOutputStreamWriter):void");
    }

    public final void writeMapHelper(CodedOutputStreamWriter codedOutputStreamWriter, int i, Object obj, int i2) {
        if (obj != null) {
            Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i2);
            MapFieldSchema mapFieldSchema = this.mapFieldSchema;
            ((MapFieldSchemaLite) mapFieldSchema).getClass();
            MapEntryLite.Metadata metadata = ((MapEntryLite) mapFieldDefaultEntry).metadata;
            ((MapFieldSchemaLite) mapFieldSchema).getClass();
            CodedOutputStream codedOutputStream = codedOutputStreamWriter.output;
            codedOutputStream.getClass();
            for (Map.Entry entry : ((MapFieldLite) obj).entrySet()) {
                codedOutputStream.writeTag(i, 2);
                codedOutputStream.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()));
                MapEntryLite.writeTo(codedOutputStream, metadata, entry.getKey(), entry.getValue());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:332:0x05f8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0a0c  */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeTo(java.lang.Object r23, com.google.protobuf.CodedOutputStreamWriter r24) {
        /*
            Method dump skipped, instructions count: 2884
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.writeTo(java.lang.Object, com.google.protobuf.CodedOutputStreamWriter):void");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // com.google.protobuf.Schema
    public final void mergeFrom(java.lang.Object r25, com.google.protobuf.Reader r26, com.google.protobuf.ExtensionRegistryLite r27) {
        /*
            Method dump skipped, instructions count: 2046
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.mergeFrom(java.lang.Object, com.google.protobuf.Reader, com.google.protobuf.ExtensionRegistryLite):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x02a9, code lost:
    
        if (r0 != r32) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02ad, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02ff, code lost:
    
        r2 = r19;
        r6 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02dd, code lost:
    
        if (r0 != r15) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02fd, code lost:
    
        if (r0 != r15) goto L120;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x00a0. Please report as an issue. */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mergeFrom(java.lang.Object r30, byte[] r31, int r32, int r33, com.google.protobuf.ArrayDecoders.Registers r34) {
        /*
            Method dump skipped, instructions count: 900
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.mergeFrom(java.lang.Object, byte[], int, int, com.google.protobuf.ArrayDecoders$Registers):void");
    }
}
