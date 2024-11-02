.class public final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Lcom/google/protobuf/MessageLite;

.field public final extensionSchema:Lcom/google/protobuf/ExtensionSchema;

.field public final hasExtensions:Z

.field public final intArray:[I

.field public final listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

.field public final lite:Z

.field public final mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

.field public final objects:[Ljava/lang/Object;

.field public final proto3:Z

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

.field public final useCachedSizeField:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/protobuf/UnsafeUtil$1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sput-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema;",
            "Lcom/google/protobuf/ExtensionSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    .line 11
    .line 12
    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->lite:Z

    .line 15
    .line 16
    iput-boolean p6, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    .line 17
    .line 18
    if-eqz p14, :cond_0

    .line 19
    .line 20
    invoke-virtual {p14, p5}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 30
    .line 31
    iput-boolean p7, p0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 32
    .line 33
    iput-object p8, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 34
    .line 35
    iput p9, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 36
    .line 37
    iput p10, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 38
    .line 39
    iput-object p11, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    .line 40
    .line 41
    iput-object p12, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 42
    .line 43
    iput-object p13, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 44
    .line 45
    iput-object p14, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 48
    .line 49
    iput-object p15, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 50
    .line 51
    return-void
.end method

.method public static checkMutable(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Mutating immutable message: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    aget p3, v0, p3

    .line 8
    .line 9
    packed-switch p3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string/jumbo p1, "unsupported field type."

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :pswitch_3
    sget-object p3, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 64
    .line 65
    invoke-virtual {p3, p4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 80
    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :pswitch_6
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_7
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 117
    .line 118
    .line 119
    move-result-wide p2

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_8
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 136
    .line 137
    :goto_0
    add-int/lit8 p0, p1, 0x4

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :pswitch_9
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 141
    .line 142
    .line 143
    move-result-wide p2

    .line 144
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 145
    .line 146
    .line 147
    move-result-wide p2

    .line 148
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 153
    .line 154
    :goto_1
    add-int/lit8 p0, p1, 0x8

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    goto :goto_3

    .line 162
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 167
    .line 168
    const-wide/16 p3, 0x0

    .line 169
    .line 170
    cmp-long p1, p1, p3

    .line 171
    .line 172
    if-eqz p1, :cond_0

    .line 173
    .line 174
    const/4 p1, 0x1

    .line 175
    goto :goto_2

    .line 176
    :cond_0
    const/4 p1, 0x0

    .line 177
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 182
    .line 183
    :goto_3
    return p0

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4
    .line 5
    sget-object v1, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public static isMutable(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static listAt(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public static newSchema(Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 50

    move-object/from16 v0, p0

    .line 1
    instance-of v1, v0, Lcom/google/protobuf/RawMessageInfo;

    sget-object v2, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v1, :cond_35

    .line 2
    check-cast v0, Lcom/google/protobuf/RawMessageInfo;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/RawMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v12, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    if-ne v1, v12, :cond_0

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    move/from16 v19, v11

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 5
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const v14, 0xd800

    if-lt v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v15, v13, 0x1

    .line 6
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_2

    move v13, v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x1

    :cond_2
    add-int/lit8 v13, v15, 0x1

    .line 7
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xd

    if-lt v15, v14, :cond_4

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v17, v16

    :goto_2
    add-int/lit8 v18, v13, 0x1

    .line 8
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_3

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v17

    or-int/2addr v15, v13

    add-int/lit8 v17, v17, 0xd

    move/from16 v13, v18

    goto :goto_2

    :cond_3
    shl-int v13, v13, v17

    or-int/2addr v15, v13

    move/from16 v13, v18

    :cond_4
    if-nez v15, :cond_5

    move-object v8, v2

    move v2, v11

    move v3, v2

    move v4, v3

    move v5, v4

    move v7, v5

    move/from16 v17, v7

    goto/16 :goto_10

    :cond_5
    add-int/lit8 v2, v13, 0x1

    .line 9
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_7

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v15, v16

    :goto_3
    add-int/lit8 v17, v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_6

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v15

    or-int/2addr v13, v2

    add-int/lit8 v15, v15, 0xd

    move/from16 v2, v17

    goto :goto_3

    :cond_6
    shl-int/2addr v2, v15

    or-int/2addr v13, v2

    move/from16 v2, v17

    :cond_7
    add-int/lit8 v15, v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_9

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v17, v16

    :goto_4
    add-int/lit8 v18, v15, 0x1

    .line 12
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v14, :cond_8

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int/2addr v2, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_4

    :cond_8
    shl-int v15, v15, v17

    or-int/2addr v2, v15

    move/from16 v15, v18

    :cond_9
    add-int/lit8 v17, v15, 0x1

    .line 13
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v14, :cond_b

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v17

    move/from16 v17, v16

    :goto_5
    add-int/lit8 v20, v3, 0x1

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_a

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int/2addr v15, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v20

    goto :goto_5

    :cond_a
    shl-int v3, v3, v17

    or-int/2addr v15, v3

    move/from16 v3, v20

    goto :goto_6

    :cond_b
    move/from16 v3, v17

    :goto_6
    add-int/lit8 v17, v3, 0x1

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_d

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v4, v17

    move/from16 v17, v16

    :goto_7
    add-int/lit8 v21, v4, 0x1

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v14, :cond_c

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v17

    or-int/2addr v3, v4

    add-int/lit8 v17, v17, 0xd

    move/from16 v4, v21

    goto :goto_7

    :cond_c
    shl-int v4, v4, v17

    or-int/2addr v3, v4

    move/from16 v4, v21

    goto :goto_8

    :cond_d
    move/from16 v4, v17

    :goto_8
    add-int/lit8 v17, v4, 0x1

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v14, :cond_f

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v17

    move/from16 v17, v16

    :goto_9
    add-int/lit8 v22, v5, 0x1

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_e

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v17, v17, 0xd

    move/from16 v5, v22

    goto :goto_9

    :cond_e
    shl-int v5, v5, v17

    or-int/2addr v4, v5

    move/from16 v5, v22

    goto :goto_a

    :cond_f
    move/from16 v5, v17

    :goto_a
    add-int/lit8 v17, v5, 0x1

    .line 19
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_11

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v11, v17

    move/from16 v17, v16

    :goto_b
    add-int/lit8 v23, v11, 0x1

    .line 20
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v14, :cond_10

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v17

    or-int/2addr v5, v11

    add-int/lit8 v17, v17, 0xd

    move/from16 v11, v23

    goto :goto_b

    :cond_10
    shl-int v11, v11, v17

    or-int/2addr v5, v11

    move/from16 v11, v23

    goto :goto_c

    :cond_11
    move/from16 v11, v17

    :goto_c
    add-int/lit8 v17, v11, 0x1

    .line 21
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v14, :cond_13

    and-int/lit16 v11, v11, 0x1fff

    move/from16 v7, v17

    move/from16 v17, v16

    :goto_d
    add-int/lit8 v24, v7, 0x1

    .line 22
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v14, :cond_12

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v17

    or-int/2addr v11, v7

    add-int/lit8 v17, v17, 0xd

    move/from16 v7, v24

    goto :goto_d

    :cond_12
    shl-int v7, v7, v17

    or-int/2addr v11, v7

    move/from16 v7, v24

    goto :goto_e

    :cond_13
    move/from16 v7, v17

    :goto_e
    add-int/lit8 v17, v7, 0x1

    .line 23
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v14, :cond_15

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v8, v17

    move/from16 v17, v16

    :goto_f
    add-int/lit8 v25, v8, 0x1

    .line 24
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v14, :cond_14

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v17

    or-int/2addr v7, v8

    add-int/lit8 v17, v17, 0xd

    move/from16 v8, v25

    goto :goto_f

    :cond_14
    shl-int v8, v8, v17

    or-int/2addr v7, v8

    move/from16 v17, v25

    :cond_15
    add-int v8, v7, v5

    add-int/2addr v8, v11

    .line 25
    new-array v8, v8, [I

    mul-int/lit8 v11, v13, 0x2

    add-int/2addr v2, v11

    move v11, v13

    move/from16 v13, v17

    move/from16 v17, v3

    move v3, v2

    move v2, v15

    .line 26
    :goto_10
    iget-object v15, v0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    mul-int/lit8 v9, v4, 0x3

    .line 27
    new-array v9, v9, [I

    mul-int/2addr v4, v10

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr v5, v7

    move/from16 v29, v5

    move/from16 v28, v7

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_11
    if-ge v13, v12, :cond_34

    add-int/lit8 v30, v13, 0x1

    .line 29
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_17

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v10, v30

    move/from16 v30, v16

    :goto_12
    add-int/lit8 v32, v10, 0x1

    .line 30
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v14, :cond_16

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v30

    or-int/2addr v13, v10

    add-int/lit8 v30, v30, 0xd

    move/from16 v10, v32

    goto :goto_12

    :cond_16
    shl-int v10, v10, v30

    or-int/2addr v13, v10

    move/from16 v10, v32

    goto :goto_13

    :cond_17
    move/from16 v10, v30

    :goto_13
    add-int/lit8 v30, v10, 0x1

    .line 31
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v14, :cond_19

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v6, v30

    move/from16 v30, v16

    :goto_14
    add-int/lit8 v33, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_18

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v30

    or-int/2addr v10, v6

    add-int/lit8 v30, v30, 0xd

    move/from16 v6, v33

    goto :goto_14

    :cond_18
    shl-int v6, v6, v30

    or-int/2addr v10, v6

    move/from16 v6, v33

    goto :goto_15

    :cond_19
    move/from16 v6, v30

    :goto_15
    and-int/lit16 v14, v10, 0xff

    move/from16 v30, v12

    and-int/lit16 v12, v10, 0x400

    if-eqz v12, :cond_1a

    add-int/lit8 v12, v27, 0x1

    .line 33
    aput v26, v8, v27

    move/from16 v27, v12

    .line 34
    :cond_1a
    sget-object v12, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v36, v5

    iget-object v5, v0, Lcom/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    move/from16 v37, v7

    const/16 v7, 0x33

    if-lt v14, v7, :cond_22

    add-int/lit8 v7, v6, 0x1

    .line 35
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v38, v7

    const v7, 0xd800

    if-lt v6, v7, :cond_1c

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v7, v38

    move/from16 v38, v16

    :goto_16
    add-int/lit8 v39, v7, 0x1

    .line 36
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v40, v2

    const v2, 0xd800

    if-lt v7, v2, :cond_1b

    and-int/lit16 v2, v7, 0x1fff

    shl-int v2, v2, v38

    or-int/2addr v6, v2

    add-int/lit8 v38, v38, 0xd

    move/from16 v7, v39

    move/from16 v2, v40

    goto :goto_16

    :cond_1b
    shl-int v2, v7, v38

    or-int/2addr v6, v2

    move/from16 v7, v39

    goto :goto_17

    :cond_1c
    move/from16 v40, v2

    move/from16 v7, v38

    :goto_17
    add-int/lit8 v2, v14, -0x33

    move/from16 v38, v7

    const/16 v7, 0x9

    if-eq v2, v7, :cond_1f

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v7, 0xc

    if-ne v2, v7, :cond_1e

    if-nez v19, :cond_1e

    .line 37
    div-int/lit8 v2, v26, 0x3

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    const/4 v7, 0x1

    add-int/2addr v2, v7

    add-int/lit8 v7, v3, 0x1

    aget-object v3, v5, v3

    aput-object v3, v4, v2

    move v3, v7

    :cond_1e
    const/4 v7, 0x2

    goto :goto_19

    .line 38
    :cond_1f
    :goto_18
    div-int/lit8 v2, v26, 0x3

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    const/16 v25, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v31, v3, 0x1

    aget-object v3, v5, v3

    aput-object v3, v4, v2

    move/from16 v3, v31

    :goto_19
    mul-int/2addr v6, v7

    .line 39
    aget-object v2, v5, v6

    .line 40
    instance-of v7, v2, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_20

    .line 41
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_1a

    .line 42
    :cond_20
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    aput-object v2, v5, v6

    :goto_1a
    move v7, v3

    .line 44
    invoke-virtual {v12, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v6, v6, 0x1

    .line 45
    aget-object v3, v5, v6

    move/from16 v33, v2

    .line 46
    instance-of v2, v3, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_21

    .line 47
    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 48
    :cond_21
    check-cast v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    aput-object v3, v5, v6

    .line 50
    :goto_1b
    invoke-virtual {v12, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v34, v1

    move v5, v2

    move v3, v7

    move v1, v11

    move/from16 v2, v33

    move/from16 v6, v38

    const/4 v7, 0x0

    goto/16 :goto_26

    :cond_22
    move/from16 v40, v2

    add-int/lit8 v2, v3, 0x1

    .line 51
    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/16 v7, 0x9

    if-eq v14, v7, :cond_2a

    const/16 v7, 0x11

    if-ne v14, v7, :cond_23

    goto/16 :goto_20

    :cond_23
    const/16 v7, 0x1b

    if-eq v14, v7, :cond_29

    const/16 v7, 0x31

    if-ne v14, v7, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v7, 0xc

    if-eq v14, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v14, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v14, v7, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v7, 0x32

    if-ne v14, v7, :cond_2b

    add-int/lit8 v7, v28, 0x1

    .line 52
    aput v26, v8, v28

    .line 53
    div-int/lit8 v28, v26, 0x3

    const/16 v31, 0x2

    mul-int/lit8 v28, v28, 0x2

    add-int/lit8 v33, v2, 0x1

    aget-object v2, v5, v2

    aput-object v2, v4, v28

    and-int/lit16 v2, v10, 0x800

    if-eqz v2, :cond_26

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v2, v33, 0x1

    .line 54
    aget-object v33, v5, v33

    aput-object v33, v4, v28

    goto :goto_1c

    :cond_26
    move/from16 v2, v33

    :goto_1c
    move/from16 v28, v7

    goto :goto_21

    :cond_27
    :goto_1d
    if-nez v19, :cond_28

    .line 55
    div-int/lit8 v7, v26, 0x3

    const/16 v31, 0x2

    mul-int/lit8 v7, v7, 0x2

    const/16 v25, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v33, v2, 0x1

    aget-object v2, v5, v2

    aput-object v2, v4, v7

    goto :goto_1f

    :cond_28
    const/16 v25, 0x1

    const/16 v31, 0x2

    goto :goto_21

    :cond_29
    :goto_1e
    const/16 v25, 0x1

    const/16 v31, 0x2

    .line 56
    div-int/lit8 v7, v26, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v33, v2, 0x1

    aget-object v2, v5, v2

    aput-object v2, v4, v7

    :goto_1f
    move/from16 v2, v33

    goto :goto_21

    :cond_2a
    :goto_20
    const/16 v25, 0x1

    const/16 v31, 0x2

    .line 57
    div-int/lit8 v7, v26, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v33

    aput-object v33, v4, v7

    :cond_2b
    :goto_21
    move v7, v2

    .line 58
    invoke-virtual {v12, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit16 v3, v10, 0x1000

    move/from16 v33, v7

    const/16 v7, 0x1000

    if-ne v3, v7, :cond_2c

    const/4 v3, 0x1

    goto :goto_22

    :cond_2c
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_30

    const/16 v3, 0x11

    if-gt v14, v3, :cond_30

    add-int/lit8 v3, v6, 0x1

    .line 59
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xd800

    if-lt v6, v7, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v34, v16

    :goto_23
    add-int/lit8 v35, v3, 0x1

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_2d

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v34

    or-int/2addr v6, v3

    add-int/lit8 v34, v34, 0xd

    move/from16 v3, v35

    goto :goto_23

    :cond_2d
    shl-int v3, v3, v34

    or-int/2addr v6, v3

    move/from16 v3, v35

    :cond_2e
    const/16 v31, 0x2

    mul-int/lit8 v34, v11, 0x2

    .line 61
    div-int/lit8 v35, v6, 0x20

    add-int v35, v35, v34

    .line 62
    aget-object v7, v5, v35

    move-object/from16 v34, v1

    .line 63
    instance-of v1, v7, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2f

    .line 64
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_24

    .line 65
    :cond_2f
    check-cast v7, Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 66
    aput-object v7, v5, v35

    :goto_24
    move v1, v11

    .line 67
    invoke-virtual {v12, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v5, v11

    .line 68
    rem-int/lit8 v6, v6, 0x20

    const/16 v7, 0x12

    move/from16 v49, v6

    move v6, v3

    move/from16 v3, v49

    goto :goto_25

    :cond_30
    move-object/from16 v34, v1

    move v1, v11

    const/4 v3, 0x0

    const v5, 0xfffff

    const/16 v7, 0x12

    :goto_25
    if-lt v14, v7, :cond_31

    const/16 v7, 0x31

    if-gt v14, v7, :cond_31

    add-int/lit8 v7, v29, 0x1

    .line 69
    aput v2, v8, v29

    move/from16 v29, v7

    :cond_31
    move v7, v3

    move/from16 v3, v33

    :goto_26
    add-int/lit8 v11, v26, 0x1

    .line 70
    aput v13, v9, v26

    add-int/lit8 v12, v11, 0x1

    and-int/lit16 v13, v10, 0x200

    if-eqz v13, :cond_32

    const/high16 v13, 0x20000000

    goto :goto_27

    :cond_32
    const/4 v13, 0x0

    :goto_27
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_33

    const/high16 v10, 0x10000000

    goto :goto_28

    :cond_33
    const/4 v10, 0x0

    :goto_28
    or-int/2addr v10, v13

    shl-int/lit8 v13, v14, 0x14

    or-int/2addr v10, v13

    or-int/2addr v2, v10

    .line 71
    aput v2, v9, v11

    add-int/lit8 v26, v12, 0x1

    shl-int/lit8 v2, v7, 0x14

    or-int/2addr v2, v5

    .line 72
    aput v2, v9, v12

    move v11, v1

    move v13, v6

    move/from16 v12, v30

    move-object/from16 v1, v34

    move/from16 v5, v36

    move/from16 v7, v37

    move/from16 v2, v40

    const/4 v10, 0x2

    const v14, 0xd800

    goto/16 :goto_11

    :cond_34
    move/from16 v40, v2

    move/from16 v36, v5

    move/from16 v37, v7

    .line 73
    new-instance v1, Lcom/google/protobuf/MessageSchema;

    .line 74
    iget-object v0, v0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    const/16 v20, 0x0

    move-object v13, v1

    move-object v14, v9

    move-object v15, v4

    move/from16 v16, v40

    move-object/from16 v18, v0

    move-object/from16 v21, v8

    move/from16 v22, v37

    move/from16 v23, v36

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    move-object/from16 v28, p5

    .line 75
    invoke-direct/range {v13 .. v28}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    return-object v1

    .line 76
    :cond_35
    check-cast v0, Lcom/google/protobuf/StructuralMessageInfo;

    .line 77
    iget-object v1, v0, Lcom/google/protobuf/StructuralMessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 78
    sget-object v3, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    if-ne v1, v3, :cond_36

    const/16 v39, 0x1

    goto :goto_29

    :cond_36
    const/16 v39, 0x0

    .line 79
    :goto_29
    iget-object v1, v0, Lcom/google/protobuf/StructuralMessageInfo;->fields:[Lcom/google/protobuf/FieldInfo;

    array-length v3, v1

    if-nez v3, :cond_37

    const/16 v36, 0x0

    const/16 v37, 0x0

    goto :goto_2a

    :cond_37
    const/4 v3, 0x0

    .line 80
    aget-object v4, v1, v3

    .line 81
    iget v3, v4, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    .line 82
    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    .line 83
    iget v4, v4, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    move/from16 v36, v3

    move/from16 v37, v4

    .line 84
    :goto_2a
    array-length v3, v1

    mul-int/lit8 v4, v3, 0x3

    .line 85
    new-array v4, v4, [I

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    .line 86
    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2b
    if-ge v6, v5, :cond_3a

    aget-object v9, v1, v6

    .line 88
    iget-object v10, v9, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 89
    sget-object v11, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v10, v11, :cond_38

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 90
    :cond_38
    invoke-virtual {v10}, Lcom/google/protobuf/FieldType;->id()I

    move-result v10

    const/16 v11, 0x12

    if-lt v10, v11, :cond_39

    .line 91
    iget-object v9, v9, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 92
    invoke-virtual {v9}, Lcom/google/protobuf/FieldType;->id()I

    move-result v9

    const/16 v10, 0x31

    if-gt v9, v10, :cond_39

    add-int/lit8 v8, v8, 0x1

    :cond_39
    :goto_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_3a
    if-lez v7, :cond_3b

    .line 93
    new-array v6, v7, [I

    goto :goto_2d

    :cond_3b
    const/4 v6, 0x0

    :goto_2d
    if-lez v8, :cond_3c

    .line 94
    new-array v7, v8, [I

    goto :goto_2e

    :cond_3c
    const/4 v7, 0x0

    .line 95
    :goto_2e
    iget-object v8, v0, Lcom/google/protobuf/StructuralMessageInfo;->checkInitialized:[I

    if-nez v8, :cond_3d

    move-object v8, v2

    :cond_3d
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 96
    :goto_2f
    array-length v14, v1

    if-ge v9, v14, :cond_50

    .line 97
    aget-object v14, v1, v9

    .line 98
    iget v15, v14, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    .line 99
    iget-object v5, v14, Lcom/google/protobuf/FieldInfo;->oneof:Lcom/google/protobuf/OneofInfo;

    if-eqz v5, :cond_3e

    move-object/from16 v16, v1

    .line 100
    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 101
    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->id()I

    move-result v1

    const/16 v17, 0x33

    add-int/lit8 v1, v1, 0x33

    move/from16 v19, v1

    .line 102
    iget-object v1, v5, Lcom/google/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    move-object/from16 v26, v2

    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 103
    iget-object v2, v5, Lcom/google/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v27

    move/from16 v5, v19

    move-object/from16 v19, v6

    move v6, v1

    :goto_30
    move-wide/from16 v1, v27

    goto :goto_33

    :cond_3e
    move-object/from16 v16, v1

    move-object/from16 v26, v2

    const/16 v17, 0x33

    .line 104
    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 105
    iget-object v2, v14, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v6

    .line 106
    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    .line 107
    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->id()I

    move-result v5

    .line 108
    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result v1

    if-nez v1, :cond_40

    .line 109
    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3f

    move v6, v2

    const v1, 0xfffff

    goto :goto_31

    :cond_3f
    move v6, v2

    .line 110
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 111
    :goto_31
    iget v2, v14, Lcom/google/protobuf/FieldInfo;->presenceMask:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    goto :goto_32

    :cond_40
    move v6, v2

    .line 113
    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_32
    move-object/from16 v27, v0

    move/from16 v49, v5

    move v5, v2

    move v2, v6

    move/from16 v6, v49

    goto :goto_34

    .line 114
    :cond_41
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v27

    goto :goto_30

    :goto_33
    long-to-int v1, v1

    move-object/from16 v27, v0

    move v2, v6

    move v6, v5

    const/4 v5, 0x0

    .line 115
    :goto_34
    iget v0, v14, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    .line 116
    aput v0, v4, v10

    add-int/lit8 v0, v10, 0x1

    move/from16 v28, v9

    .line 117
    iget-boolean v9, v14, Lcom/google/protobuf/FieldInfo;->enforceUtf8:Z

    move-object/from16 v29, v7

    if-eqz v9, :cond_42

    const/high16 v9, 0x20000000

    goto :goto_35

    :cond_42
    const/4 v9, 0x0

    .line 118
    :goto_35
    iget-boolean v7, v14, Lcom/google/protobuf/FieldInfo;->required:Z

    if-eqz v7, :cond_43

    const/high16 v7, 0x10000000

    goto :goto_36

    :cond_43
    const/4 v7, 0x0

    :goto_36
    or-int/2addr v7, v9

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v6, v7

    or-int/2addr v2, v6

    .line 119
    aput v2, v4, v0

    add-int/lit8 v0, v10, 0x2

    shl-int/lit8 v2, v5, 0x14

    or-int/2addr v1, v2

    .line 120
    aput v1, v4, v0

    .line 121
    sget-object v0, Lcom/google/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    const/4 v1, 0x4

    if-eq v0, v1, :cond_44

    const/4 v0, 0x0

    goto :goto_37

    .line 122
    :cond_44
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    goto :goto_37

    .line 123
    :cond_45
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_37

    :cond_46
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 124
    :goto_37
    iget-object v1, v14, Lcom/google/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v1, :cond_49

    .line 125
    div-int/lit8 v2, v10, 0x3

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    aput-object v1, v3, v2

    if-eqz v0, :cond_47

    add-int/lit8 v2, v2, 0x1

    .line 126
    aput-object v0, v3, v2

    goto :goto_38

    .line 127
    :cond_47
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->enumVerifier:Lcom/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_48

    add-int/lit8 v2, v2, 0x1

    .line 128
    aput-object v0, v3, v2

    :cond_48
    :goto_38
    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_39

    :cond_49
    if-eqz v0, :cond_4a

    .line 129
    div-int/lit8 v1, v10, 0x3

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    const/4 v5, 0x1

    add-int/2addr v1, v5

    aput-object v0, v3, v1

    goto :goto_39

    :cond_4a
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 130
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->enumVerifier:Lcom/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_4b

    .line 131
    div-int/lit8 v1, v10, 0x3

    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    aput-object v0, v3, v1

    .line 132
    :cond_4b
    :goto_39
    array-length v0, v8

    if-ge v12, v0, :cond_4c

    aget v0, v8, v12

    if-ne v0, v15, :cond_4c

    add-int/lit8 v0, v12, 0x1

    .line 133
    aput v10, v8, v12

    move v12, v0

    .line 134
    :cond_4c
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 135
    sget-object v1, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v0, v1, :cond_4d

    add-int/lit8 v0, v13, 0x1

    .line 136
    aput v10, v19, v13

    move v13, v0

    const/16 v1, 0x12

    goto :goto_3a

    .line 137
    :cond_4d
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4e

    .line 138
    iget-object v0, v14, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 139
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v6, 0x31

    if-gt v0, v6, :cond_4f

    add-int/lit8 v0, v11, 0x1

    .line 140
    iget-object v7, v14, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 141
    invoke-static {v7}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v7, v14

    aput v7, v29, v11

    move v11, v0

    goto :goto_3b

    :cond_4e
    :goto_3a
    const/16 v6, 0x31

    :cond_4f
    :goto_3b
    add-int/lit8 v9, v28, 0x1

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v1, v16

    move-object/from16 v6, v19

    move-object/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v7, v29

    goto/16 :goto_2f

    :cond_50
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    move-object/from16 v19, v6

    move-object/from16 v29, v7

    if-nez v19, :cond_51

    move-object/from16 v6, v26

    goto :goto_3c

    :cond_51
    move-object/from16 v6, v19

    :goto_3c
    if-nez v29, :cond_52

    move-object/from16 v2, v26

    goto :goto_3d

    :cond_52
    move-object/from16 v2, v29

    .line 142
    :goto_3d
    array-length v0, v8

    array-length v1, v6

    add-int/2addr v0, v1

    array-length v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 143
    array-length v1, v8

    const/4 v5, 0x0

    invoke-static {v8, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    array-length v1, v8

    array-length v7, v6

    invoke-static {v6, v5, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v1, v8

    array-length v7, v6

    add-int/2addr v1, v7

    array-length v7, v2

    invoke-static {v2, v5, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    new-instance v1, Lcom/google/protobuf/MessageSchema;

    move-object/from16 v2, v27

    .line 147
    iget-object v2, v2, Lcom/google/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    const/16 v40, 0x1

    .line 148
    array-length v5, v8

    array-length v7, v8

    array-length v6, v6

    add-int v43, v7, v6

    move-object/from16 v33, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v3

    move-object/from16 v38, v2

    move-object/from16 v41, v0

    move/from16 v42, v5

    move-object/from16 v44, p1

    move-object/from16 v45, p2

    move-object/from16 v46, p3

    move-object/from16 v47, p4

    move-object/from16 v48, p5

    invoke-direct/range {v33 .. v48}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    return-object v1
.end method

.method public static offset(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static oneofIntAt(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static oneofLongAt(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public final arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p2, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    const/high16 v9, 0xff00000

    .line 20
    .line 21
    and-int/2addr v5, v9

    .line 22
    ushr-int/lit8 v5, v5, 0x14

    .line 23
    .line 24
    packed-switch v5, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 30
    .line 31
    aget v5, v0, v5

    .line 32
    .line 33
    and-int/2addr v5, v6

    .line 34
    int-to-long v5, v5

    .line 35
    invoke-static {v5, v6, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-static {v5, v6, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v9, v5, :cond_0

    .line 44
    .line 45
    move v5, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v2

    .line 48
    :goto_1
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v4, v5}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_2
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_1

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_1

    .line 121
    .line 122
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v7

    .line 130
    cmp-long v5, v5, v7

    .line 131
    .line 132
    if-nez v5, :cond_1

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_1

    .line 141
    .line 142
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-ne v5, v6, :cond_1

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_1

    .line 159
    .line 160
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v7

    .line 168
    cmp-long v5, v5, v7

    .line 169
    .line 170
    if-nez v5, :cond_1

    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_1

    .line 179
    .line 180
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-ne v5, v6, :cond_1

    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_1

    .line 197
    .line 198
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-ne v5, v6, :cond_1

    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_1

    .line 215
    .line 216
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-ne v5, v6, :cond_1

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_1

    .line 233
    .line 234
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_1

    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_1

    .line 255
    .line 256
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_1

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz v5, :cond_1

    .line 277
    .line 278
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_1

    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_1

    .line 299
    .line 300
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-ne v5, v6, :cond_1

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_1

    .line 317
    .line 318
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-ne v5, v6, :cond_1

    .line 327
    .line 328
    goto/16 :goto_2

    .line 329
    .line 330
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_1

    .line 335
    .line 336
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 337
    .line 338
    .line 339
    move-result-wide v5

    .line 340
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 341
    .line 342
    .line 343
    move-result-wide v7

    .line 344
    cmp-long v5, v5, v7

    .line 345
    .line 346
    if-nez v5, :cond_1

    .line 347
    .line 348
    goto/16 :goto_2

    .line 349
    .line 350
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-eqz v5, :cond_1

    .line 355
    .line 356
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-ne v5, v6, :cond_1

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_1

    .line 372
    .line 373
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v5

    .line 377
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v7

    .line 381
    cmp-long v5, v5, v7

    .line 382
    .line 383
    if-nez v5, :cond_1

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_1

    .line 391
    .line 392
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v5

    .line 396
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v7

    .line 400
    cmp-long v5, v5, v7

    .line 401
    .line 402
    if-nez v5, :cond_1

    .line 403
    .line 404
    goto :goto_2

    .line 405
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_1

    .line 410
    .line 411
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    if-ne v5, v6, :cond_1

    .line 428
    .line 429
    goto :goto_2

    .line 430
    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-eqz v5, :cond_1

    .line 435
    .line 436
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 437
    .line 438
    .line 439
    move-result-wide v5

    .line 440
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v5

    .line 444
    invoke-static {v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 445
    .line 446
    .line 447
    move-result-wide v7

    .line 448
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v7

    .line 452
    cmp-long v5, v5, v7

    .line 453
    .line 454
    if-nez v5, :cond_1

    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_1
    move v4, v2

    .line 458
    :goto_2
    if-nez v4, :cond_2

    .line 459
    .line 460
    return v2

    .line 461
    :cond_2
    add-int/lit8 v3, v3, 0x3

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 466
    .line 467
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-virtual {v1, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_4

    .line 480
    .line 481
    return v2

    .line 482
    :cond_4
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 483
    .line 484
    if-eqz v0, :cond_5

    .line 485
    .line 486
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 487
    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    invoke-virtual {p1, p0}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result p0

    .line 500
    return p0

    .line 501
    :cond_5
    return v4

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-object p3

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return-object p3

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 29
    .line 30
    check-cast v2, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Lcom/google/protobuf/MapEntryLite;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    if-nez p3, :cond_3

    .line 85
    .line 86
    invoke-virtual {p4, p5}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {p0, v2, v3}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    new-instance v3, Lcom/google/protobuf/ByteString$CodedBuilder;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(ILcom/google/protobuf/ByteString$1;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v3, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    .line 109
    .line 110
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {v2, p0, v4, p2}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-nez p2, :cond_4

    .line 126
    .line 127
    new-instance p2, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 128
    .line 129
    iget-object v2, v3, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 130
    .line 131
    invoke-direct {p2, v2}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, p3, v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string p1, "Did not write as much data as expected."

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :catch_0
    move-exception p0

    .line 150
    new-instance p1, Ljava/lang/RuntimeException;

    .line 151
    .line 152
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_5
    return-object p3
.end method

.method public final getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    check-cast p0, Lcom/google/protobuf/Internal$EnumVerifier;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    return-object p0
.end method

.method public final getMessageFieldSchema(I)Lcom/google/protobuf/Schema;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Lcom/google/protobuf/Schema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/high16 v2, 0xff00000

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    iget-boolean v6, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    .line 9
    .line 10
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 11
    .line 12
    sget-object v8, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 13
    .line 14
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 15
    .line 16
    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 17
    .line 18
    iget-object v11, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 19
    .line 20
    const v12, 0xfffff

    .line 21
    .line 22
    .line 23
    if-eqz v6, :cond_16

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    :goto_0
    array-length v14, v11

    .line 28
    if-ge v6, v14, :cond_15

    .line 29
    .line 30
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    and-int v15, v14, v2

    .line 35
    .line 36
    ushr-int/lit8 v15, v15, 0x14

    .line 37
    .line 38
    aget v4, v11, v6

    .line 39
    .line 40
    and-int/2addr v14, v12

    .line 41
    int-to-long v2, v14

    .line 42
    sget-object v14, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 43
    .line 44
    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    if-lt v15, v14, :cond_0

    .line 49
    .line 50
    sget-object v14, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 51
    .line 52
    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-gt v15, v14, :cond_0

    .line 57
    .line 58
    add-int/lit8 v14, v6, 0x2

    .line 59
    .line 60
    aget v14, v11, v14

    .line 61
    .line 62
    and-int/2addr v14, v12

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const/4 v14, 0x0

    .line 65
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto/16 :goto_d

    .line 69
    .line 70
    :pswitch_0
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-eqz v14, :cond_14

    .line 75
    .line 76
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :pswitch_1
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-eqz v14, :cond_14

    .line 97
    .line 98
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    shl-long v14, v2, v5

    .line 107
    .line 108
    const/16 v17, 0x3f

    .line 109
    .line 110
    shr-long v2, v2, v17

    .line 111
    .line 112
    xor-long/2addr v2, v14

    .line 113
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :goto_2
    add-int/2addr v2, v4

    .line 118
    goto/16 :goto_c

    .line 119
    .line 120
    :pswitch_2
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-eqz v14, :cond_14

    .line 125
    .line 126
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    shl-int/lit8 v4, v2, 0x1

    .line 135
    .line 136
    shr-int/lit8 v2, v2, 0x1f

    .line 137
    .line 138
    xor-int/2addr v2, v4

    .line 139
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    :goto_3
    add-int/2addr v2, v3

    .line 144
    goto/16 :goto_c

    .line 145
    .line 146
    :pswitch_3
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_14

    .line 151
    .line 152
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    :goto_4
    add-int/lit8 v2, v2, 0x8

    .line 157
    .line 158
    goto/16 :goto_c

    .line 159
    .line 160
    :pswitch_4
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_14

    .line 165
    .line 166
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    :goto_5
    add-int/lit8 v2, v2, 0x4

    .line 171
    .line 172
    goto/16 :goto_c

    .line 173
    .line 174
    :pswitch_5
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-eqz v14, :cond_14

    .line 179
    .line 180
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    goto :goto_3

    .line 193
    :pswitch_6
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-eqz v14, :cond_14

    .line 198
    .line 199
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    goto/16 :goto_c

    .line 208
    .line 209
    :pswitch_7
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    if-eqz v14, :cond_14

    .line 214
    .line 215
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 220
    .line 221
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    goto/16 :goto_c

    .line 226
    .line 227
    :pswitch_8
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-eqz v14, :cond_14

    .line 232
    .line 233
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v4, v3, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    goto/16 :goto_c

    .line 246
    .line 247
    :pswitch_9
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    if-eqz v14, :cond_14

    .line 252
    .line 253
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    .line 258
    .line 259
    if-eqz v3, :cond_1

    .line 260
    .line 261
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 262
    .line 263
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto/16 :goto_b

    .line 268
    .line 269
    :cond_1
    check-cast v2, Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    :goto_6
    add-int/2addr v2, v3

    .line 280
    goto/16 :goto_b

    .line 281
    .line 282
    :pswitch_a
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_14

    .line 287
    .line 288
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    :goto_7
    add-int/2addr v2, v5

    .line 293
    goto/16 :goto_c

    .line 294
    .line 295
    :pswitch_b
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_14

    .line 300
    .line 301
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    goto/16 :goto_c

    .line 306
    .line 307
    :pswitch_c
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_14

    .line 312
    .line 313
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    goto/16 :goto_c

    .line 318
    .line 319
    :pswitch_d
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    if-eqz v14, :cond_14

    .line 324
    .line 325
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    goto/16 :goto_3

    .line 338
    .line 339
    :pswitch_e
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    if-eqz v14, :cond_14

    .line 344
    .line 345
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 346
    .line 347
    .line 348
    move-result-wide v2

    .line 349
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :pswitch_f
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    if-eqz v14, :cond_14

    .line 364
    .line 365
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :pswitch_10
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_14

    .line 384
    .line 385
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :pswitch_11
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-eqz v2, :cond_14

    .line 396
    .line 397
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    goto/16 :goto_4

    .line 402
    .line 403
    :pswitch_12
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    move-object v14, v7

    .line 412
    check-cast v14, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 413
    .line 414
    invoke-virtual {v14, v4, v2, v3}, Lcom/google/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :pswitch_13
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    sget-object v14, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 429
    .line 430
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    if-nez v14, :cond_2

    .line 435
    .line 436
    :goto_8
    const/4 v2, 0x0

    .line 437
    goto/16 :goto_c

    .line 438
    .line 439
    :cond_2
    const/4 v15, 0x0

    .line 440
    const/16 v18, 0x0

    .line 441
    .line 442
    :goto_9
    if-ge v15, v14, :cond_3

    .line 443
    .line 444
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v19

    .line 448
    move-object/from16 v12, v19

    .line 449
    .line 450
    check-cast v12, Lcom/google/protobuf/MessageLite;

    .line 451
    .line 452
    invoke-static {v4, v12, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    add-int v18, v12, v18

    .line 457
    .line 458
    add-int/lit8 v15, v15, 0x1

    .line 459
    .line 460
    const v12, 0xfffff

    .line 461
    .line 462
    .line 463
    goto :goto_9

    .line 464
    :cond_3
    move/from16 v2, v18

    .line 465
    .line 466
    goto/16 :goto_c

    .line 467
    .line 468
    :pswitch_14
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    check-cast v2, Ljava/util/List;

    .line 473
    .line 474
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-lez v2, :cond_14

    .line 479
    .line 480
    if-eqz v9, :cond_4

    .line 481
    .line 482
    int-to-long v14, v14

    .line 483
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 484
    .line 485
    .line 486
    :cond_4
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    goto/16 :goto_a

    .line 495
    .line 496
    :pswitch_15
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    check-cast v2, Ljava/util/List;

    .line 501
    .line 502
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-lez v2, :cond_14

    .line 507
    .line 508
    if-eqz v9, :cond_5

    .line 509
    .line 510
    int-to-long v14, v14

    .line 511
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 512
    .line 513
    .line 514
    :cond_5
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    goto/16 :goto_a

    .line 523
    .line 524
    :pswitch_16
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Ljava/util/List;

    .line 529
    .line 530
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-lez v2, :cond_14

    .line 535
    .line 536
    if-eqz v9, :cond_6

    .line 537
    .line 538
    int-to-long v14, v14

    .line 539
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 540
    .line 541
    .line 542
    :cond_6
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    goto/16 :goto_a

    .line 551
    .line 552
    :pswitch_17
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    check-cast v2, Ljava/util/List;

    .line 557
    .line 558
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-lez v2, :cond_14

    .line 563
    .line 564
    if-eqz v9, :cond_7

    .line 565
    .line 566
    int-to-long v14, v14

    .line 567
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 568
    .line 569
    .line 570
    :cond_7
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    goto/16 :goto_a

    .line 579
    .line 580
    :pswitch_18
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    check-cast v2, Ljava/util/List;

    .line 585
    .line 586
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-lez v2, :cond_14

    .line 591
    .line 592
    if-eqz v9, :cond_8

    .line 593
    .line 594
    int-to-long v14, v14

    .line 595
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 596
    .line 597
    .line 598
    :cond_8
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    goto/16 :goto_a

    .line 607
    .line 608
    :pswitch_19
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    check-cast v2, Ljava/util/List;

    .line 613
    .line 614
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    if-lez v2, :cond_14

    .line 619
    .line 620
    if-eqz v9, :cond_9

    .line 621
    .line 622
    int-to-long v14, v14

    .line 623
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 624
    .line 625
    .line 626
    :cond_9
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    goto/16 :goto_a

    .line 635
    .line 636
    :pswitch_1a
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    check-cast v2, Ljava/util/List;

    .line 641
    .line 642
    sget-object v3, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 643
    .line 644
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    if-lez v2, :cond_14

    .line 649
    .line 650
    if-eqz v9, :cond_a

    .line 651
    .line 652
    int-to-long v14, v14

    .line 653
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 654
    .line 655
    .line 656
    :cond_a
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    goto/16 :goto_a

    .line 665
    .line 666
    :pswitch_1b
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    check-cast v2, Ljava/util/List;

    .line 671
    .line 672
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-lez v2, :cond_14

    .line 677
    .line 678
    if-eqz v9, :cond_b

    .line 679
    .line 680
    int-to-long v14, v14

    .line 681
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 682
    .line 683
    .line 684
    :cond_b
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    goto/16 :goto_a

    .line 693
    .line 694
    :pswitch_1c
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    check-cast v2, Ljava/util/List;

    .line 699
    .line 700
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    if-lez v2, :cond_14

    .line 705
    .line 706
    if-eqz v9, :cond_c

    .line 707
    .line 708
    int-to-long v14, v14

    .line 709
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 710
    .line 711
    .line 712
    :cond_c
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    goto/16 :goto_a

    .line 721
    .line 722
    :pswitch_1d
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    check-cast v2, Ljava/util/List;

    .line 727
    .line 728
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-lez v2, :cond_14

    .line 733
    .line 734
    if-eqz v9, :cond_d

    .line 735
    .line 736
    int-to-long v14, v14

    .line 737
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 738
    .line 739
    .line 740
    :cond_d
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    goto :goto_a

    .line 749
    :pswitch_1e
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    check-cast v2, Ljava/util/List;

    .line 754
    .line 755
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-lez v2, :cond_14

    .line 760
    .line 761
    if-eqz v9, :cond_e

    .line 762
    .line 763
    int-to-long v14, v14

    .line 764
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 765
    .line 766
    .line 767
    :cond_e
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    goto :goto_a

    .line 776
    :pswitch_1f
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    check-cast v2, Ljava/util/List;

    .line 781
    .line 782
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-lez v2, :cond_14

    .line 787
    .line 788
    if-eqz v9, :cond_f

    .line 789
    .line 790
    int-to-long v14, v14

    .line 791
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 792
    .line 793
    .line 794
    :cond_f
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    goto :goto_a

    .line 803
    :pswitch_20
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    check-cast v2, Ljava/util/List;

    .line 808
    .line 809
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    if-lez v2, :cond_14

    .line 814
    .line 815
    if-eqz v9, :cond_10

    .line 816
    .line 817
    int-to-long v14, v14

    .line 818
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 819
    .line 820
    .line 821
    :cond_10
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    goto :goto_a

    .line 830
    :pswitch_21
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    check-cast v2, Ljava/util/List;

    .line 835
    .line 836
    invoke-static {v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    if-lez v2, :cond_14

    .line 841
    .line 842
    if-eqz v9, :cond_11

    .line 843
    .line 844
    int-to-long v14, v14

    .line 845
    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 846
    .line 847
    .line 848
    :cond_11
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    :goto_a
    add-int/2addr v4, v3

    .line 857
    add-int/2addr v4, v2

    .line 858
    add-int/2addr v13, v4

    .line 859
    goto/16 :goto_d

    .line 860
    .line 861
    :pswitch_22
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(Ljava/util/List;I)I

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    goto/16 :goto_c

    .line 870
    .line 871
    :pswitch_23
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(Ljava/util/List;I)I

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    goto/16 :goto_c

    .line 880
    .line 881
    :pswitch_24
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    goto/16 :goto_c

    .line 890
    .line 891
    :pswitch_25
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    goto/16 :goto_c

    .line 900
    .line 901
    :pswitch_26
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(Ljava/util/List;I)I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    goto/16 :goto_c

    .line 910
    .line 911
    :pswitch_27
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(Ljava/util/List;I)I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    goto/16 :goto_c

    .line 920
    .line 921
    :pswitch_28
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    invoke-static {v4, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    .line 926
    .line 927
    .line 928
    move-result v2

    .line 929
    goto/16 :goto_c

    .line 930
    .line 931
    :pswitch_29
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    goto/16 :goto_c

    .line 944
    .line 945
    :pswitch_2a
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    invoke-static {v4, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    goto/16 :goto_c

    .line 954
    .line 955
    :pswitch_2b
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    sget-object v3, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 960
    .line 961
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    if-nez v2, :cond_12

    .line 966
    .line 967
    goto/16 :goto_8

    .line 968
    .line 969
    :cond_12
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    add-int/2addr v3, v5

    .line 974
    mul-int/2addr v3, v2

    .line 975
    move v2, v3

    .line 976
    goto/16 :goto_c

    .line 977
    .line 978
    :pswitch_2c
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 983
    .line 984
    .line 985
    move-result v2

    .line 986
    goto/16 :goto_c

    .line 987
    .line 988
    :pswitch_2d
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    goto/16 :goto_c

    .line 997
    .line 998
    :pswitch_2e
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(Ljava/util/List;I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    goto/16 :goto_c

    .line 1007
    .line 1008
    :pswitch_2f
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(Ljava/util/List;I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    goto/16 :goto_c

    .line 1017
    .line 1018
    :pswitch_30
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(Ljava/util/List;I)I

    .line 1023
    .line 1024
    .line 1025
    move-result v2

    .line 1026
    goto/16 :goto_c

    .line 1027
    .line 1028
    :pswitch_31
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    goto/16 :goto_c

    .line 1037
    .line 1038
    :pswitch_32
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/MessageSchema;->listAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    invoke-static {v2, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 1043
    .line 1044
    .line 1045
    move-result v2

    .line 1046
    goto/16 :goto_c

    .line 1047
    .line 1048
    :pswitch_33
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v12

    .line 1052
    if-eqz v12, :cond_14

    .line 1053
    .line 1054
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 1059
    .line 1060
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v2

    .line 1068
    goto/16 :goto_c

    .line 1069
    .line 1070
    :pswitch_34
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v12

    .line 1074
    if-eqz v12, :cond_14

    .line 1075
    .line 1076
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v2

    .line 1080
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1081
    .line 1082
    .line 1083
    move-result v4

    .line 1084
    shl-long v14, v2, v5

    .line 1085
    .line 1086
    const/16 v12, 0x3f

    .line 1087
    .line 1088
    shr-long/2addr v2, v12

    .line 1089
    xor-long/2addr v2, v14

    .line 1090
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    goto/16 :goto_2

    .line 1095
    .line 1096
    :pswitch_35
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v12

    .line 1100
    if-eqz v12, :cond_14

    .line 1101
    .line 1102
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1107
    .line 1108
    .line 1109
    move-result v3

    .line 1110
    shl-int/lit8 v4, v2, 0x1

    .line 1111
    .line 1112
    shr-int/lit8 v2, v2, 0x1f

    .line 1113
    .line 1114
    xor-int/2addr v2, v4

    .line 1115
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    goto/16 :goto_3

    .line 1120
    .line 1121
    :pswitch_36
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    if-eqz v2, :cond_14

    .line 1126
    .line 1127
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1128
    .line 1129
    .line 1130
    move-result v2

    .line 1131
    goto/16 :goto_4

    .line 1132
    .line 1133
    :pswitch_37
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    if-eqz v2, :cond_14

    .line 1138
    .line 1139
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    goto/16 :goto_5

    .line 1144
    .line 1145
    :pswitch_38
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v12

    .line 1149
    if-eqz v12, :cond_14

    .line 1150
    .line 1151
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    goto/16 :goto_3

    .line 1164
    .line 1165
    :pswitch_39
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v12

    .line 1169
    if-eqz v12, :cond_14

    .line 1170
    .line 1171
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1172
    .line 1173
    .line 1174
    move-result v2

    .line 1175
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 1176
    .line 1177
    .line 1178
    move-result v2

    .line 1179
    goto/16 :goto_c

    .line 1180
    .line 1181
    :pswitch_3a
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v12

    .line 1185
    if-eqz v12, :cond_14

    .line 1186
    .line 1187
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 1192
    .line 1193
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1194
    .line 1195
    .line 1196
    move-result v2

    .line 1197
    goto/16 :goto_c

    .line 1198
    .line 1199
    :pswitch_3b
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v12

    .line 1203
    if-eqz v12, :cond_14

    .line 1204
    .line 1205
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-virtual {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-static {v4, v3, v2}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)I

    .line 1214
    .line 1215
    .line 1216
    move-result v2

    .line 1217
    goto/16 :goto_c

    .line 1218
    .line 1219
    :pswitch_3c
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v12

    .line 1223
    if-eqz v12, :cond_14

    .line 1224
    .line 1225
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    .line 1230
    .line 1231
    if-eqz v3, :cond_13

    .line 1232
    .line 1233
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 1234
    .line 1235
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    goto :goto_b

    .line 1240
    :cond_13
    check-cast v2, Ljava/lang/String;

    .line 1241
    .line 1242
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v2

    .line 1250
    goto/16 :goto_6

    .line 1251
    .line 1252
    :goto_b
    add-int/2addr v13, v2

    .line 1253
    goto/16 :goto_d

    .line 1254
    .line 1255
    :pswitch_3d
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v2

    .line 1259
    if-eqz v2, :cond_14

    .line 1260
    .line 1261
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1262
    .line 1263
    .line 1264
    move-result v2

    .line 1265
    goto/16 :goto_7

    .line 1266
    .line 1267
    :pswitch_3e
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    if-eqz v2, :cond_14

    .line 1272
    .line 1273
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    .line 1274
    .line 1275
    .line 1276
    move-result v2

    .line 1277
    goto :goto_c

    .line 1278
    :pswitch_3f
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v2

    .line 1282
    if-eqz v2, :cond_14

    .line 1283
    .line 1284
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    .line 1285
    .line 1286
    .line 1287
    move-result v2

    .line 1288
    goto :goto_c

    .line 1289
    :pswitch_40
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v12

    .line 1293
    if-eqz v12, :cond_14

    .line 1294
    .line 1295
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1296
    .line 1297
    .line 1298
    move-result v2

    .line 1299
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1300
    .line 1301
    .line 1302
    move-result v3

    .line 1303
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v2

    .line 1307
    goto/16 :goto_3

    .line 1308
    .line 1309
    :pswitch_41
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v12

    .line 1313
    if-eqz v12, :cond_14

    .line 1314
    .line 1315
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v2

    .line 1319
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1320
    .line 1321
    .line 1322
    move-result v4

    .line 1323
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1324
    .line 1325
    .line 1326
    move-result v2

    .line 1327
    goto/16 :goto_2

    .line 1328
    .line 1329
    :pswitch_42
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v12

    .line 1333
    if-eqz v12, :cond_14

    .line 1334
    .line 1335
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v2

    .line 1339
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v4

    .line 1343
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    goto/16 :goto_2

    .line 1348
    .line 1349
    :pswitch_43
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v2

    .line 1353
    if-eqz v2, :cond_14

    .line 1354
    .line 1355
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1356
    .line 1357
    .line 1358
    move-result v2

    .line 1359
    goto/16 :goto_5

    .line 1360
    .line 1361
    :pswitch_44
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    if-eqz v2, :cond_14

    .line 1366
    .line 1367
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    goto/16 :goto_4

    .line 1372
    .line 1373
    :goto_c
    add-int/2addr v13, v2

    .line 1374
    :cond_14
    :goto_d
    add-int/lit8 v6, v6, 0x3

    .line 1375
    .line 1376
    const/high16 v2, 0xff00000

    .line 1377
    .line 1378
    const v12, 0xfffff

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_0

    .line 1382
    .line 1383
    :cond_15
    invoke-virtual {v10, v1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    invoke-virtual {v10, v0}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    .line 1388
    .line 1389
    .line 1390
    move-result v0

    .line 1391
    add-int/2addr v0, v13

    .line 1392
    goto/16 :goto_26

    .line 1393
    .line 1394
    :cond_16
    const/4 v2, 0x0

    .line 1395
    const/4 v3, 0x0

    .line 1396
    const/4 v4, 0x0

    .line 1397
    const v6, 0xfffff

    .line 1398
    .line 1399
    .line 1400
    :goto_e
    array-length v12, v11

    .line 1401
    if-ge v2, v12, :cond_31

    .line 1402
    .line 1403
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1404
    .line 1405
    .line 1406
    move-result v12

    .line 1407
    aget v13, v11, v2

    .line 1408
    .line 1409
    const/high16 v14, 0xff00000

    .line 1410
    .line 1411
    and-int v15, v12, v14

    .line 1412
    .line 1413
    ushr-int/lit8 v15, v15, 0x14

    .line 1414
    .line 1415
    const/16 v14, 0x11

    .line 1416
    .line 1417
    if-gt v15, v14, :cond_18

    .line 1418
    .line 1419
    add-int/lit8 v14, v2, 0x2

    .line 1420
    .line 1421
    aget v14, v11, v14

    .line 1422
    .line 1423
    const v18, 0xfffff

    .line 1424
    .line 1425
    .line 1426
    and-int v5, v14, v18

    .line 1427
    .line 1428
    ushr-int/lit8 v18, v14, 0x14

    .line 1429
    .line 1430
    const/16 v19, 0x1

    .line 1431
    .line 1432
    shl-int v18, v19, v18

    .line 1433
    .line 1434
    if-eq v5, v6, :cond_17

    .line 1435
    .line 1436
    move/from16 v20, v3

    .line 1437
    .line 1438
    int-to-long v3, v5

    .line 1439
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1440
    .line 1441
    .line 1442
    move-result v4

    .line 1443
    move v6, v5

    .line 1444
    goto :goto_f

    .line 1445
    :cond_17
    move/from16 v20, v3

    .line 1446
    .line 1447
    :goto_f
    const v5, 0xfffff

    .line 1448
    .line 1449
    .line 1450
    goto :goto_11

    .line 1451
    :cond_18
    move/from16 v20, v3

    .line 1452
    .line 1453
    if-eqz v9, :cond_19

    .line 1454
    .line 1455
    sget-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1456
    .line 1457
    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->id()I

    .line 1458
    .line 1459
    .line 1460
    move-result v3

    .line 1461
    if-lt v15, v3, :cond_19

    .line 1462
    .line 1463
    sget-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1464
    .line 1465
    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->id()I

    .line 1466
    .line 1467
    .line 1468
    move-result v3

    .line 1469
    if-gt v15, v3, :cond_19

    .line 1470
    .line 1471
    add-int/lit8 v3, v2, 0x2

    .line 1472
    .line 1473
    aget v3, v11, v3

    .line 1474
    .line 1475
    const v5, 0xfffff

    .line 1476
    .line 1477
    .line 1478
    and-int/2addr v3, v5

    .line 1479
    move v14, v3

    .line 1480
    goto :goto_10

    .line 1481
    :cond_19
    const v5, 0xfffff

    .line 1482
    .line 1483
    .line 1484
    const/4 v14, 0x0

    .line 1485
    :goto_10
    const/16 v18, 0x0

    .line 1486
    .line 1487
    :goto_11
    and-int v3, v12, v5

    .line 1488
    .line 1489
    move v12, v6

    .line 1490
    int-to-long v5, v3

    .line 1491
    packed-switch v15, :pswitch_data_1

    .line 1492
    .line 1493
    .line 1494
    goto/16 :goto_1b

    .line 1495
    .line 1496
    :pswitch_45
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v3

    .line 1500
    if-eqz v3, :cond_2c

    .line 1501
    .line 1502
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v3

    .line 1506
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 1507
    .line 1508
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v5

    .line 1512
    invoke-static {v13, v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 1513
    .line 1514
    .line 1515
    move-result v3

    .line 1516
    goto/16 :goto_16

    .line 1517
    .line 1518
    :pswitch_46
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v3

    .line 1522
    if-eqz v3, :cond_2c

    .line 1523
    .line 1524
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v5

    .line 1528
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1529
    .line 1530
    .line 1531
    move-result v3

    .line 1532
    const/4 v13, 0x1

    .line 1533
    shl-long v14, v5, v13

    .line 1534
    .line 1535
    const/16 v13, 0x3f

    .line 1536
    .line 1537
    shr-long/2addr v5, v13

    .line 1538
    xor-long/2addr v5, v14

    .line 1539
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1540
    .line 1541
    .line 1542
    move-result v5

    .line 1543
    :goto_12
    add-int/2addr v3, v5

    .line 1544
    goto/16 :goto_16

    .line 1545
    .line 1546
    :pswitch_47
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v3

    .line 1550
    if-eqz v3, :cond_2c

    .line 1551
    .line 1552
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1553
    .line 1554
    .line 1555
    move-result v3

    .line 1556
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1557
    .line 1558
    .line 1559
    move-result v5

    .line 1560
    shl-int/lit8 v6, v3, 0x1

    .line 1561
    .line 1562
    shr-int/lit8 v3, v3, 0x1f

    .line 1563
    .line 1564
    xor-int/2addr v3, v6

    .line 1565
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 1566
    .line 1567
    .line 1568
    move-result v3

    .line 1569
    :goto_13
    add-int/2addr v3, v5

    .line 1570
    goto/16 :goto_16

    .line 1571
    .line 1572
    :pswitch_48
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v3

    .line 1576
    if-eqz v3, :cond_2c

    .line 1577
    .line 1578
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1579
    .line 1580
    .line 1581
    move-result v3

    .line 1582
    :goto_14
    add-int/lit8 v3, v3, 0x8

    .line 1583
    .line 1584
    goto/16 :goto_16

    .line 1585
    .line 1586
    :pswitch_49
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v3

    .line 1590
    if-eqz v3, :cond_2c

    .line 1591
    .line 1592
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1593
    .line 1594
    .line 1595
    move-result v3

    .line 1596
    add-int/lit8 v3, v3, 0x4

    .line 1597
    .line 1598
    goto/16 :goto_15

    .line 1599
    .line 1600
    :pswitch_4a
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v3

    .line 1604
    if-eqz v3, :cond_2c

    .line 1605
    .line 1606
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1607
    .line 1608
    .line 1609
    move-result v3

    .line 1610
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1611
    .line 1612
    .line 1613
    move-result v5

    .line 1614
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    goto :goto_13

    .line 1619
    :pswitch_4b
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v3

    .line 1623
    if-eqz v3, :cond_2c

    .line 1624
    .line 1625
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1626
    .line 1627
    .line 1628
    move-result v3

    .line 1629
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 1630
    .line 1631
    .line 1632
    move-result v3

    .line 1633
    goto/16 :goto_16

    .line 1634
    .line 1635
    :pswitch_4c
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v3

    .line 1639
    if-eqz v3, :cond_2c

    .line 1640
    .line 1641
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v3

    .line 1645
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1646
    .line 1647
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1648
    .line 1649
    .line 1650
    move-result v3

    .line 1651
    goto/16 :goto_16

    .line 1652
    .line 1653
    :pswitch_4d
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v3

    .line 1657
    if-eqz v3, :cond_2c

    .line 1658
    .line 1659
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v3

    .line 1663
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v5

    .line 1667
    invoke-static {v13, v5, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)I

    .line 1668
    .line 1669
    .line 1670
    move-result v3

    .line 1671
    goto/16 :goto_16

    .line 1672
    .line 1673
    :pswitch_4e
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v3

    .line 1677
    if-eqz v3, :cond_2c

    .line 1678
    .line 1679
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v3

    .line 1683
    instance-of v5, v3, Lcom/google/protobuf/ByteString;

    .line 1684
    .line 1685
    if-eqz v5, :cond_1a

    .line 1686
    .line 1687
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1688
    .line 1689
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1690
    .line 1691
    .line 1692
    move-result v3

    .line 1693
    goto :goto_15

    .line 1694
    :cond_1a
    check-cast v3, Ljava/lang/String;

    .line 1695
    .line 1696
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1697
    .line 1698
    .line 1699
    move-result v5

    .line 1700
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    add-int/2addr v3, v5

    .line 1705
    goto :goto_15

    .line 1706
    :pswitch_4f
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v3

    .line 1710
    if-eqz v3, :cond_2c

    .line 1711
    .line 1712
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1713
    .line 1714
    .line 1715
    move-result v3

    .line 1716
    const/4 v5, 0x1

    .line 1717
    add-int/2addr v3, v5

    .line 1718
    const/4 v14, 0x1

    .line 1719
    const/16 v17, 0x3f

    .line 1720
    .line 1721
    goto/16 :goto_21

    .line 1722
    .line 1723
    :pswitch_50
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v3

    .line 1727
    if-eqz v3, :cond_2c

    .line 1728
    .line 1729
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    .line 1730
    .line 1731
    .line 1732
    move-result v3

    .line 1733
    :goto_15
    const/16 v17, 0x3f

    .line 1734
    .line 1735
    goto/16 :goto_1d

    .line 1736
    .line 1737
    :pswitch_51
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v3

    .line 1741
    if-eqz v3, :cond_2c

    .line 1742
    .line 1743
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    .line 1744
    .line 1745
    .line 1746
    move-result v3

    .line 1747
    goto :goto_16

    .line 1748
    :pswitch_52
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v3

    .line 1752
    if-eqz v3, :cond_2c

    .line 1753
    .line 1754
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1755
    .line 1756
    .line 1757
    move-result v3

    .line 1758
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1759
    .line 1760
    .line 1761
    move-result v5

    .line 1762
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 1763
    .line 1764
    .line 1765
    move-result v3

    .line 1766
    goto/16 :goto_13

    .line 1767
    .line 1768
    :pswitch_53
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v3

    .line 1772
    if-eqz v3, :cond_2c

    .line 1773
    .line 1774
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1775
    .line 1776
    .line 1777
    move-result-wide v5

    .line 1778
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1779
    .line 1780
    .line 1781
    move-result v3

    .line 1782
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1783
    .line 1784
    .line 1785
    move-result v5

    .line 1786
    goto/16 :goto_12

    .line 1787
    .line 1788
    :pswitch_54
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v3

    .line 1792
    if-eqz v3, :cond_2c

    .line 1793
    .line 1794
    invoke-static {v5, v6, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1795
    .line 1796
    .line 1797
    move-result-wide v5

    .line 1798
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1799
    .line 1800
    .line 1801
    move-result v3

    .line 1802
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 1803
    .line 1804
    .line 1805
    move-result v5

    .line 1806
    goto/16 :goto_12

    .line 1807
    .line 1808
    :pswitch_55
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1809
    .line 1810
    .line 1811
    move-result v3

    .line 1812
    if-eqz v3, :cond_2c

    .line 1813
    .line 1814
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1815
    .line 1816
    .line 1817
    move-result v3

    .line 1818
    add-int/lit8 v3, v3, 0x4

    .line 1819
    .line 1820
    goto :goto_16

    .line 1821
    :pswitch_56
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v3

    .line 1825
    if-eqz v3, :cond_2c

    .line 1826
    .line 1827
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1828
    .line 1829
    .line 1830
    move-result v3

    .line 1831
    goto/16 :goto_14

    .line 1832
    .line 1833
    :goto_16
    const/16 v17, 0x3f

    .line 1834
    .line 1835
    goto/16 :goto_1e

    .line 1836
    .line 1837
    :pswitch_57
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v3

    .line 1841
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v5

    .line 1845
    move-object v6, v7

    .line 1846
    check-cast v6, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 1847
    .line 1848
    invoke-virtual {v6, v13, v3, v5}, Lcom/google/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 1849
    .line 1850
    .line 1851
    move-result v3

    .line 1852
    goto :goto_16

    .line 1853
    :pswitch_58
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v3

    .line 1857
    check-cast v3, Ljava/util/List;

    .line 1858
    .line 1859
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v5

    .line 1863
    sget-object v6, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1864
    .line 1865
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1866
    .line 1867
    .line 1868
    move-result v6

    .line 1869
    if-nez v6, :cond_1b

    .line 1870
    .line 1871
    const/4 v3, 0x0

    .line 1872
    goto :goto_16

    .line 1873
    :cond_1b
    const/4 v14, 0x0

    .line 1874
    const/4 v15, 0x0

    .line 1875
    :goto_17
    if-ge v14, v6, :cond_1c

    .line 1876
    .line 1877
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v18

    .line 1881
    move-object/from16 v21, v3

    .line 1882
    .line 1883
    move-object/from16 v3, v18

    .line 1884
    .line 1885
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 1886
    .line 1887
    invoke-static {v13, v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 1888
    .line 1889
    .line 1890
    move-result v3

    .line 1891
    add-int/2addr v15, v3

    .line 1892
    add-int/lit8 v14, v14, 0x1

    .line 1893
    .line 1894
    move-object/from16 v3, v21

    .line 1895
    .line 1896
    goto :goto_17

    .line 1897
    :cond_1c
    move v3, v15

    .line 1898
    goto :goto_16

    .line 1899
    :pswitch_59
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v3

    .line 1903
    check-cast v3, Ljava/util/List;

    .line 1904
    .line 1905
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 1906
    .line 1907
    .line 1908
    move-result v3

    .line 1909
    if-lez v3, :cond_2c

    .line 1910
    .line 1911
    if-eqz v9, :cond_1d

    .line 1912
    .line 1913
    int-to-long v5, v14

    .line 1914
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1915
    .line 1916
    .line 1917
    :cond_1d
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1918
    .line 1919
    .line 1920
    move-result v5

    .line 1921
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 1922
    .line 1923
    .line 1924
    move-result v6

    .line 1925
    goto/16 :goto_18

    .line 1926
    .line 1927
    :pswitch_5a
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v3

    .line 1931
    check-cast v3, Ljava/util/List;

    .line 1932
    .line 1933
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 1934
    .line 1935
    .line 1936
    move-result v3

    .line 1937
    if-lez v3, :cond_2c

    .line 1938
    .line 1939
    if-eqz v9, :cond_1e

    .line 1940
    .line 1941
    int-to-long v5, v14

    .line 1942
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1943
    .line 1944
    .line 1945
    :cond_1e
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1946
    .line 1947
    .line 1948
    move-result v5

    .line 1949
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 1950
    .line 1951
    .line 1952
    move-result v6

    .line 1953
    goto/16 :goto_18

    .line 1954
    .line 1955
    :pswitch_5b
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v3

    .line 1959
    check-cast v3, Ljava/util/List;

    .line 1960
    .line 1961
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 1962
    .line 1963
    .line 1964
    move-result v3

    .line 1965
    if-lez v3, :cond_2c

    .line 1966
    .line 1967
    if-eqz v9, :cond_1f

    .line 1968
    .line 1969
    int-to-long v5, v14

    .line 1970
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1971
    .line 1972
    .line 1973
    :cond_1f
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 1974
    .line 1975
    .line 1976
    move-result v5

    .line 1977
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 1978
    .line 1979
    .line 1980
    move-result v6

    .line 1981
    goto/16 :goto_18

    .line 1982
    .line 1983
    :pswitch_5c
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v3

    .line 1987
    check-cast v3, Ljava/util/List;

    .line 1988
    .line 1989
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 1990
    .line 1991
    .line 1992
    move-result v3

    .line 1993
    if-lez v3, :cond_2c

    .line 1994
    .line 1995
    if-eqz v9, :cond_20

    .line 1996
    .line 1997
    int-to-long v5, v14

    .line 1998
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1999
    .line 2000
    .line 2001
    :cond_20
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2002
    .line 2003
    .line 2004
    move-result v5

    .line 2005
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2006
    .line 2007
    .line 2008
    move-result v6

    .line 2009
    goto/16 :goto_18

    .line 2010
    .line 2011
    :pswitch_5d
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v3

    .line 2015
    check-cast v3, Ljava/util/List;

    .line 2016
    .line 2017
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 2018
    .line 2019
    .line 2020
    move-result v3

    .line 2021
    if-lez v3, :cond_2c

    .line 2022
    .line 2023
    if-eqz v9, :cond_21

    .line 2024
    .line 2025
    int-to-long v5, v14

    .line 2026
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2027
    .line 2028
    .line 2029
    :cond_21
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2030
    .line 2031
    .line 2032
    move-result v5

    .line 2033
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2034
    .line 2035
    .line 2036
    move-result v6

    .line 2037
    goto/16 :goto_18

    .line 2038
    .line 2039
    :pswitch_5e
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v3

    .line 2043
    check-cast v3, Ljava/util/List;

    .line 2044
    .line 2045
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 2046
    .line 2047
    .line 2048
    move-result v3

    .line 2049
    if-lez v3, :cond_2c

    .line 2050
    .line 2051
    if-eqz v9, :cond_22

    .line 2052
    .line 2053
    int-to-long v5, v14

    .line 2054
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2055
    .line 2056
    .line 2057
    :cond_22
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2058
    .line 2059
    .line 2060
    move-result v5

    .line 2061
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2062
    .line 2063
    .line 2064
    move-result v6

    .line 2065
    goto/16 :goto_18

    .line 2066
    .line 2067
    :pswitch_5f
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v3

    .line 2071
    check-cast v3, Ljava/util/List;

    .line 2072
    .line 2073
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 2074
    .line 2075
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2076
    .line 2077
    .line 2078
    move-result v3

    .line 2079
    if-lez v3, :cond_2c

    .line 2080
    .line 2081
    if-eqz v9, :cond_23

    .line 2082
    .line 2083
    int-to-long v5, v14

    .line 2084
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2085
    .line 2086
    .line 2087
    :cond_23
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2088
    .line 2089
    .line 2090
    move-result v5

    .line 2091
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2092
    .line 2093
    .line 2094
    move-result v6

    .line 2095
    goto/16 :goto_18

    .line 2096
    .line 2097
    :pswitch_60
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v3

    .line 2101
    check-cast v3, Ljava/util/List;

    .line 2102
    .line 2103
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 2104
    .line 2105
    .line 2106
    move-result v3

    .line 2107
    if-lez v3, :cond_2c

    .line 2108
    .line 2109
    if-eqz v9, :cond_24

    .line 2110
    .line 2111
    int-to-long v5, v14

    .line 2112
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2113
    .line 2114
    .line 2115
    :cond_24
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2116
    .line 2117
    .line 2118
    move-result v5

    .line 2119
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2120
    .line 2121
    .line 2122
    move-result v6

    .line 2123
    goto/16 :goto_18

    .line 2124
    .line 2125
    :pswitch_61
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v3

    .line 2129
    check-cast v3, Ljava/util/List;

    .line 2130
    .line 2131
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 2132
    .line 2133
    .line 2134
    move-result v3

    .line 2135
    if-lez v3, :cond_2c

    .line 2136
    .line 2137
    if-eqz v9, :cond_25

    .line 2138
    .line 2139
    int-to-long v5, v14

    .line 2140
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2141
    .line 2142
    .line 2143
    :cond_25
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2144
    .line 2145
    .line 2146
    move-result v5

    .line 2147
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2148
    .line 2149
    .line 2150
    move-result v6

    .line 2151
    goto/16 :goto_18

    .line 2152
    .line 2153
    :pswitch_62
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v3

    .line 2157
    check-cast v3, Ljava/util/List;

    .line 2158
    .line 2159
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 2160
    .line 2161
    .line 2162
    move-result v3

    .line 2163
    if-lez v3, :cond_2c

    .line 2164
    .line 2165
    if-eqz v9, :cond_26

    .line 2166
    .line 2167
    int-to-long v5, v14

    .line 2168
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2169
    .line 2170
    .line 2171
    :cond_26
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2172
    .line 2173
    .line 2174
    move-result v5

    .line 2175
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2176
    .line 2177
    .line 2178
    move-result v6

    .line 2179
    goto :goto_18

    .line 2180
    :pswitch_63
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v3

    .line 2184
    check-cast v3, Ljava/util/List;

    .line 2185
    .line 2186
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 2187
    .line 2188
    .line 2189
    move-result v3

    .line 2190
    if-lez v3, :cond_2c

    .line 2191
    .line 2192
    if-eqz v9, :cond_27

    .line 2193
    .line 2194
    int-to-long v5, v14

    .line 2195
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2196
    .line 2197
    .line 2198
    :cond_27
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2199
    .line 2200
    .line 2201
    move-result v5

    .line 2202
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2203
    .line 2204
    .line 2205
    move-result v6

    .line 2206
    goto :goto_18

    .line 2207
    :pswitch_64
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v3

    .line 2211
    check-cast v3, Ljava/util/List;

    .line 2212
    .line 2213
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 2214
    .line 2215
    .line 2216
    move-result v3

    .line 2217
    if-lez v3, :cond_2c

    .line 2218
    .line 2219
    if-eqz v9, :cond_28

    .line 2220
    .line 2221
    int-to-long v5, v14

    .line 2222
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2223
    .line 2224
    .line 2225
    :cond_28
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2226
    .line 2227
    .line 2228
    move-result v5

    .line 2229
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2230
    .line 2231
    .line 2232
    move-result v6

    .line 2233
    goto :goto_18

    .line 2234
    :pswitch_65
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v3

    .line 2238
    check-cast v3, Ljava/util/List;

    .line 2239
    .line 2240
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 2241
    .line 2242
    .line 2243
    move-result v3

    .line 2244
    if-lez v3, :cond_2c

    .line 2245
    .line 2246
    if-eqz v9, :cond_29

    .line 2247
    .line 2248
    int-to-long v5, v14

    .line 2249
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2250
    .line 2251
    .line 2252
    :cond_29
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2253
    .line 2254
    .line 2255
    move-result v5

    .line 2256
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2257
    .line 2258
    .line 2259
    move-result v6

    .line 2260
    goto :goto_18

    .line 2261
    :pswitch_66
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v3

    .line 2265
    check-cast v3, Ljava/util/List;

    .line 2266
    .line 2267
    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 2268
    .line 2269
    .line 2270
    move-result v3

    .line 2271
    if-lez v3, :cond_2c

    .line 2272
    .line 2273
    if-eqz v9, :cond_2a

    .line 2274
    .line 2275
    int-to-long v5, v14

    .line 2276
    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2277
    .line 2278
    .line 2279
    :cond_2a
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2280
    .line 2281
    .line 2282
    move-result v5

    .line 2283
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2284
    .line 2285
    .line 2286
    move-result v6

    .line 2287
    :goto_18
    add-int/2addr v6, v5

    .line 2288
    add-int/2addr v6, v3

    .line 2289
    add-int v6, v6, v20

    .line 2290
    .line 2291
    move v3, v6

    .line 2292
    goto/16 :goto_1a

    .line 2293
    .line 2294
    :pswitch_67
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v3

    .line 2298
    check-cast v3, Ljava/util/List;

    .line 2299
    .line 2300
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(Ljava/util/List;I)I

    .line 2301
    .line 2302
    .line 2303
    move-result v3

    .line 2304
    goto/16 :goto_19

    .line 2305
    .line 2306
    :pswitch_68
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v3

    .line 2310
    check-cast v3, Ljava/util/List;

    .line 2311
    .line 2312
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(Ljava/util/List;I)I

    .line 2313
    .line 2314
    .line 2315
    move-result v3

    .line 2316
    goto/16 :goto_19

    .line 2317
    .line 2318
    :pswitch_69
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v3

    .line 2322
    check-cast v3, Ljava/util/List;

    .line 2323
    .line 2324
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2325
    .line 2326
    .line 2327
    move-result v3

    .line 2328
    goto/16 :goto_19

    .line 2329
    .line 2330
    :pswitch_6a
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v3

    .line 2334
    check-cast v3, Ljava/util/List;

    .line 2335
    .line 2336
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2337
    .line 2338
    .line 2339
    move-result v3

    .line 2340
    goto/16 :goto_19

    .line 2341
    .line 2342
    :pswitch_6b
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v3

    .line 2346
    check-cast v3, Ljava/util/List;

    .line 2347
    .line 2348
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(Ljava/util/List;I)I

    .line 2349
    .line 2350
    .line 2351
    move-result v3

    .line 2352
    goto/16 :goto_19

    .line 2353
    .line 2354
    :pswitch_6c
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2355
    .line 2356
    .line 2357
    move-result-object v3

    .line 2358
    check-cast v3, Ljava/util/List;

    .line 2359
    .line 2360
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(Ljava/util/List;I)I

    .line 2361
    .line 2362
    .line 2363
    move-result v3

    .line 2364
    goto/16 :goto_16

    .line 2365
    .line 2366
    :pswitch_6d
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v3

    .line 2370
    check-cast v3, Ljava/util/List;

    .line 2371
    .line 2372
    invoke-static {v13, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    .line 2373
    .line 2374
    .line 2375
    move-result v3

    .line 2376
    goto/16 :goto_16

    .line 2377
    .line 2378
    :pswitch_6e
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v3

    .line 2382
    check-cast v3, Ljava/util/List;

    .line 2383
    .line 2384
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v5

    .line 2388
    invoke-static {v13, v3, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    .line 2389
    .line 2390
    .line 2391
    move-result v3

    .line 2392
    goto/16 :goto_16

    .line 2393
    .line 2394
    :pswitch_6f
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v3

    .line 2398
    check-cast v3, Ljava/util/List;

    .line 2399
    .line 2400
    invoke-static {v13, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    .line 2401
    .line 2402
    .line 2403
    move-result v3

    .line 2404
    goto/16 :goto_16

    .line 2405
    .line 2406
    :pswitch_70
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v3

    .line 2410
    check-cast v3, Ljava/util/List;

    .line 2411
    .line 2412
    sget-object v5, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 2413
    .line 2414
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2415
    .line 2416
    .line 2417
    move-result v3

    .line 2418
    if-nez v3, :cond_2b

    .line 2419
    .line 2420
    const/4 v3, 0x0

    .line 2421
    goto :goto_19

    .line 2422
    :cond_2b
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2423
    .line 2424
    .line 2425
    move-result v5

    .line 2426
    const/4 v6, 0x1

    .line 2427
    add-int/2addr v5, v6

    .line 2428
    mul-int/2addr v5, v3

    .line 2429
    move v3, v5

    .line 2430
    goto :goto_19

    .line 2431
    :pswitch_71
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v3

    .line 2435
    check-cast v3, Ljava/util/List;

    .line 2436
    .line 2437
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2438
    .line 2439
    .line 2440
    move-result v3

    .line 2441
    goto :goto_19

    .line 2442
    :pswitch_72
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v3

    .line 2446
    check-cast v3, Ljava/util/List;

    .line 2447
    .line 2448
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2449
    .line 2450
    .line 2451
    move-result v3

    .line 2452
    goto :goto_19

    .line 2453
    :pswitch_73
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v3

    .line 2457
    check-cast v3, Ljava/util/List;

    .line 2458
    .line 2459
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(Ljava/util/List;I)I

    .line 2460
    .line 2461
    .line 2462
    move-result v3

    .line 2463
    goto :goto_19

    .line 2464
    :pswitch_74
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v3

    .line 2468
    check-cast v3, Ljava/util/List;

    .line 2469
    .line 2470
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(Ljava/util/List;I)I

    .line 2471
    .line 2472
    .line 2473
    move-result v3

    .line 2474
    goto :goto_19

    .line 2475
    :pswitch_75
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v3

    .line 2479
    check-cast v3, Ljava/util/List;

    .line 2480
    .line 2481
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(Ljava/util/List;I)I

    .line 2482
    .line 2483
    .line 2484
    move-result v3

    .line 2485
    goto :goto_19

    .line 2486
    :pswitch_76
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2487
    .line 2488
    .line 2489
    move-result-object v3

    .line 2490
    check-cast v3, Ljava/util/List;

    .line 2491
    .line 2492
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2493
    .line 2494
    .line 2495
    move-result v3

    .line 2496
    :goto_19
    add-int v3, v20, v3

    .line 2497
    .line 2498
    :goto_1a
    const/4 v14, 0x1

    .line 2499
    const/16 v17, 0x3f

    .line 2500
    .line 2501
    goto/16 :goto_23

    .line 2502
    .line 2503
    :pswitch_77
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v3

    .line 2507
    check-cast v3, Ljava/util/List;

    .line 2508
    .line 2509
    invoke-static {v3, v13}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2510
    .line 2511
    .line 2512
    move-result v3

    .line 2513
    goto/16 :goto_16

    .line 2514
    .line 2515
    :pswitch_78
    and-int v3, v4, v18

    .line 2516
    .line 2517
    if-eqz v3, :cond_2c

    .line 2518
    .line 2519
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v3

    .line 2523
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 2524
    .line 2525
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v5

    .line 2529
    invoke-static {v13, v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    .line 2530
    .line 2531
    .line 2532
    move-result v3

    .line 2533
    goto/16 :goto_16

    .line 2534
    .line 2535
    :cond_2c
    :goto_1b
    const/4 v14, 0x1

    .line 2536
    const/16 v17, 0x3f

    .line 2537
    .line 2538
    goto/16 :goto_22

    .line 2539
    .line 2540
    :pswitch_79
    and-int v3, v4, v18

    .line 2541
    .line 2542
    if-eqz v3, :cond_2d

    .line 2543
    .line 2544
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2545
    .line 2546
    .line 2547
    move-result-wide v5

    .line 2548
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2549
    .line 2550
    .line 2551
    move-result v3

    .line 2552
    const/4 v13, 0x1

    .line 2553
    shl-long v14, v5, v13

    .line 2554
    .line 2555
    const/16 v17, 0x3f

    .line 2556
    .line 2557
    shr-long v5, v5, v17

    .line 2558
    .line 2559
    xor-long/2addr v5, v14

    .line 2560
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 2561
    .line 2562
    .line 2563
    move-result v5

    .line 2564
    add-int/2addr v3, v5

    .line 2565
    goto/16 :goto_1e

    .line 2566
    .line 2567
    :cond_2d
    const/16 v17, 0x3f

    .line 2568
    .line 2569
    goto/16 :goto_1f

    .line 2570
    .line 2571
    :pswitch_7a
    const/16 v17, 0x3f

    .line 2572
    .line 2573
    and-int v3, v4, v18

    .line 2574
    .line 2575
    if-eqz v3, :cond_2f

    .line 2576
    .line 2577
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2578
    .line 2579
    .line 2580
    move-result v3

    .line 2581
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2582
    .line 2583
    .line 2584
    move-result v5

    .line 2585
    shl-int/lit8 v6, v3, 0x1

    .line 2586
    .line 2587
    shr-int/lit8 v3, v3, 0x1f

    .line 2588
    .line 2589
    xor-int/2addr v3, v6

    .line 2590
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    .line 2591
    .line 2592
    .line 2593
    move-result v3

    .line 2594
    :goto_1c
    add-int/2addr v3, v5

    .line 2595
    goto :goto_1e

    .line 2596
    :pswitch_7b
    const/16 v17, 0x3f

    .line 2597
    .line 2598
    and-int v3, v4, v18

    .line 2599
    .line 2600
    if-eqz v3, :cond_2f

    .line 2601
    .line 2602
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2603
    .line 2604
    .line 2605
    move-result v3

    .line 2606
    add-int/lit8 v3, v3, 0x8

    .line 2607
    .line 2608
    goto :goto_1e

    .line 2609
    :pswitch_7c
    const/16 v17, 0x3f

    .line 2610
    .line 2611
    and-int v3, v4, v18

    .line 2612
    .line 2613
    if-eqz v3, :cond_2f

    .line 2614
    .line 2615
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2616
    .line 2617
    .line 2618
    move-result v3

    .line 2619
    add-int/lit8 v3, v3, 0x4

    .line 2620
    .line 2621
    :goto_1d
    add-int v3, v20, v3

    .line 2622
    .line 2623
    const/4 v14, 0x1

    .line 2624
    goto/16 :goto_23

    .line 2625
    .line 2626
    :pswitch_7d
    const/16 v17, 0x3f

    .line 2627
    .line 2628
    and-int v3, v4, v18

    .line 2629
    .line 2630
    if-eqz v3, :cond_2f

    .line 2631
    .line 2632
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2633
    .line 2634
    .line 2635
    move-result v3

    .line 2636
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2637
    .line 2638
    .line 2639
    move-result v5

    .line 2640
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 2641
    .line 2642
    .line 2643
    move-result v3

    .line 2644
    goto :goto_1c

    .line 2645
    :pswitch_7e
    const/16 v17, 0x3f

    .line 2646
    .line 2647
    and-int v3, v4, v18

    .line 2648
    .line 2649
    if-eqz v3, :cond_2f

    .line 2650
    .line 2651
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2652
    .line 2653
    .line 2654
    move-result v3

    .line 2655
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 2656
    .line 2657
    .line 2658
    move-result v3

    .line 2659
    goto :goto_1e

    .line 2660
    :pswitch_7f
    const/16 v17, 0x3f

    .line 2661
    .line 2662
    and-int v3, v4, v18

    .line 2663
    .line 2664
    if-eqz v3, :cond_2f

    .line 2665
    .line 2666
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2667
    .line 2668
    .line 2669
    move-result-object v3

    .line 2670
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 2671
    .line 2672
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 2673
    .line 2674
    .line 2675
    move-result v3

    .line 2676
    goto :goto_1e

    .line 2677
    :pswitch_80
    const/16 v17, 0x3f

    .line 2678
    .line 2679
    and-int v3, v4, v18

    .line 2680
    .line 2681
    if-eqz v3, :cond_2f

    .line 2682
    .line 2683
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v3

    .line 2687
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v5

    .line 2691
    invoke-static {v13, v5, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)I

    .line 2692
    .line 2693
    .line 2694
    move-result v3

    .line 2695
    :goto_1e
    const/4 v14, 0x1

    .line 2696
    goto/16 :goto_21

    .line 2697
    .line 2698
    :pswitch_81
    const/16 v17, 0x3f

    .line 2699
    .line 2700
    and-int v3, v4, v18

    .line 2701
    .line 2702
    if-eqz v3, :cond_2f

    .line 2703
    .line 2704
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v3

    .line 2708
    instance-of v5, v3, Lcom/google/protobuf/ByteString;

    .line 2709
    .line 2710
    if-eqz v5, :cond_2e

    .line 2711
    .line 2712
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 2713
    .line 2714
    invoke-static {v13, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 2715
    .line 2716
    .line 2717
    move-result v3

    .line 2718
    goto :goto_1d

    .line 2719
    :cond_2e
    check-cast v3, Ljava/lang/String;

    .line 2720
    .line 2721
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2722
    .line 2723
    .line 2724
    move-result v5

    .line 2725
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 2726
    .line 2727
    .line 2728
    move-result v3

    .line 2729
    add-int/2addr v3, v5

    .line 2730
    goto :goto_1d

    .line 2731
    :pswitch_82
    const/16 v17, 0x3f

    .line 2732
    .line 2733
    and-int v3, v4, v18

    .line 2734
    .line 2735
    if-eqz v3, :cond_2f

    .line 2736
    .line 2737
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2738
    .line 2739
    .line 2740
    move-result v3

    .line 2741
    const/4 v14, 0x1

    .line 2742
    add-int/2addr v3, v14

    .line 2743
    goto/16 :goto_21

    .line 2744
    .line 2745
    :cond_2f
    :goto_1f
    const/4 v14, 0x1

    .line 2746
    goto/16 :goto_22

    .line 2747
    .line 2748
    :pswitch_83
    const/4 v14, 0x1

    .line 2749
    const/16 v17, 0x3f

    .line 2750
    .line 2751
    and-int v3, v4, v18

    .line 2752
    .line 2753
    if-eqz v3, :cond_30

    .line 2754
    .line 2755
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    .line 2756
    .line 2757
    .line 2758
    move-result v3

    .line 2759
    goto :goto_21

    .line 2760
    :pswitch_84
    const/4 v14, 0x1

    .line 2761
    const/16 v17, 0x3f

    .line 2762
    .line 2763
    and-int v3, v4, v18

    .line 2764
    .line 2765
    if-eqz v3, :cond_30

    .line 2766
    .line 2767
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    .line 2768
    .line 2769
    .line 2770
    move-result v3

    .line 2771
    goto :goto_21

    .line 2772
    :pswitch_85
    const/4 v14, 0x1

    .line 2773
    const/16 v17, 0x3f

    .line 2774
    .line 2775
    and-int v3, v4, v18

    .line 2776
    .line 2777
    if-eqz v3, :cond_30

    .line 2778
    .line 2779
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2780
    .line 2781
    .line 2782
    move-result v3

    .line 2783
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2784
    .line 2785
    .line 2786
    move-result v5

    .line 2787
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 2788
    .line 2789
    .line 2790
    move-result v3

    .line 2791
    add-int/2addr v3, v5

    .line 2792
    goto :goto_21

    .line 2793
    :pswitch_86
    const/4 v14, 0x1

    .line 2794
    const/16 v17, 0x3f

    .line 2795
    .line 2796
    and-int v3, v4, v18

    .line 2797
    .line 2798
    if-eqz v3, :cond_30

    .line 2799
    .line 2800
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2801
    .line 2802
    .line 2803
    move-result-wide v5

    .line 2804
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2805
    .line 2806
    .line 2807
    move-result v3

    .line 2808
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 2809
    .line 2810
    .line 2811
    move-result v5

    .line 2812
    :goto_20
    add-int/2addr v3, v5

    .line 2813
    goto :goto_21

    .line 2814
    :pswitch_87
    const/4 v14, 0x1

    .line 2815
    const/16 v17, 0x3f

    .line 2816
    .line 2817
    and-int v3, v4, v18

    .line 2818
    .line 2819
    if-eqz v3, :cond_30

    .line 2820
    .line 2821
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2822
    .line 2823
    .line 2824
    move-result-wide v5

    .line 2825
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2826
    .line 2827
    .line 2828
    move-result v3

    .line 2829
    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    .line 2830
    .line 2831
    .line 2832
    move-result v5

    .line 2833
    goto :goto_20

    .line 2834
    :pswitch_88
    const/4 v14, 0x1

    .line 2835
    const/16 v17, 0x3f

    .line 2836
    .line 2837
    and-int v3, v4, v18

    .line 2838
    .line 2839
    if-eqz v3, :cond_30

    .line 2840
    .line 2841
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2842
    .line 2843
    .line 2844
    move-result v3

    .line 2845
    add-int/lit8 v3, v3, 0x4

    .line 2846
    .line 2847
    goto :goto_21

    .line 2848
    :pswitch_89
    const/4 v14, 0x1

    .line 2849
    const/16 v17, 0x3f

    .line 2850
    .line 2851
    and-int v3, v4, v18

    .line 2852
    .line 2853
    if-eqz v3, :cond_30

    .line 2854
    .line 2855
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    .line 2856
    .line 2857
    .line 2858
    move-result v3

    .line 2859
    add-int/lit8 v3, v3, 0x8

    .line 2860
    .line 2861
    :goto_21
    add-int v3, v20, v3

    .line 2862
    .line 2863
    goto :goto_23

    .line 2864
    :cond_30
    :goto_22
    move/from16 v3, v20

    .line 2865
    .line 2866
    :goto_23
    add-int/lit8 v2, v2, 0x3

    .line 2867
    .line 2868
    move v6, v12

    .line 2869
    move v5, v14

    .line 2870
    goto/16 :goto_e

    .line 2871
    .line 2872
    :cond_31
    move/from16 v20, v3

    .line 2873
    .line 2874
    invoke-virtual {v10, v1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v2

    .line 2878
    invoke-virtual {v10, v2}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    .line 2879
    .line 2880
    .line 2881
    move-result v2

    .line 2882
    add-int v2, v2, v20

    .line 2883
    .line 2884
    iget-boolean v3, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 2885
    .line 2886
    if-eqz v3, :cond_34

    .line 2887
    .line 2888
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 2889
    .line 2890
    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v0

    .line 2894
    const/4 v4, 0x0

    .line 2895
    const/16 v16, 0x0

    .line 2896
    .line 2897
    :goto_24
    iget-object v1, v0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 2898
    .line 2899
    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    .line 2900
    .line 2901
    .line 2902
    move-result v3

    .line 2903
    if-ge v4, v3, :cond_32

    .line 2904
    .line 2905
    invoke-virtual {v1, v4}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    .line 2906
    .line 2907
    .line 2908
    move-result-object v1

    .line 2909
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v3

    .line 2913
    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 2914
    .line 2915
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v1

    .line 2919
    invoke-static {v3, v1}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    .line 2920
    .line 2921
    .line 2922
    move-result v1

    .line 2923
    add-int v16, v1, v16

    .line 2924
    .line 2925
    add-int/lit8 v4, v4, 0x1

    .line 2926
    .line 2927
    goto :goto_24

    .line 2928
    :cond_32
    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    .line 2929
    .line 2930
    .line 2931
    move-result-object v0

    .line 2932
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2933
    .line 2934
    .line 2935
    move-result-object v0

    .line 2936
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2937
    .line 2938
    .line 2939
    move-result v1

    .line 2940
    if-eqz v1, :cond_33

    .line 2941
    .line 2942
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2943
    .line 2944
    .line 2945
    move-result-object v1

    .line 2946
    check-cast v1, Ljava/util/Map$Entry;

    .line 2947
    .line 2948
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2949
    .line 2950
    .line 2951
    move-result-object v3

    .line 2952
    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 2953
    .line 2954
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2955
    .line 2956
    .line 2957
    move-result-object v1

    .line 2958
    invoke-static {v3, v1}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    .line 2959
    .line 2960
    .line 2961
    move-result v1

    .line 2962
    add-int v16, v1, v16

    .line 2963
    .line 2964
    goto :goto_25

    .line 2965
    :cond_33
    add-int v2, v2, v16

    .line 2966
    .line 2967
    :cond_34
    move v0, v2

    .line 2968
    :goto_26
    return v0

    .line 2969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    .line 3038
    .line 3039
    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    .line 3046
    .line 3047
    .line 3048
    .line 3049
    .line 3050
    .line 3051
    .line 3052
    .line 3053
    .line 3054
    .line 3055
    .line 3056
    .line 3057
    .line 3058
    .line 3059
    .line 3060
    .line 3061
    .line 3062
    .line 3063
    .line 3064
    .line 3065
    .line 3066
    .line 3067
    .line 3068
    .line 3069
    .line 3070
    .line 3071
    .line 3072
    .line 3073
    .line 3074
    .line 3075
    .line 3076
    .line 3077
    .line 3078
    .line 3079
    .line 3080
    .line 3081
    .line 3082
    .line 3083
    .line 3084
    .line 3085
    .line 3086
    .line 3087
    .line 3088
    .line 3089
    .line 3090
    .line 3091
    .line 3092
    .line 3093
    .line 3094
    .line 3095
    .line 3096
    .line 3097
    .line 3098
    .line 3099
    .line 3100
    .line 3101
    .line 3102
    .line 3103
    .line 3104
    .line 3105
    .line 3106
    .line 3107
    .line 3108
    .line 3109
    .line 3110
    .line 3111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    const/high16 v8, 0xff00000

    .line 20
    .line 21
    and-int/2addr v4, v8

    .line 22
    ushr-int/lit8 v4, v4, 0x14

    .line 23
    .line 24
    const/16 v8, 0x4cf

    .line 25
    .line 26
    const/16 v9, 0x4d5

    .line 27
    .line 28
    packed-switch v4, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    mul-int/lit8 v3, v3, 0x35

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    mul-int/lit8 v3, v3, 0x35

    .line 58
    .line 59
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    mul-int/lit8 v3, v3, 0x35

    .line 76
    .line 77
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    mul-int/lit8 v3, v3, 0x35

    .line 90
    .line 91
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    mul-int/lit8 v3, v3, 0x35

    .line 108
    .line 109
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    mul-int/lit8 v3, v3, 0x35

    .line 122
    .line 123
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    mul-int/lit8 v3, v3, 0x35

    .line 136
    .line 137
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    mul-int/lit8 v3, v3, 0x35

    .line 150
    .line 151
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    mul-int/lit8 v3, v3, 0x35

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_2

    .line 184
    .line 185
    mul-int/lit8 v3, v3, 0x35

    .line 186
    .line 187
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_2

    .line 204
    .line 205
    mul-int/lit8 v3, v3, 0x35

    .line 206
    .line 207
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 218
    .line 219
    if-eqz v4, :cond_1

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_2

    .line 228
    .line 229
    mul-int/lit8 v3, v3, 0x35

    .line 230
    .line 231
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_2

    .line 242
    .line 243
    mul-int/lit8 v3, v3, 0x35

    .line 244
    .line 245
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v4

    .line 249
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_2

    .line 260
    .line 261
    mul-int/lit8 v3, v3, 0x35

    .line 262
    .line 263
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    goto/16 :goto_3

    .line 268
    .line 269
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_2

    .line 274
    .line 275
    mul-int/lit8 v3, v3, 0x35

    .line 276
    .line 277
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 278
    .line 279
    .line 280
    move-result-wide v4

    .line 281
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_2

    .line 292
    .line 293
    mul-int/lit8 v3, v3, 0x35

    .line 294
    .line 295
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 296
    .line 297
    .line 298
    move-result-wide v4

    .line 299
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_2

    .line 310
    .line 311
    mul-int/lit8 v3, v3, 0x35

    .line 312
    .line 313
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Ljava/lang/Float;

    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_2

    .line 334
    .line 335
    mul-int/lit8 v3, v3, 0x35

    .line 336
    .line 337
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Ljava/lang/Double;

    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 344
    .line 345
    .line 346
    move-result-wide v4

    .line 347
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 348
    .line 349
    .line 350
    move-result-wide v4

    .line 351
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 358
    .line 359
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 370
    .line 371
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    if-eqz v4, :cond_0

    .line 386
    .line 387
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    goto :goto_1

    .line 392
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 393
    .line 394
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 395
    .line 396
    .line 397
    move-result-wide v4

    .line 398
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    goto/16 :goto_3

    .line 403
    .line 404
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 405
    .line 406
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 413
    .line 414
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 415
    .line 416
    .line 417
    move-result-wide v4

    .line 418
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 425
    .line 426
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    goto/16 :goto_3

    .line 431
    .line 432
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 433
    .line 434
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    goto/16 :goto_3

    .line 439
    .line 440
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 441
    .line 442
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 449
    .line 450
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    goto/16 :goto_3

    .line 459
    .line 460
    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    if-eqz v4, :cond_0

    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto :goto_1

    .line 471
    :cond_0
    const/16 v4, 0x25

    .line 472
    .line 473
    :goto_1
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    add-int/2addr v3, v4

    .line 476
    goto/16 :goto_4

    .line 477
    .line 478
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 479
    .line 480
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    goto :goto_3

    .line 491
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 492
    .line 493
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 498
    .line 499
    if-eqz v4, :cond_1

    .line 500
    .line 501
    goto :goto_2

    .line 502
    :cond_1
    move v8, v9

    .line 503
    :goto_2
    move v4, v8

    .line 504
    goto :goto_3

    .line 505
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 506
    .line 507
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    goto :goto_3

    .line 512
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 513
    .line 514
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 515
    .line 516
    .line 517
    move-result-wide v4

    .line 518
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    goto :goto_3

    .line 523
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 524
    .line 525
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    goto :goto_3

    .line 530
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 531
    .line 532
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 533
    .line 534
    .line 535
    move-result-wide v4

    .line 536
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    goto :goto_3

    .line 541
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 542
    .line 543
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 544
    .line 545
    .line 546
    move-result-wide v4

    .line 547
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    goto :goto_3

    .line 552
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 553
    .line 554
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    goto :goto_3

    .line 563
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 564
    .line 565
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 566
    .line 567
    .line 568
    move-result-wide v4

    .line 569
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 570
    .line 571
    .line 572
    move-result-wide v4

    .line 573
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    :goto_3
    add-int/2addr v4, v3

    .line 578
    move v3, v4

    .line 579
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 580
    .line 581
    goto/16 :goto_0

    .line 582
    .line 583
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 584
    .line 585
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 586
    .line 587
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    add-int/2addr v0, v3

    .line 596
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 597
    .line 598
    if-eqz v1, :cond_4

    .line 599
    .line 600
    mul-int/lit8 v0, v0, 0x35

    .line 601
    .line 602
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 603
    .line 604
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->hashCode()I

    .line 609
    .line 610
    .line 611
    move-result p0

    .line 612
    add-int/2addr v0, p0

    .line 613
    :cond_4
    return v0

    .line 614
    nop

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_11

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    const/high16 p1, 0xff00000

    .line 30
    .line 31
    and-int/2addr p0, p1

    .line 32
    ushr-int/lit8 p0, p0, 0x14

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    move v5, v6

    .line 52
    :cond_0
    return v5

    .line 53
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    cmp-long p0, p0, v2

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    move v5, v6

    .line 62
    :cond_1
    return v5

    .line 63
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    move v5, v6

    .line 70
    :cond_2
    return v5

    .line 71
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    cmp-long p0, p0, v2

    .line 76
    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    move v5, v6

    .line 80
    :cond_3
    return v5

    .line 81
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    move v5, v6

    .line 88
    :cond_4
    return v5

    .line 89
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    move v5, v6

    .line 96
    :cond_5
    return v5

    .line 97
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_6

    .line 102
    .line 103
    move v5, v6

    .line 104
    :cond_6
    return v5

    .line 105
    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 106
    .line 107
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    :goto_0
    xor-int/2addr p0, v6

    .line 116
    return p0

    .line 117
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    move v5, v6

    .line 124
    :cond_7
    return v5

    .line 125
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    instance-of p1, p0, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    check-cast p0, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    .line 141
    .line 142
    if-eqz p1, :cond_9

    .line 143
    .line 144
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    goto :goto_0

    .line 151
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    return p0

    .line 162
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_a

    .line 167
    .line 168
    move v5, v6

    .line 169
    :cond_a
    return v5

    .line 170
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 171
    .line 172
    .line 173
    move-result-wide p0

    .line 174
    cmp-long p0, p0, v2

    .line 175
    .line 176
    if-eqz p0, :cond_b

    .line 177
    .line 178
    move v5, v6

    .line 179
    :cond_b
    return v5

    .line 180
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_c

    .line 185
    .line 186
    move v5, v6

    .line 187
    :cond_c
    return v5

    .line 188
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 189
    .line 190
    .line 191
    move-result-wide p0

    .line 192
    cmp-long p0, p0, v2

    .line 193
    .line 194
    if-eqz p0, :cond_d

    .line 195
    .line 196
    move v5, v6

    .line 197
    :cond_d
    return v5

    .line 198
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    cmp-long p0, p0, v2

    .line 203
    .line 204
    if-eqz p0, :cond_e

    .line 205
    .line 206
    move v5, v6

    .line 207
    :cond_e
    return v5

    .line 208
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-eqz p0, :cond_f

    .line 217
    .line 218
    move v5, v6

    .line 219
    :cond_f
    return v5

    .line 220
    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 221
    .line 222
    .line 223
    move-result-wide p0

    .line 224
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 225
    .line 226
    .line 227
    move-result-wide p0

    .line 228
    cmp-long p0, p0, v2

    .line 229
    .line 230
    if-eqz p0, :cond_10

    .line 231
    .line 232
    move v5, v6

    .line 233
    :cond_10
    return v5

    .line 234
    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    .line 235
    .line 236
    shl-int p0, v6, p0

    .line 237
    .line 238
    invoke-static {v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    and-int/2addr p0, p1

    .line 243
    if-eqz p0, :cond_12

    .line 244
    .line 245
    move v5, v6

    .line 246
    :cond_12
    return v5

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v3, v0

    .line 6
    move v2, v1

    .line 7
    move v4, v2

    .line 8
    :goto_0
    iget v5, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_15

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 14
    .line 15
    aget v5, v5, v2

    .line 16
    .line 17
    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 18
    .line 19
    aget v8, v7, v5

    .line 20
    .line 21
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    add-int/lit8 v10, v5, 0x2

    .line 26
    .line 27
    aget v7, v7, v10

    .line 28
    .line 29
    and-int v10, v7, v0

    .line 30
    .line 31
    ushr-int/lit8 v7, v7, 0x14

    .line 32
    .line 33
    shl-int v7, v6, v7

    .line 34
    .line 35
    if-eq v10, v3, :cond_1

    .line 36
    .line 37
    if-eq v10, v0, :cond_0

    .line 38
    .line 39
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 40
    .line 41
    int-to-long v11, v10

    .line 42
    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :cond_0
    move v3, v10

    .line 47
    :cond_1
    const/high16 v10, 0x10000000

    .line 48
    .line 49
    and-int/2addr v10, v9

    .line 50
    if-eqz v10, :cond_2

    .line 51
    .line 52
    move v10, v6

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v10, v1

    .line 55
    :goto_1
    if-eqz v10, :cond_5

    .line 56
    .line 57
    if-ne v3, v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    and-int v10, v4, v7

    .line 65
    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    move v10, v6

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v10, v1

    .line 71
    :goto_2
    if-nez v10, :cond_5

    .line 72
    .line 73
    return v1

    .line 74
    :cond_5
    const/high16 v10, 0xff00000

    .line 75
    .line 76
    and-int/2addr v10, v9

    .line 77
    ushr-int/lit8 v10, v10, 0x14

    .line 78
    .line 79
    const/16 v11, 0x9

    .line 80
    .line 81
    if-eq v10, v11, :cond_11

    .line 82
    .line 83
    const/16 v11, 0x11

    .line 84
    .line 85
    if-eq v10, v11, :cond_11

    .line 86
    .line 87
    const/16 v7, 0x1b

    .line 88
    .line 89
    if-eq v10, v7, :cond_d

    .line 90
    .line 91
    const/16 v7, 0x3c

    .line 92
    .line 93
    if-eq v10, v7, :cond_c

    .line 94
    .line 95
    const/16 v7, 0x44

    .line 96
    .line 97
    if-eq v10, v7, :cond_c

    .line 98
    .line 99
    const/16 v7, 0x31

    .line 100
    .line 101
    if-eq v10, v7, :cond_d

    .line 102
    .line 103
    const/16 v7, 0x32

    .line 104
    .line 105
    if-eq v10, v7, :cond_6

    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_6
    and-int v7, v9, v0

    .line 110
    .line 111
    int-to-long v7, v7

    .line 112
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    iget-object v8, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 117
    .line 118
    check-cast v8, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast v7, Lcom/google/protobuf/MapFieldLite;

    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lcom/google/protobuf/MapEntryLite;

    .line 137
    .line 138
    iget-object v5, v5, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    .line 139
    .line 140
    iget-object v5, v5, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    sget-object v8, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    .line 147
    .line 148
    if-eq v5, v8, :cond_8

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const/4 v7, 0x0

    .line 160
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_b

    .line 165
    .line 166
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    if-nez v7, :cond_a

    .line 171
    .line 172
    sget-object v7, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v7, v9}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    :cond_a
    invoke-interface {v7, v8}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_9

    .line 187
    .line 188
    move v6, v1

    .line 189
    :cond_b
    :goto_3
    if-nez v6, :cond_14

    .line 190
    .line 191
    return v1

    .line 192
    :cond_c
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_14

    .line 197
    .line 198
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    and-int v6, v9, v0

    .line 203
    .line 204
    int-to-long v6, v6

    .line 205
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-interface {v5, v6}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-nez v5, :cond_14

    .line 214
    .line 215
    return v1

    .line 216
    :cond_d
    and-int v7, v9, v0

    .line 217
    .line 218
    int-to-long v7, v7

    .line 219
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_e

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    move v8, v1

    .line 237
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-ge v8, v9, :cond_10

    .line 242
    .line 243
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-interface {v5, v9}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-nez v9, :cond_f

    .line 252
    .line 253
    move v6, v1

    .line 254
    goto :goto_5

    .line 255
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_10
    :goto_5
    if-nez v6, :cond_14

    .line 259
    .line 260
    return v1

    .line 261
    :cond_11
    if-ne v3, v0, :cond_12

    .line 262
    .line 263
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    goto :goto_6

    .line 268
    :cond_12
    and-int/2addr v7, v4

    .line 269
    if-eqz v7, :cond_13

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_13
    move v6, v1

    .line 273
    :goto_6
    if-eqz v6, :cond_14

    .line 274
    .line 275
    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    and-int v6, v9, v0

    .line 280
    .line 281
    int-to-long v6, v6

    .line 282
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-interface {v5, v6}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-nez v5, :cond_14

    .line 291
    .line 292
    return v1

    .line 293
    :cond_14
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_15
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 298
    .line 299
    if-eqz v0, :cond_16

    .line 300
    .line 301
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-nez p0, :cond_16

    .line 312
    .line 313
    return v1

    .line 314
    :cond_16
    return v6
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 15
    .line 16
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 20
    .line 21
    .line 22
    iput v1, v0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const v3, 0xfffff

    .line 37
    .line 38
    .line 39
    and-int/2addr v3, v2

    .line 40
    int-to-long v3, v3

    .line 41
    const/high16 v5, 0xff00000

    .line 42
    .line 43
    and-int/2addr v2, v5

    .line 44
    ushr-int/lit8 v2, v2, 0x14

    .line 45
    .line 46
    const/16 v5, 0x9

    .line 47
    .line 48
    sget-object v6, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 49
    .line 50
    if-eq v2, v5, :cond_2

    .line 51
    .line 52
    packed-switch v2, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v5, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 63
    .line 64
    check-cast v5, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-object v5, v2

    .line 70
    check-cast v5, Lcom/google/protobuf/MapFieldLite;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 80
    .line 81
    invoke-virtual {v2, v3, v4, p1}, Lcom/google/protobuf/ListFieldSchema;->makeImmutableListAt(JLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v2, v3}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    .line 79
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 81
    iget-object v15, v8, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v6, v8, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 82
    iget-object v14, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    iget v13, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iget v5, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    const/16 v17, 0x0

    move-object/from16 v4, v17

    move-object v9, v4

    .line 83
    :goto_0
    :try_start_0
    move-object/from16 v11, p2

    check-cast v11, Lcom/google/protobuf/CodedInputStreamReader;

    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v2

    .line 84
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    iget v1, v8, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt v2, v1, :cond_0

    .line 85
    invoke-virtual {v8, v2, v3}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    goto :goto_2

    :goto_1
    move/from16 v22, v5

    move-object/from16 v18, v14

    move-object v12, v15

    goto/16 :goto_1f

    :cond_0
    const/4 v1, -0x1

    :goto_2
    move v10, v1

    if-gez v10, :cond_9

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_2

    move v0, v5

    :goto_3
    if-ge v0, v13, :cond_1

    .line 86
    aget v3, v14, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v15

    move-object/from16 v6, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    if-eqz v4, :cond_12

    .line 88
    invoke-virtual {v15, v7, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 89
    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3

    move-object/from16 v12, v17

    goto :goto_4

    .line 90
    :cond_3
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v6, v0, v1, v2}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v1

    :goto_4
    if-eqz v12, :cond_5

    if-nez v9, :cond_4

    .line 91
    :try_start_2
    invoke-virtual {v6, v7}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v18, v14

    move-object v12, v15

    goto/16 :goto_c

    :cond_4
    move-object v1, v9

    :goto_5
    move-object v9, v6

    move-object/from16 v10, p1

    move v3, v13

    move-object/from16 v13, p3

    move-object/from16 v18, v14

    move-object v14, v1

    move-object v2, v15

    move-object v15, v4

    move-object/from16 v16, v2

    .line 92
    :try_start_3
    invoke-virtual/range {v9 .. v16}, Lcom/google/protobuf/ExtensionSchema;->parseExtension(Ljava/lang/Object;Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v1

    goto :goto_6

    :cond_5
    move v3, v13

    move-object/from16 v18, v14

    move-object v2, v15

    .line 93
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields()V

    if-nez v4, :cond_6

    .line 94
    invoke-virtual {v2, v7}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 95
    :cond_6
    invoke-virtual {v2, v4, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    :goto_6
    move-object v12, v2

    move v13, v3

    goto/16 :goto_8

    :cond_7
    move v0, v5

    :goto_7
    if-ge v0, v3, :cond_8

    .line 96
    aget v5, v18, v0

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p1

    move v13, v3

    move v3, v5

    move-object v5, v12

    move-object/from16 v6, p1

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v2, v12

    move v3, v13

    goto :goto_7

    :cond_8
    move-object v12, v2

    if-eqz v4, :cond_12

    move-object v14, v7

    goto/16 :goto_1c

    :catchall_1
    move-exception v0

    move-object v12, v2

    move v13, v3

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v18, v14

    move-object v12, v15

    goto/16 :goto_b

    :cond_9
    move-object/from16 v18, v14

    move-object v12, v15

    .line 98
    :try_start_4
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    const/high16 v1, 0xff00000

    and-int/2addr v1, v14

    ushr-int/lit8 v1, v1, 0x14

    const v21, 0xfffff

    .line 99
    iget-object v3, v11, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iget-object v15, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    packed-switch v1, :pswitch_data_0

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v14, v7

    move-object v7, v4

    if-nez v7, :cond_e

    .line 100
    :try_start_5
    invoke-virtual {v12, v14}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    goto/16 :goto_16

    .line 101
    :pswitch_0
    :try_start_6
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 102
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    const/4 v14, 0x3

    .line 103
    invoke-virtual {v11, v14}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 104
    invoke-virtual {v11, v1, v3, v0}, Lcom/google/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 105
    invoke-virtual {v8, v2, v10, v7, v1}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    goto/16 :goto_b

    .line 106
    :pswitch_1
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 108
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v19

    .line 109
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 110
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    .line 112
    :pswitch_2
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 114
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 116
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    .line 118
    :pswitch_3
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 120
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v19

    .line 121
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 122
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    .line 124
    :pswitch_4
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    const/4 v1, 0x5

    .line 125
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 126
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    const/4 v1, 0x0

    .line 130
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 131
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 132
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 133
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    .line 134
    :cond_a
    invoke-static {v7, v2, v1, v4, v12}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    :goto_8
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v14, v7

    goto/16 :goto_1e

    .line 135
    :cond_b
    :goto_9
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 137
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 140
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    .line 142
    :pswitch_8
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 143
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    const/4 v14, 0x2

    .line 144
    invoke-virtual {v11, v14}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 145
    invoke-virtual {v11, v1, v3, v0}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 146
    invoke-virtual {v8, v2, v10, v7, v1}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 147
    :pswitch_9
    invoke-virtual {v8, v7, v14, v11}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 148
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    and-int v1, v14, v21

    int-to-long v14, v1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 150
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 152
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_b
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 154
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_c
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 157
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 158
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_d
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 160
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_e
    and-int v1, v14, v21

    int-to-long v14, v1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 164
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v19

    .line 165
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 166
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_f
    and-int v1, v14, v21

    int-to-long v14, v1

    .line 168
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 169
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_10
    and-int v1, v14, v21

    int-to-long v14, v1

    const/4 v1, 0x5

    .line 171
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 172
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    .line 173
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 174
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_11
    and-int v1, v14, v21

    int-to-long v14, v1

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 177
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v19

    .line 178
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 179
    invoke-static {v14, v15, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v8, v2, v10, v7}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_a
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v14, v7

    move-object v7, v4

    goto/16 :goto_15

    :goto_b
    move/from16 v22, v5

    :goto_c
    move-object v14, v7

    goto/16 :goto_21

    .line 181
    :pswitch_12
    :try_start_7
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v14
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move-object v15, v4

    move-object v4, v14

    move/from16 v22, v5

    move-object/from16 v5, p3

    move-object/from16 v23, v6

    move-object v6, v11

    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V

    move-object v14, v7

    :goto_d
    move-object v7, v15

    goto/16 :goto_15

    :catch_0
    move-object v15, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    :catch_1
    move-object v14, v7

    :goto_e
    move-object v7, v15

    goto/16 :goto_17

    :pswitch_13
    move-object v15, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    and-int v1, v14, v21

    int-to-long v3, v1

    .line 182
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object v10, v7

    move-object/from16 v7, p3

    .line 183
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v14, v10

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v14, v10

    :goto_f
    move-object v7, v15

    goto/16 :goto_20

    :catch_2
    move-object v14, v10

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v14, v7

    goto :goto_f

    :pswitch_14
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    .line 184
    :try_start_a
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_15
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 186
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_16
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 188
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_17
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 190
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 191
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed32List(Ljava/util/List;)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_11

    :pswitch_18
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v6, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v3, v1

    .line 192
    :try_start_b
    invoke-virtual {v15, v3, v4, v6}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 193
    invoke-virtual {v11, v3}, Lcom/google/protobuf/CodedInputStreamReader;->readEnumList(Ljava/util/List;)V

    .line 194
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v1, p1

    move-object v5, v7

    move-object v10, v6

    move-object v6, v12

    .line 195
    :try_start_c
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_10

    :pswitch_19
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 196
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 197
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1a
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 198
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 199
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1b
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 200
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1c
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 202
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1d
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 204
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 205
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1e
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 206
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_1f
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 208
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 209
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_20
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 210
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 211
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_21
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 212
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 213
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_22
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 214
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 215
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_23
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 216
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_24
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 218
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 219
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_11

    :pswitch_25
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 220
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 221
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed32List(Ljava/util/List;)V
    :try_end_c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_11

    :pswitch_26
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v6, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v3, v1

    .line 222
    :try_start_d
    invoke-virtual {v15, v3, v4, v6}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 223
    invoke-virtual {v11, v3}, Lcom/google/protobuf/CodedInputStreamReader;->readEnumList(Ljava/util/List;)V

    .line 224
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v1, p1

    move-object v5, v7

    move-object v10, v6

    move-object v6, v12

    .line 225
    :try_start_e
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    :goto_10
    move-object v14, v10

    goto/16 :goto_1e

    :catchall_6
    move-exception v0

    move-object v14, v6

    goto/16 :goto_20

    :catch_3
    move-object v14, v6

    goto/16 :goto_17

    :pswitch_27
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 226
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 227
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32List(Ljava/util/List;)V

    goto :goto_11

    :pswitch_28
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v10, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 228
    invoke-virtual {v15, v1, v2, v10}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readBytesList(Ljava/util/List;)V
    :try_end_e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_11
    move-object v14, v10

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object v14, v10

    goto/16 :goto_20

    :catch_4
    move-object v14, v10

    goto/16 :goto_17

    :pswitch_29
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v15, v7

    move-object v7, v4

    .line 230
    :try_start_f
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move-object v4, v11

    move-object/from16 v6, p3

    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_12

    :pswitch_2a
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v15, v7

    move-object v7, v4

    .line 232
    invoke-virtual {v8, v15, v14, v11}, Lcom/google/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    :try_end_f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :goto_12
    move-object v14, v15

    goto/16 :goto_15

    :catchall_8
    move-exception v0

    move-object v14, v15

    goto/16 :goto_20

    :catch_5
    move-object v14, v15

    goto/16 :goto_17

    :pswitch_2b
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 233
    :try_start_10
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2c
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 235
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2d
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 237
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2e
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 239
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 240
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_2f
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 241
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_30
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 243
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 244
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_31
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 245
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_32
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 247
    invoke-virtual {v15, v1, v2, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 248
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_33
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    .line 249
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 250
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    const/4 v3, 0x3

    .line 251
    invoke-virtual {v11, v3}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 252
    invoke-virtual {v11, v1, v2, v0}, Lcom/google/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 253
    invoke-virtual {v8, v10, v5, v1}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_34
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x0

    .line 254
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 255
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    .line 256
    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 257
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_35
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x0

    .line 258
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 259
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    .line 260
    invoke-static {v3, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 261
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_36
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x1

    .line 262
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 263
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    .line 264
    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 265
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_37
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x5

    .line 266
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 267
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    .line 268
    invoke-static {v3, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 269
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_38
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 271
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 272
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 273
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_13

    .line 274
    :cond_c
    invoke-static {v5, v2, v1, v7, v12}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v5

    goto/16 :goto_1e

    .line 275
    :cond_d
    :goto_13
    invoke-static {v14}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 276
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_39
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 277
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v3

    invoke-static {v3, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 278
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_3a
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 279
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v1, v2, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_3b
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    .line 281
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 282
    invoke-virtual {v8, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    const/4 v3, 0x2

    .line 283
    invoke-virtual {v11, v3}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 284
    invoke-virtual {v11, v1, v2, v0}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 285
    invoke-virtual {v8, v10, v5, v1}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :pswitch_3c
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    .line 286
    invoke-virtual {v8, v5, v14, v11}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 287
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :goto_14
    move-object v14, v5

    goto/16 :goto_15

    :catch_6
    move-object v14, v5

    goto/16 :goto_17

    :pswitch_3d
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 289
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    .line 290
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 291
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_3e
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 292
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v3

    invoke-static {v3, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 293
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_3f
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 294
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v3

    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 295
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_40
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 296
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v3

    invoke-static {v3, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 297
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_41
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 299
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    .line 300
    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 301
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_14

    :pswitch_42
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    .line 302
    invoke-virtual {v11}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v3

    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 303
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_43
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v1, v1

    const/4 v4, 0x5

    .line 304
    invoke-virtual {v11, v4}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 305
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    .line 306
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 307
    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_44
    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v5, v7

    move-object v7, v4

    and-int v1, v14, v21

    int-to-long v14, v1

    const/4 v1, 0x1

    .line 308
    invoke-virtual {v11, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 309
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v19

    .line 310
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_10
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 v2, p1

    move-wide v3, v14

    move-object v14, v5

    move-wide/from16 v5, v19

    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 311
    invoke-virtual {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V
    :try_end_11
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :goto_15
    move-object v4, v7

    goto :goto_1e

    :catchall_9
    move-exception v0

    goto/16 :goto_20

    :catchall_a
    move-exception v0

    move-object v14, v5

    goto/16 :goto_20

    :goto_16
    move-object v4, v1

    goto :goto_18

    :catch_7
    :goto_17
    move-object v4, v7

    goto :goto_1a

    :cond_e
    move-object v4, v7

    .line 312
    :goto_18
    :try_start_12
    invoke-virtual {v12, v4, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    if-nez v1, :cond_13

    move/from16 v0, v22

    :goto_19
    if-ge v0, v13, :cond_f

    .line 313
    aget v3, v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    .line 314
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_f
    if-eqz v4, :cond_12

    goto :goto_1c

    .line 315
    :catch_8
    :goto_1a
    :try_start_13
    invoke-virtual {v12}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields()V

    if-nez v4, :cond_10

    .line 316
    invoke-virtual {v12, v14}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    move-object v4, v1

    .line 317
    :cond_10
    invoke-virtual {v12, v4, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-nez v1, :cond_13

    move/from16 v0, v22

    :goto_1b
    if-ge v0, v13, :cond_11

    .line 318
    aget v3, v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    .line 319
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_11
    if-eqz v4, :cond_12

    .line 320
    :goto_1c
    invoke-virtual {v12, v14, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    :goto_1d
    return-void

    :cond_13
    :goto_1e
    move-object v15, v12

    move-object v7, v14

    move-object/from16 v14, v18

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    goto :goto_21

    :catchall_c
    move-exception v0

    move/from16 v22, v5

    :goto_1f
    move-object v14, v7

    move-object v7, v4

    goto :goto_20

    :catchall_d
    move-exception v0

    goto/16 :goto_1

    :goto_20
    move-object v4, v7

    :goto_21
    move/from16 v7, v22

    :goto_22
    if-ge v7, v13, :cond_14

    .line 321
    aget v3, v18, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v12

    move-object/from16 v6, p1

    .line 322
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_14
    if-eqz v4, :cond_15

    .line 323
    invoke-virtual {v12, v14, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    :cond_15
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    .line 5
    aget v1, v1, v0

    const/high16 v3, 0xff00000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 7
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 10
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 14
    :pswitch_4
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 15
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    check-cast v3, Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3, v1, v2}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 17
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 18
    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 20
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 26
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 29
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 32
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 35
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 38
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 41
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 42
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 45
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    move-result v1

    .line 47
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, p1, v6, v7, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 49
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 52
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 55
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 58
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 61
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 64
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    move-result v1

    .line 66
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, p1, v6, v7, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 68
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    move-result-wide v8

    .line 70
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 73
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 74
    invoke-virtual {v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 325
    iget-boolean v0, v15, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_18

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 327
    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v0, p3

    move v2, v10

    move v6, v2

    const/4 v1, -0x1

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    .line 328
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 329
    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 330
    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v8, v15, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    iget v7, v15, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-le v3, v1, :cond_1

    .line 331
    div-int/lit8 v2, v2, 0x3

    if-lt v3, v7, :cond_2

    if-gt v3, v8, :cond_2

    .line 332
    invoke-virtual {v15, v3, v2}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_2

    :cond_1
    if-lt v3, v7, :cond_2

    if-gt v3, v8, :cond_2

    .line 333
    invoke-virtual {v15, v3, v10}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    move v8, v1

    const/4 v7, -0x1

    if-ne v8, v7, :cond_3

    move/from16 v17, v3

    move v2, v4

    move/from16 v28, v5

    move/from16 v18, v7

    move-object/from16 v26, v9

    move/from16 v27, v10

    goto/16 :goto_11

    :cond_3
    add-int/lit8 v1, v8, 0x1

    .line 334
    iget-object v2, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v1, v2, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v13, v18, 0x14

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v19, v3

    move/from16 p3, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    if-gt v13, v7, :cond_c

    add-int/lit8 v7, v8, 0x2

    .line 335
    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v10, 0x1

    shl-int v7, v10, v7

    const v10, 0xfffff

    and-int/2addr v2, v10

    if-eq v2, v5, :cond_6

    if-eq v5, v10, :cond_4

    int-to-long v10, v5

    .line 336
    invoke-virtual {v9, v14, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_4
    if-eq v2, v10, :cond_5

    int-to-long v5, v2

    .line 337
    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_5
    move v11, v6

    move v6, v2

    goto :goto_3

    :cond_6
    move v11, v6

    move v6, v5

    :goto_3
    const/4 v2, 0x5

    packed-switch v13, :pswitch_data_0

    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    goto/16 :goto_b

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, p3

    move-object/from16 v13, p5

    .line 338
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v16

    .line 339
    iget-wide v0, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 340
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v20

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v19

    move-wide v2, v3

    move-wide/from16 v4, v20

    .line 341
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v13, p5

    move/from16 v17, v19

    move/from16 v10, p3

    goto/16 :goto_b

    :pswitch_1
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    .line 342
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 343
    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 344
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 345
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_2
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    .line 346
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 347
    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_3
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 348
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 349
    iget-object v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 350
    invoke-virtual {v15, v8, v14}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 351
    invoke-virtual {v15, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object v0, v4

    move-object/from16 v2, p2

    move v3, v5

    move-object v5, v4

    move/from16 v4, p4

    move-object v10, v5

    move-object/from16 v5, p5

    .line 352
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 353
    invoke-virtual {v15, v8, v14, v10}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 354
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_4

    .line 355
    :cond_8
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 356
    :goto_4
    iget-object v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    .line 357
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 358
    iget-wide v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v22, 0x0

    cmp-long v1, v1, v22

    if-eqz v1, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    .line 359
    :goto_5
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v14, v3, v4, v10}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_9

    :pswitch_7
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_a

    .line 360
    invoke-static {v5, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v10, v5

    goto/16 :goto_7

    :pswitch_8
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 361
    invoke-static {v5, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v20

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v10, v5

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :cond_a
    move v10, v5

    goto/16 :goto_b

    :pswitch_9
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    .line 362
    invoke-static {v12, v10, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 363
    iget v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_a
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    .line 364
    invoke-static {v12, v10, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v16

    .line 365
    iget-wide v1, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    or-int v0, v11, v7

    goto :goto_a

    :pswitch_b
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_b

    .line 366
    invoke-static {v10, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 367
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v14, v3, v4, v0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    :goto_7
    add-int/lit8 v0, v10, 0x4

    goto :goto_9

    :pswitch_c
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 368
    invoke-static {v10, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    .line 369
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    :goto_8
    add-int/lit8 v0, v10, 0x8

    :goto_9
    or-int v1, v11, v7

    move/from16 v16, v0

    move v0, v1

    :goto_a
    move v5, v6

    move v6, v0

    move/from16 v0, v16

    goto :goto_d

    :cond_b
    :goto_b
    move/from16 v28, v6

    move-object/from16 v26, v9

    move v2, v10

    move v6, v11

    const/16 v18, -0x1

    const/16 v27, 0x0

    move v10, v8

    goto/16 :goto_11

    :cond_c
    move/from16 v10, p3

    move/from16 v17, v19

    const/16 v2, 0x1b

    if-ne v13, v2, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 370
    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 371
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    .line 372
    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_e

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_c

    :cond_d
    mul-int/lit8 v1, v1, 0x2

    .line 374
    :goto_c
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 375
    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v7, v0

    .line 376
    invoke-virtual {v15, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v11, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, p5

    .line 377
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v6, v7

    move v5, v11

    :goto_d
    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v8

    move/from16 v1, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v5

    move/from16 v25, v6

    move/from16 v19, v8

    move-object/from16 v26, v9

    move v15, v10

    const/16 v18, -0x1

    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_10
    move v11, v5

    move v7, v6

    const/16 v2, 0x31

    if-gt v13, v2, :cond_12

    int-to-long v5, v1

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move-wide/from16 v21, v3

    move v3, v10

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move v15, v7

    const/16 v18, -0x1

    move/from16 v7, p3

    move/from16 v19, v8

    move/from16 v25, v15

    const v15, 0xfffff

    move-object/from16 v26, v9

    move v15, v10

    const/16 v27, 0x0

    move-wide/from16 v9, v23

    move/from16 v28, v11

    move v11, v13

    move-wide/from16 v12, v21

    move-object/from16 v14, p5

    .line 378
    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto/16 :goto_f

    :cond_11
    move v4, v0

    goto/16 :goto_10

    :cond_12
    move/from16 p3, v0

    move-wide/from16 v21, v3

    move/from16 v25, v7

    move/from16 v19, v8

    move-object/from16 v26, v9

    move v15, v10

    move/from16 v28, v11

    const/16 v18, -0x1

    const/16 v27, 0x0

    const/16 v0, 0x32

    if-ne v13, v0, :cond_14

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v21

    move-object/from16 v8, p5

    .line 379
    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_f

    :cond_13
    :goto_e
    move v4, v15

    goto :goto_10

    :cond_14
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v17

    move v9, v13

    move-wide/from16 v10, v21

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 380
    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_f
    move/from16 v2, v19

    move/from16 v6, v25

    goto :goto_12

    :goto_10
    move v2, v4

    move/from16 v10, v19

    move/from16 v6, v25

    .line 381
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 382
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v10

    :goto_12
    move/from16 v5, v28

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v17

    move-object/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_0

    :cond_15
    move/from16 v25, v6

    move-object/from16 v26, v9

    const v1, 0xfffff

    if-eq v5, v1, :cond_16

    int-to-long v1, v5

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v26

    .line 383
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    goto :goto_13

    .line 384
    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 385
    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    move-object p2, p0

    .line 20
    check-cast p2, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object p2, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {v0, v1, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v3, p0

    .line 36
    check-cast v3, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-object v4, p2

    .line 42
    check-cast v4, Lcom/google/protobuf/MapFieldLite;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    xor-int/2addr v4, v2

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object v4, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4, p2}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, p1, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object p2, v4

    .line 67
    :cond_1
    :goto_0
    check-cast p0, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast p2, Lcom/google/protobuf/MapFieldLite;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    check-cast p3, Lcom/google/protobuf/MapEntryLite;

    .line 78
    .line 79
    iget-object p0, p3, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    .line 80
    .line 81
    check-cast p5, Lcom/google/protobuf/CodedInputStreamReader;

    .line 82
    .line 83
    const/4 p1, 0x2

    .line 84
    invoke-virtual {p5, p1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p5, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 88
    .line 89
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p3, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v4, v3

    .line 102
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const v6, 0x7fffffff

    .line 107
    .line 108
    .line 109
    if-eq v5, v6, :cond_7

    .line 110
    .line 111
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    .line 112
    .line 113
    .line 114
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz v6, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    const-string v6, "Unable to parse map entry."

    .line 119
    .line 120
    if-eq v5, v2, :cond_5

    .line 121
    .line 122
    if-eq v5, p1, :cond_4

    .line 123
    .line 124
    :try_start_1
    invoke-virtual {p5}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 132
    .line 133
    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v5

    .line 137
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {p5, v5, v7, p4}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-virtual {p5, v5, v7, v7}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    :try_start_2
    invoke-virtual {p5}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_6

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 164
    .line 165
    invoke-direct {p0, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_7
    :goto_2
    invoke-virtual {p2, v1, v4}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    invoke-virtual {p3, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 178
    .line 179
    .line 180
    throw p0
.end method

.method public final mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "Source subfield "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 94
    .line 95
    aget p0, p0, p1

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method public final mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_3
    invoke-interface {p3, p0, v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Source subfield "

    .line 93
    .line 94
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    aget p1, v0, p1

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const p1, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, p1

    .line 24
    int-to-long p0, p0

    .line 25
    sget-object p2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final newInstance()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 9
    .line 10
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 22
    .line 23
    return-object p0
.end method

.method public final parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move/from16 v7, p4

    .line 8
    .line 9
    move-wide/from16 v2, p6

    .line 10
    .line 11
    move/from16 v4, p5

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v5, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 20
    .line 21
    invoke-virtual {v5, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 26
    .line 27
    check-cast v0, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-object v10, v9

    .line 33
    check-cast v10, Lcom/google/protobuf/MapFieldLite;

    .line 34
    .line 35
    invoke-virtual {v10}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    const/4 v11, 0x1

    .line 40
    xor-int/2addr v10, v11

    .line 41
    if-eqz v10, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v10, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 47
    .line 48
    invoke-virtual {v10}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v0, v10, v9}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v1, v2, v3, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object v9, v10

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast v4, Lcom/google/protobuf/MapEntryLite;

    .line 63
    .line 64
    iget-object v10, v4, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast v9, Lcom/google/protobuf/MapFieldLite;

    .line 70
    .line 71
    move/from16 v0, p3

    .line 72
    .line 73
    invoke-static {v6, v0, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget v1, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 78
    .line 79
    if-ltz v1, :cond_7

    .line 80
    .line 81
    sub-int v2, v7, v0

    .line 82
    .line 83
    if-gt v1, v2, :cond_7

    .line 84
    .line 85
    add-int v12, v0, v1

    .line 86
    .line 87
    iget-object v1, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v13, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v14, v1

    .line 92
    move-object v15, v13

    .line 93
    :goto_0
    if-ge v0, v12, :cond_5

    .line 94
    .line 95
    add-int/lit8 v1, v0, 0x1

    .line 96
    .line 97
    aget-byte v0, v6, v0

    .line 98
    .line 99
    if-gez v0, :cond_1

    .line 100
    .line 101
    invoke-static {v0, v6, v1, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v1, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 106
    .line 107
    move/from16 v16, v1

    .line 108
    .line 109
    move v1, v0

    .line 110
    move/from16 v0, v16

    .line 111
    .line 112
    :cond_1
    ushr-int/lit8 v2, v0, 0x3

    .line 113
    .line 114
    and-int/lit8 v3, v0, 0x7

    .line 115
    .line 116
    if-eq v2, v11, :cond_3

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    if-eq v2, v4, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    iget-object v2, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-ne v3, v2, :cond_4

    .line 129
    .line 130
    iget-object v3, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 131
    .line 132
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    move-object/from16 v0, p2

    .line 137
    .line 138
    move/from16 v2, p4

    .line 139
    .line 140
    move-object/from16 v5, p8

    .line 141
    .line 142
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v15, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-ne v3, v2, :cond_4

    .line 156
    .line 157
    iget-object v3, v10, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    move-object/from16 v0, p2

    .line 161
    .line 162
    move/from16 v2, p4

    .line 163
    .line 164
    move-object/from16 v5, p8

    .line 165
    .line 166
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object v14, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_4
    :goto_1
    invoke-static {v0, v6, v1, v7, v8}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    goto :goto_0

    .line 178
    :cond_5
    if-ne v0, v12, :cond_6

    .line 179
    .line 180
    invoke-virtual {v9, v14, v15}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    return v12

    .line 184
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    throw v0

    .line 189
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    throw v0
.end method

.method public final parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v5, p3

    .line 8
    .line 9
    move/from16 v2, p5

    .line 10
    .line 11
    move/from16 v9, p6

    .line 12
    .line 13
    move/from16 v3, p7

    .line 14
    .line 15
    move-wide/from16 v6, p10

    .line 16
    .line 17
    move/from16 v10, p12

    .line 18
    .line 19
    move-object/from16 v8, p13

    .line 20
    .line 21
    add-int/lit8 v11, v10, 0x2

    .line 22
    .line 23
    iget-object v12, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 24
    .line 25
    aget v11, v12, v11

    .line 26
    .line 27
    const v12, 0xfffff

    .line 28
    .line 29
    .line 30
    and-int/2addr v11, v12

    .line 31
    int-to-long v11, v11

    .line 32
    const/4 v15, 0x2

    .line 33
    const/4 v13, 0x5

    .line 34
    sget-object v14, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 35
    .line 36
    packed-switch p9, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :pswitch_0
    const/4 v6, 0x3

    .line 42
    if-ne v3, v6, :cond_7

    .line 43
    .line 44
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    and-int/lit8 v2, v2, -0x8

    .line 49
    .line 50
    or-int/lit8 v7, v2, 0x4

    .line 51
    .line 52
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v2, v11

    .line 57
    move-object/from16 v4, p2

    .line 58
    .line 59
    move/from16 v5, p3

    .line 60
    .line 61
    move/from16 v6, p4

    .line 62
    .line 63
    move-object/from16 v8, p13

    .line 64
    .line 65
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v9, v10, v1, v11}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_1
    if-nez v3, :cond_7

    .line 75
    .line 76
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :pswitch_2
    if-nez v3, :cond_7

    .line 99
    .line 100
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 105
    .line 106
    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :pswitch_3
    if-nez v3, :cond_7

    .line 123
    .line 124
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget v4, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 129
    .line 130
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    int-to-long v4, v4

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v14, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 164
    .line 165
    .line 166
    :goto_1
    move v0, v3

    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :pswitch_4
    if-ne v3, v15, :cond_7

    .line 170
    .line 171
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    iget-object v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 176
    .line 177
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_8

    .line 184
    .line 185
    :pswitch_5
    if-ne v3, v15, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    move-object v2, v11

    .line 196
    move-object/from16 v4, p2

    .line 197
    .line 198
    move/from16 v5, p3

    .line 199
    .line 200
    move/from16 v6, p4

    .line 201
    .line 202
    move-object/from16 v7, p13

    .line 203
    .line 204
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v0, v9, v10, v1, v11}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_2
    move v0, v2

    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :pswitch_6
    if-ne v3, v15, :cond_7

    .line 215
    .line 216
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 221
    .line 222
    if-nez v2, :cond_2

    .line 223
    .line 224
    const-string v2, ""

    .line 225
    .line 226
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_2
    const/high16 v3, 0x20000000

    .line 231
    .line 232
    and-int v3, p8, v3

    .line 233
    .line 234
    if-eqz v3, :cond_5

    .line 235
    .line 236
    add-int v3, v0, v2

    .line 237
    .line 238
    sget-object v5, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    .line 239
    .line 240
    invoke-virtual {v5, v0, v3, v4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(II[B)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-nez v3, :cond_3

    .line 245
    .line 246
    const/4 v13, 0x1

    .line 247
    goto :goto_3

    .line 248
    :cond_3
    const/4 v13, 0x0

    .line 249
    :goto_3
    if-eqz v13, :cond_4

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    throw v0

    .line 257
    :cond_5
    :goto_4
    new-instance v3, Ljava/lang/String;

    .line 258
    .line 259
    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 260
    .line 261
    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    add-int/2addr v0, v2

    .line 268
    :goto_5
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :pswitch_7
    if-nez v3, :cond_7

    .line 274
    .line 275
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 280
    .line 281
    const-wide/16 v4, 0x0

    .line 282
    .line 283
    cmp-long v2, v2, v4

    .line 284
    .line 285
    if-eqz v2, :cond_6

    .line 286
    .line 287
    const/4 v13, 0x1

    .line 288
    goto :goto_6

    .line 289
    :cond_6
    const/4 v13, 0x0

    .line 290
    :goto_6
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_8

    .line 301
    .line 302
    :pswitch_8
    if-ne v3, v13, :cond_7

    .line 303
    .line 304
    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v14, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v0, v5, 0x4

    .line 316
    .line 317
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 318
    .line 319
    .line 320
    goto :goto_8

    .line 321
    :pswitch_9
    const/4 v0, 0x1

    .line 322
    if-ne v3, v0, :cond_7

    .line 323
    .line 324
    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v14, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    add-int/lit8 v0, v5, 0x8

    .line 336
    .line 337
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :pswitch_a
    if-nez v3, :cond_7

    .line 342
    .line 343
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 348
    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 357
    .line 358
    .line 359
    goto :goto_8

    .line 360
    :pswitch_b
    if-nez v3, :cond_7

    .line 361
    .line 362
    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 367
    .line 368
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v14, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :pswitch_c
    if-ne v3, v13, :cond_7

    .line 380
    .line 381
    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v14, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    add-int/lit8 v0, v5, 0x4

    .line 397
    .line 398
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :pswitch_d
    const/4 v0, 0x1

    .line 403
    if-ne v3, v0, :cond_7

    .line 404
    .line 405
    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 406
    .line 407
    .line 408
    move-result-wide v2

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 410
    .line 411
    .line 412
    move-result-wide v2

    .line 413
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v14, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    add-int/lit8 v0, v5, 0x8

    .line 421
    .line 422
    invoke-virtual {v14, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 423
    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_7
    :goto_7
    move v0, v5

    .line 427
    :goto_8
    return v0

    .line 428
    nop

    .line 429
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 34

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 2
    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v0, p3

    move/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v13, :cond_29

    add-int/lit8 v2, v0, 0x1

    .line 3
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 4
    invoke-static {v0, v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5
    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    goto :goto_1

    :cond_0
    move/from16 v33, v2

    move v2, v0

    move/from16 v0, v33

    :goto_1
    ushr-int/lit8 v8, v2, 0x3

    and-int/lit8 v7, v2, 0x7

    iget v10, v15, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    move/from16 v19, v0

    iget v0, v15, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    move/from16 v20, v1

    const/4 v1, 0x3

    if-le v8, v3, :cond_2

    .line 6
    div-int/2addr v4, v1

    if-lt v8, v0, :cond_1

    if-gt v8, v10, :cond_1

    .line 7
    invoke-virtual {v15, v8, v4}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v4, v0

    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    if-lt v8, v0, :cond_3

    if-gt v8, v10, :cond_3

    const/4 v10, 0x0

    .line 8
    invoke-virtual {v15, v8, v10}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    const/4 v0, -0x1

    :goto_3
    move v4, v0

    :goto_4
    const-wide/16 v21, 0x0

    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    move/from16 v16, v0

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 p3, v8

    move-object/from16 v32, v9

    move/from16 v23, v10

    move/from16 v6, v19

    move/from16 v7, v20

    const/16 v17, 0x1

    move v8, v2

    goto/16 :goto_19

    :cond_4
    add-int/lit8 v17, v4, 0x1

    .line 9
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v10, v0, v17

    const/high16 v17, 0xff00000

    and-int v17, v10, v17

    ushr-int/lit8 v1, v17, 0x14

    move/from16 v16, v2

    const v3, 0xfffff

    and-int v2, v10, v3

    move/from16 v25, v4

    int-to-long v3, v2

    const/16 v2, 0x11

    const/4 v13, 0x2

    if-gt v1, v2, :cond_12

    add-int/lit8 v2, v25, 0x2

    .line 10
    aget v0, v0, v2

    ushr-int/lit8 v2, v0, 0x14

    const/16 v17, 0x1

    shl-int v26, v17, v2

    const v2, 0xfffff

    and-int/2addr v0, v2

    if-eq v0, v5, :cond_6

    move-wide/from16 v27, v3

    if-eq v5, v2, :cond_5

    int-to-long v2, v5

    .line 11
    invoke-virtual {v9, v14, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v2, v0

    .line 12
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v29, v0

    goto :goto_5

    :cond_6
    move-wide/from16 v27, v3

    move/from16 v29, v5

    :goto_5
    move/from16 v30, v6

    const/4 v0, 0x5

    packed-switch v1, :pswitch_data_0

    move/from16 v13, v16

    move/from16 v6, v19

    move/from16 v10, v25

    const/4 v2, 0x1

    const v16, 0xfffff

    const/16 v18, -0x1

    goto/16 :goto_12

    :pswitch_0
    const/4 v1, 0x3

    if-ne v7, v1, :cond_7

    move/from16 v4, v25

    .line 13
    invoke-virtual {v15, v4, v14}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v0, v8, 0x3

    or-int/lit8 v5, v0, 0x4

    .line 14
    invoke-virtual {v15, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move/from16 v6, v19

    const/16 v18, -0x1

    move-object v0, v7

    move/from16 v10, v16

    const v3, 0xfffff

    move-object/from16 v2, p2

    move/from16 v16, v3

    move v3, v6

    move v13, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 16
    invoke-virtual {v15, v13, v14, v7}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    move/from16 v10, v16

    move/from16 v6, v19

    const v16, 0xfffff

    const/16 v18, -0x1

    move v13, v10

    move/from16 v10, v25

    goto/16 :goto_d

    :pswitch_1
    move/from16 v10, v16

    move/from16 v6, v19

    move/from16 v13, v25

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_a

    .line 17
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 18
    iget-wide v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 19
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    .line 20
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v33, v13

    move v13, v10

    move/from16 v10, v33

    goto/16 :goto_b

    :pswitch_2
    move/from16 v10, v16

    move/from16 v6, v19

    move/from16 v13, v25

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_a

    .line 21
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 22
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 23
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-wide/from16 v3, v27

    .line 24
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_3
    move/from16 v10, v16

    move/from16 v6, v19

    move/from16 v13, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_a

    .line 25
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 26
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 27
    invoke-virtual {v15, v13}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 28
    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 29
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move/from16 v6, v30

    move/from16 v33, v13

    move v13, v10

    move/from16 v10, v33

    goto/16 :goto_11

    .line 30
    :cond_9
    :goto_6
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_a
    move/from16 v33, v13

    move v13, v10

    move/from16 v10, v33

    goto/16 :goto_d

    :pswitch_4
    move/from16 v10, v16

    move/from16 v6, v19

    move/from16 v5, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v13, :cond_b

    .line 31
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 32
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v13, v10

    move v10, v5

    goto/16 :goto_f

    :pswitch_5
    move/from16 v10, v16

    move/from16 v6, v19

    move/from16 v5, v25

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v13, :cond_b

    .line 33
    invoke-virtual {v15, v5, v14}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 34
    invoke-virtual {v15, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move v3, v6

    move/from16 v4, p4

    move v13, v5

    move-object/from16 v5, p6

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 36
    invoke-virtual {v15, v13, v14, v7}, Lcom/google/protobuf/MessageSchema;->storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    move/from16 v33, v13

    move v13, v10

    move/from16 v10, v33

    goto/16 :goto_f

    :cond_b
    move v13, v10

    move v10, v5

    goto/16 :goto_d

    :pswitch_6
    move/from16 v5, v16

    move/from16 v6, v19

    move/from16 v2, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v13, :cond_e

    const/high16 v0, 0x20000000

    and-int/2addr v0, v10

    if-nez v0, :cond_c

    .line 37
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_8

    .line 38
    :cond_c
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 39
    :goto_8
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move/from16 v5, v16

    move/from16 v6, v19

    move/from16 v2, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_e

    .line 40
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 41
    iget-wide v6, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v1, v6, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    .line 42
    :goto_9
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v14, v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    :goto_a
    move v10, v2

    move v13, v5

    goto/16 :goto_f

    :pswitch_8
    move/from16 v5, v16

    move/from16 v6, v19

    move/from16 v2, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v0, :cond_e

    .line 43
    invoke-static {v6, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v10, v2

    move v13, v5

    goto/16 :goto_c

    :cond_e
    move v10, v2

    move v13, v5

    goto/16 :goto_d

    :pswitch_9
    move/from16 v5, v16

    move/from16 v6, v19

    move/from16 v2, v25

    move-wide/from16 v3, v27

    const/4 v0, 0x1

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v0, :cond_f

    .line 44
    invoke-static {v6, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v19

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v2

    move-wide v2, v3

    move v13, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_e

    :cond_f
    move v10, v2

    move v13, v5

    move v2, v0

    goto/16 :goto_12

    :pswitch_a
    move/from16 v13, v16

    move/from16 v6, v19

    move/from16 v10, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_10

    .line 45
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 46
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_b
    move/from16 v13, v16

    move/from16 v6, v19

    move/from16 v10, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-nez v7, :cond_10

    .line 47
    invoke-static {v12, v6, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 48
    iget-wide v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-wide/from16 v19, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    or-int v0, v30, v26

    goto :goto_10

    :pswitch_c
    move/from16 v13, v16

    move/from16 v6, v19

    move/from16 v10, v25

    move-wide/from16 v3, v27

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v0, :cond_10

    .line 49
    invoke-static {v6, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 50
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v14, v3, v4, v0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    :goto_c
    add-int/lit8 v0, v6, 0x4

    goto :goto_f

    :cond_10
    :goto_d
    const/4 v2, 0x1

    goto :goto_12

    :pswitch_d
    move/from16 v13, v16

    move/from16 v6, v19

    move/from16 v10, v25

    move-wide/from16 v3, v27

    const/4 v2, 0x1

    const v16, 0xfffff

    const/16 v18, -0x1

    if-ne v7, v2, :cond_11

    .line 51
    invoke-static {v6, v12}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    .line 52
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    :goto_e
    add-int/lit8 v0, v6, 0x8

    :goto_f
    or-int v1, v30, v26

    move v6, v0

    move v0, v1

    :goto_10
    move/from16 v33, v6

    move v6, v0

    move/from16 v0, v33

    :goto_11
    move/from16 v1, p5

    move v3, v8

    move v4, v10

    move v2, v13

    goto/16 :goto_14

    :cond_11
    :goto_12
    move/from16 v7, p5

    move/from16 v17, v2

    move/from16 p3, v8

    move-object/from16 v32, v9

    move v8, v13

    move/from16 v16, v18

    const/16 v23, 0x0

    goto/16 :goto_19

    :cond_12
    move/from16 v0, v16

    move/from16 v31, v25

    const v16, 0xfffff

    const/16 v18, -0x1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_16

    if-ne v7, v13, :cond_15

    .line 53
    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    .line 54
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/AbstractProtobufList;

    .line 55
    iget-boolean v2, v2, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v2, :cond_14

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13

    const/16 v2, 0xa

    goto :goto_13

    :cond_13
    mul-int/lit8 v2, v2, 0x2

    .line 57
    :goto_13
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    .line 58
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v7, v1

    move/from16 v10, v31

    .line 59
    invoke-virtual {v15, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move v13, v0

    move-object v0, v1

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v29, v5

    move-object v5, v7

    move/from16 v24, v6

    move-object/from16 v6, p6

    .line 60
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v1, p5

    move v3, v8

    move v4, v10

    move v2, v13

    move/from16 v6, v24

    :goto_14
    move/from16 v5, v29

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_15
    move/from16 v29, v5

    move/from16 v24, v6

    move/from16 v28, v0

    move/from16 p3, v8

    move-object/from16 v32, v9

    move/from16 v16, v18

    move/from16 v14, v19

    move/from16 v20, v31

    const/16 v17, 0x1

    const/16 v23, 0x0

    goto/16 :goto_15

    :cond_16
    move/from16 v29, v5

    move/from16 v24, v6

    move/from16 v20, v31

    move v6, v0

    const/16 v0, 0x31

    if-gt v1, v0, :cond_17

    move-object/from16 v25, v9

    int-to-long v9, v10

    move-object/from16 v0, p0

    move v13, v1

    move-object/from16 v1, p1

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v26, v3

    move/from16 v17, v5

    move/from16 v3, v19

    move/from16 v4, p4

    move v5, v6

    move/from16 v28, v6

    move v6, v8

    move/from16 p3, v8

    move/from16 v16, v18

    move/from16 v8, v20

    move-object/from16 v32, v25

    const/16 v23, 0x0

    move v11, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p6

    .line 61
    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v14, v19

    if-eq v0, v14, :cond_1a

    goto :goto_16

    :cond_17
    move-wide/from16 v26, v3

    move/from16 v28, v6

    move/from16 p3, v8

    move-object/from16 v32, v9

    move/from16 v16, v18

    move/from16 v14, v19

    const/16 v17, 0x1

    const/16 v23, 0x0

    move v9, v1

    const/16 v0, 0x32

    if-ne v9, v0, :cond_19

    if-ne v7, v13, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p6

    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_1a

    goto :goto_16

    :cond_18
    :goto_15
    move v0, v14

    goto :goto_18

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v28

    move/from16 v6, p3

    move v8, v10

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 63
    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_1a

    :goto_16
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v1, p5

    move-object/from16 v11, p6

    move/from16 v4, v20

    move/from16 v6, v24

    move/from16 v2, v28

    move/from16 v5, v29

    :goto_17
    move-object/from16 v9, v32

    goto/16 :goto_0

    :cond_1a
    :goto_18
    move/from16 v7, p5

    move v6, v0

    move/from16 v10, v20

    move/from16 v30, v24

    move/from16 v8, v28

    :goto_19
    if-ne v8, v7, :cond_1b

    if-eqz v7, :cond_1b

    move-object/from16 v12, p1

    move v9, v8

    move/from16 v5, v29

    move/from16 v0, v30

    const v1, 0xfffff

    const/4 v4, 0x0

    move v8, v7

    move v7, v6

    move/from16 v6, p4

    goto/16 :goto_27

    .line 64
    :cond_1b
    iget-boolean v0, v15, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_28

    .line 65
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    move-object/from16 v9, p6

    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    if-eq v1, v0, :cond_27

    .line 66
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance v2, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    iget-object v3, v15, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move/from16 v11, p3

    invoke-direct {v2, v3, v11}, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 69
    iget-object v1, v1, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    if-nez v1, :cond_1c

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v6

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v12, p1

    move/from16 v5, p4

    move/from16 v18, v7

    move-object/from16 v7, p2

    goto/16 :goto_24

    :cond_1c
    move-object/from16 v12, p1

    .line 72
    move-object v2, v12

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 73
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 74
    iget-boolean v4, v3, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    if-eqz v4, :cond_1d

    .line 75
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v3

    iput-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 76
    :cond_1d
    iget-object v13, v2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 77
    iget-object v14, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v3, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v3, :cond_1e

    .line 78
    iget-boolean v3, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    if-eqz v3, :cond_1e

    .line 79
    sget-object v1, Lcom/google/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 80
    iget-object v3, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type cannot be packed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 83
    :pswitch_e
    new-instance v1, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v1}, Lcom/google/protobuf/IntArrayList;-><init>()V

    move-object/from16 v5, p2

    .line 84
    invoke-static {v5, v6, v1, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 85
    iget-object v4, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v11

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-object/from16 v22, v0

    .line 86
    invoke-static/range {v17 .. v22}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v13, v14, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_f
    move-object/from16 v5, p2

    .line 88
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 89
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 90
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_10
    move-object/from16 v5, p2

    .line 91
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 92
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 93
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_11
    move-object/from16 v5, p2

    .line 94
    new-instance v0, Lcom/google/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/BooleanArrayList;-><init>()V

    .line 95
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 96
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_12
    move-object/from16 v5, p2

    .line 97
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 98
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 99
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_13
    move-object/from16 v5, p2

    .line 100
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 101
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 102
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_14
    move-object/from16 v5, p2

    .line 103
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 104
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 105
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_15
    move-object/from16 v5, p2

    .line 106
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 107
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 108
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_16
    move-object/from16 v5, p2

    .line 109
    new-instance v0, Lcom/google/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/FloatArrayList;-><init>()V

    .line 110
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 111
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_17
    move-object/from16 v5, p2

    .line 112
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/DoubleArrayList;-><init>()V

    .line 113
    invoke-static {v5, v6, v0, v9}, Lcom/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 114
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :goto_1a
    move v0, v3

    goto :goto_1c

    .line 115
    :goto_1b
    iget-object v2, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object/from16 v5, p2

    .line 117
    iget-object v3, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 118
    sget-object v4, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v3, v4, :cond_20

    .line 119
    invoke-static {v5, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 120
    iget-object v1, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 121
    iget v3, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-interface {v1, v3}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 122
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    const/4 v4, 0x0

    invoke-static {v2, v11, v1, v4, v0}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move v0, v6

    :goto_1c
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    goto/16 :goto_24

    .line 123
    :cond_1f
    iget v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    goto/16 :goto_22

    :cond_20
    const/4 v4, 0x0

    .line 124
    sget-object v0, Lcom/google/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    packed-switch v0, :pswitch_data_2

    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    move-object v0, v4

    goto/16 :goto_22

    .line 125
    :pswitch_18
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 127
    iget-boolean v0, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v0, :cond_21

    move/from16 v4, p4

    .line 128
    invoke-static {v1, v5, v6, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 129
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v13, v14, v1}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    move v13, v4

    move/from16 v18, v7

    move-object v7, v5

    goto/16 :goto_1e

    :cond_21
    move/from16 v4, p4

    .line 130
    invoke-virtual {v13, v14}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    .line 131
    invoke-interface {v1}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 132
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v2, p2

    move v3, v6

    move v6, v4

    move/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    .line 133
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v18, v7

    move-object v7, v13

    goto :goto_1d

    :pswitch_19
    move/from16 v4, p4

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v17, v0, 0x4

    .line 134
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 136
    iget-boolean v0, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v0, :cond_23

    move-object v0, v1

    move-object/from16 v1, p2

    move v2, v6

    move/from16 v3, p4

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, p6

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 138
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v13, v14, v1}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :goto_1d
    move v13, v6

    goto :goto_1e

    :cond_23
    move/from16 v18, v7

    move-object v7, v5

    move v5, v4

    .line 139
    invoke-virtual {v13, v14}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 140
    invoke-interface {v1}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 141
    invoke-virtual {v13, v14, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v2, p2

    move v3, v6

    move/from16 v4, p4

    move v13, v5

    move/from16 v5, v17

    move-object/from16 v6, p6

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_1e
    move v5, v13

    goto/16 :goto_24

    :pswitch_1a
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 143
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 144
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_23

    :pswitch_1b
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 145
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 146
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_23

    .line 147
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 148
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 149
    iget-wide v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_1e
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 150
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 151
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_1f
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 152
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 153
    iget-wide v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v1, v1, v21

    if-eqz v1, :cond_25

    goto :goto_1f

    :cond_25
    move/from16 v17, v23

    :goto_1f
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_20
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 154
    invoke-static {v6, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_20

    :pswitch_21
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 155
    invoke-static {v6, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_21

    :pswitch_22
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 156
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 157
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_23

    :pswitch_23
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 158
    invoke-static {v7, v6, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 159
    iget-wide v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_23

    :pswitch_24
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 160
    invoke-static {v6, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 161
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_20
    move-object v1, v0

    add-int/lit8 v0, v6, 0x4

    goto :goto_23

    :pswitch_25
    move/from16 v18, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 162
    invoke-static {v6, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_21
    move-object v1, v0

    add-int/lit8 v0, v6, 0x8

    goto :goto_23

    :goto_22
    move-object v1, v0

    move v0, v6

    .line 164
    :goto_23
    iget-boolean v2, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v2, :cond_26

    .line 165
    invoke-virtual {v13, v14, v1}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    goto :goto_24

    .line 166
    :cond_26
    invoke-virtual {v13, v14, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)V

    :goto_24
    move v6, v5

    goto :goto_26

    :cond_27
    move-object/from16 v12, p1

    move/from16 v11, p3

    move/from16 v5, p4

    goto :goto_25

    :cond_28
    move-object/from16 v12, p1

    move/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v9, p6

    :goto_25
    move/from16 v18, v7

    move-object/from16 v7, p2

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v6

    move/from16 v3, p4

    move v6, v5

    move-object/from16 v5, p6

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_26
    move v13, v6

    move v2, v8

    move v4, v10

    move v3, v11

    move-object v14, v12

    move/from16 v1, v18

    move/from16 v5, v29

    move/from16 v6, v30

    move-object v12, v7

    move-object v11, v9

    goto/16 :goto_17

    :cond_29
    move/from16 v20, v1

    move/from16 v29, v5

    move/from16 v24, v6

    move-object/from16 v32, v9

    move v6, v13

    move-object v12, v14

    const/4 v4, 0x0

    move v7, v0

    move v9, v2

    move/from16 v8, v20

    move/from16 v0, v24

    const v1, 0xfffff

    :goto_27
    if-eq v5, v1, :cond_2a

    int-to-long v1, v5

    move-object/from16 v3, v32

    .line 169
    invoke-virtual {v3, v12, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 170
    :cond_2a
    iget v0, v15, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    move v10, v0

    move-object v3, v4

    :goto_28
    iget v0, v15, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v10, v0, :cond_2b

    .line 171
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v2, v0, v10

    iget-object v4, v15, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    .line 172
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_2b
    if-eqz v3, :cond_2c

    .line 173
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 174
    invoke-virtual {v0, v12, v3}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    if-nez v8, :cond_2e

    if-ne v7, v6, :cond_2d

    goto :goto_29

    .line 175
    :cond_2d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2e
    if-gt v7, v6, :cond_2f

    if-ne v9, v8, :cond_2f

    :goto_29
    return v7

    .line 176
    :cond_2f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v4, p3

    .line 8
    .line 9
    move/from16 v5, p4

    .line 10
    .line 11
    move/from16 v2, p5

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    move/from16 v8, p8

    .line 16
    .line 17
    move-wide/from16 v9, p12

    .line 18
    .line 19
    move-object/from16 v7, p14

    .line 20
    .line 21
    sget-object v11, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    check-cast v12, Lcom/google/protobuf/Internal$ProtobufList;

    .line 28
    .line 29
    move-object v13, v12

    .line 30
    check-cast v13, Lcom/google/protobuf/AbstractProtobufList;

    .line 31
    .line 32
    iget-boolean v13, v13, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 33
    .line 34
    const/4 v14, 0x2

    .line 35
    if-nez v13, :cond_1

    .line 36
    .line 37
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    if-nez v13, :cond_0

    .line 42
    .line 43
    const/16 v13, 0xa

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    mul-int/2addr v13, v14

    .line 47
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x1

    .line 56
    const-wide/16 v15, 0x0

    .line 57
    .line 58
    const/4 v11, 0x5

    .line 59
    packed-switch p11, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_15

    .line 63
    .line 64
    :pswitch_0
    const/4 v1, 0x3

    .line 65
    if-ne v6, v1, :cond_2d

    .line 66
    .line 67
    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    and-int/lit8 v1, v2, -0x8

    .line 72
    .line 73
    or-int/lit8 v1, v1, 0x4

    .line 74
    .line 75
    move-object/from16 p6, v0

    .line 76
    .line 77
    move-object/from16 p7, p2

    .line 78
    .line 79
    move/from16 p8, p3

    .line 80
    .line 81
    move/from16 p9, p4

    .line 82
    .line 83
    move/from16 p10, v1

    .line 84
    .line 85
    move-object/from16 p11, p14

    .line 86
    .line 87
    invoke-static/range {p6 .. p11}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iget-object v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :goto_1
    if-ge v4, v5, :cond_2d

    .line 97
    .line 98
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    iget v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 103
    .line 104
    if-eq v2, v8, :cond_2

    .line 105
    .line 106
    goto/16 :goto_15

    .line 107
    .line 108
    :cond_2
    move-object/from16 p6, v0

    .line 109
    .line 110
    move-object/from16 p7, p2

    .line 111
    .line 112
    move/from16 p8, v6

    .line 113
    .line 114
    move/from16 p9, p4

    .line 115
    .line 116
    move/from16 p10, v1

    .line 117
    .line 118
    move-object/from16 p11, p14

    .line 119
    .line 120
    invoke-static/range {p6 .. p11}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iget-object v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_1
    if-ne v6, v14, :cond_3

    .line 131
    .line 132
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    goto/16 :goto_16

    .line 137
    .line 138
    :cond_3
    if-nez v6, :cond_2d

    .line 139
    .line 140
    check-cast v12, Lcom/google/protobuf/LongArrayList;

    .line 141
    .line 142
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 147
    .line 148
    invoke-static {v8, v9}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 149
    .line 150
    .line 151
    move-result-wide v8

    .line 152
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 153
    .line 154
    .line 155
    :goto_2
    if-ge v0, v5, :cond_2e

    .line 156
    .line 157
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 162
    .line 163
    if-eq v2, v4, :cond_4

    .line 164
    .line 165
    goto/16 :goto_16

    .line 166
    .line 167
    :cond_4
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 172
    .line 173
    invoke-static {v8, v9}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v8

    .line 177
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :pswitch_2
    if-ne v6, v14, :cond_5

    .line 182
    .line 183
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    goto/16 :goto_16

    .line 188
    .line 189
    :cond_5
    if-nez v6, :cond_2d

    .line 190
    .line 191
    check-cast v12, Lcom/google/protobuf/IntArrayList;

    .line 192
    .line 193
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 198
    .line 199
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v12, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 204
    .line 205
    .line 206
    :goto_3
    if-ge v0, v5, :cond_2e

    .line 207
    .line 208
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 213
    .line 214
    if-eq v2, v4, :cond_6

    .line 215
    .line 216
    goto/16 :goto_16

    .line 217
    .line 218
    :cond_6
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 223
    .line 224
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {v12, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :pswitch_3
    if-ne v6, v14, :cond_7

    .line 233
    .line 234
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    goto :goto_4

    .line 239
    :cond_7
    if-nez v6, :cond_2d

    .line 240
    .line 241
    move/from16 v2, p5

    .line 242
    .line 243
    move-object/from16 v3, p2

    .line 244
    .line 245
    move/from16 v4, p3

    .line 246
    .line 247
    move/from16 v5, p4

    .line 248
    .line 249
    move-object v6, v12

    .line 250
    move-object/from16 v7, p14

    .line 251
    .line 252
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    :goto_4
    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    const/4 v4, 0x0

    .line 261
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 262
    .line 263
    move-object/from16 p0, p1

    .line 264
    .line 265
    move/from16 p1, p6

    .line 266
    .line 267
    move-object/from16 p2, v12

    .line 268
    .line 269
    move-object/from16 p3, v3

    .line 270
    .line 271
    move-object/from16 p4, v4

    .line 272
    .line 273
    move-object/from16 p5, v0

    .line 274
    .line 275
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move v0, v2

    .line 279
    goto/16 :goto_16

    .line 280
    .line 281
    :pswitch_4
    if-ne v6, v14, :cond_2d

    .line 282
    .line 283
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 288
    .line 289
    if-ltz v1, :cond_e

    .line 290
    .line 291
    array-length v4, v3

    .line 292
    sub-int/2addr v4, v0

    .line 293
    if-gt v1, v4, :cond_d

    .line 294
    .line 295
    if-nez v1, :cond_8

    .line 296
    .line 297
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 298
    .line 299
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_8
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :goto_5
    add-int/2addr v0, v1

    .line 311
    :goto_6
    if-ge v0, v5, :cond_2e

    .line 312
    .line 313
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 318
    .line 319
    if-eq v2, v4, :cond_9

    .line 320
    .line 321
    goto/16 :goto_16

    .line 322
    .line 323
    :cond_9
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iget v1, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 328
    .line 329
    if-ltz v1, :cond_c

    .line 330
    .line 331
    array-length v4, v3

    .line 332
    sub-int/2addr v4, v0

    .line 333
    if-gt v1, v4, :cond_b

    .line 334
    .line 335
    if-nez v1, :cond_a

    .line 336
    .line 337
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 338
    .line 339
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_a
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    throw v0

    .line 356
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    throw v0

    .line 361
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    throw v0

    .line 366
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    throw v0

    .line 371
    :pswitch_5
    if-ne v6, v14, :cond_2d

    .line 372
    .line 373
    invoke-virtual {v0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    move-object/from16 p6, v0

    .line 378
    .line 379
    move/from16 p7, p5

    .line 380
    .line 381
    move-object/from16 p8, p2

    .line 382
    .line 383
    move/from16 p9, p3

    .line 384
    .line 385
    move/from16 p10, p4

    .line 386
    .line 387
    move-object/from16 p11, v12

    .line 388
    .line 389
    move-object/from16 p12, p14

    .line 390
    .line 391
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    goto/16 :goto_16

    .line 396
    .line 397
    :pswitch_6
    if-ne v6, v14, :cond_2d

    .line 398
    .line 399
    const-wide/32 v0, 0x20000000

    .line 400
    .line 401
    .line 402
    and-long v0, p9, v0

    .line 403
    .line 404
    cmp-long v0, v0, v15

    .line 405
    .line 406
    const-string v1, ""

    .line 407
    .line 408
    if-nez v0, :cond_14

    .line 409
    .line 410
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 415
    .line 416
    if-ltz v4, :cond_13

    .line 417
    .line 418
    if-nez v4, :cond_f

    .line 419
    .line 420
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_f
    new-instance v6, Ljava/lang/String;

    .line 425
    .line 426
    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 427
    .line 428
    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 429
    .line 430
    .line 431
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    :goto_7
    add-int/2addr v0, v4

    .line 435
    :goto_8
    if-ge v0, v5, :cond_2e

    .line 436
    .line 437
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    iget v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 442
    .line 443
    if-eq v2, v6, :cond_10

    .line 444
    .line 445
    goto/16 :goto_16

    .line 446
    .line 447
    :cond_10
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 452
    .line 453
    if-ltz v4, :cond_12

    .line 454
    .line 455
    if-nez v4, :cond_11

    .line 456
    .line 457
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_11
    new-instance v6, Ljava/lang/String;

    .line 462
    .line 463
    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 464
    .line 465
    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 466
    .line 467
    .line 468
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    throw v0

    .line 477
    :cond_13
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    throw v0

    .line 482
    :cond_14
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 487
    .line 488
    if-ltz v4, :cond_1d

    .line 489
    .line 490
    if-nez v4, :cond_15

    .line 491
    .line 492
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_15
    add-int v6, v0, v4

    .line 497
    .line 498
    sget-object v8, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    .line 499
    .line 500
    invoke-virtual {v8, v0, v6, v3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(II[B)I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-nez v8, :cond_16

    .line 505
    .line 506
    move v8, v10

    .line 507
    goto :goto_9

    .line 508
    :cond_16
    move v8, v9

    .line 509
    :goto_9
    if-eqz v8, :cond_1c

    .line 510
    .line 511
    new-instance v8, Ljava/lang/String;

    .line 512
    .line 513
    sget-object v11, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 514
    .line 515
    invoke-direct {v8, v3, v0, v4, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    :goto_a
    move v0, v6

    .line 522
    :goto_b
    if-ge v0, v5, :cond_2e

    .line 523
    .line 524
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    iget v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 529
    .line 530
    if-eq v2, v6, :cond_17

    .line 531
    .line 532
    goto/16 :goto_16

    .line 533
    .line 534
    :cond_17
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 539
    .line 540
    if-ltz v4, :cond_1b

    .line 541
    .line 542
    if-nez v4, :cond_18

    .line 543
    .line 544
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    goto :goto_b

    .line 548
    :cond_18
    add-int v6, v0, v4

    .line 549
    .line 550
    sget-object v8, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    .line 551
    .line 552
    invoke-virtual {v8, v0, v6, v3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(II[B)I

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    if-nez v8, :cond_19

    .line 557
    .line 558
    move v8, v10

    .line 559
    goto :goto_c

    .line 560
    :cond_19
    move v8, v9

    .line 561
    :goto_c
    if-eqz v8, :cond_1a

    .line 562
    .line 563
    new-instance v8, Ljava/lang/String;

    .line 564
    .line 565
    sget-object v11, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 566
    .line 567
    invoke-direct {v8, v3, v0, v4, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 568
    .line 569
    .line 570
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    goto :goto_a

    .line 574
    :cond_1a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    throw v0

    .line 579
    :cond_1b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    throw v0

    .line 584
    :cond_1c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    throw v0

    .line 589
    :cond_1d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    throw v0

    .line 594
    :pswitch_7
    if-ne v6, v14, :cond_1e

    .line 595
    .line 596
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    goto/16 :goto_16

    .line 601
    .line 602
    :cond_1e
    if-nez v6, :cond_2d

    .line 603
    .line 604
    check-cast v12, Lcom/google/protobuf/BooleanArrayList;

    .line 605
    .line 606
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    iget-wide v13, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 611
    .line 612
    cmp-long v1, v13, v15

    .line 613
    .line 614
    if-eqz v1, :cond_1f

    .line 615
    .line 616
    move v1, v10

    .line 617
    goto :goto_d

    .line 618
    :cond_1f
    move v1, v9

    .line 619
    :goto_d
    invoke-virtual {v12, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 620
    .line 621
    .line 622
    :goto_e
    if-ge v0, v5, :cond_2e

    .line 623
    .line 624
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 629
    .line 630
    if-eq v2, v4, :cond_20

    .line 631
    .line 632
    goto/16 :goto_16

    .line 633
    .line 634
    :cond_20
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    iget-wide v13, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 639
    .line 640
    cmp-long v1, v13, v15

    .line 641
    .line 642
    if-eqz v1, :cond_21

    .line 643
    .line 644
    move v1, v10

    .line 645
    goto :goto_f

    .line 646
    :cond_21
    move v1, v9

    .line 647
    :goto_f
    invoke-virtual {v12, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 648
    .line 649
    .line 650
    goto :goto_e

    .line 651
    :pswitch_8
    if-ne v6, v14, :cond_22

    .line 652
    .line 653
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    goto/16 :goto_16

    .line 658
    .line 659
    :cond_22
    if-ne v6, v11, :cond_2d

    .line 660
    .line 661
    check-cast v12, Lcom/google/protobuf/IntArrayList;

    .line 662
    .line 663
    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    invoke-virtual {v12, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 668
    .line 669
    .line 670
    add-int/lit8 v0, v4, 0x4

    .line 671
    .line 672
    :goto_10
    if-ge v0, v5, :cond_2e

    .line 673
    .line 674
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 679
    .line 680
    if-eq v2, v4, :cond_23

    .line 681
    .line 682
    goto/16 :goto_16

    .line 683
    .line 684
    :cond_23
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    invoke-virtual {v12, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 689
    .line 690
    .line 691
    add-int/lit8 v0, v1, 0x4

    .line 692
    .line 693
    goto :goto_10

    .line 694
    :pswitch_9
    if-ne v6, v14, :cond_24

    .line 695
    .line 696
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    goto/16 :goto_16

    .line 701
    .line 702
    :cond_24
    if-ne v6, v10, :cond_2d

    .line 703
    .line 704
    check-cast v12, Lcom/google/protobuf/LongArrayList;

    .line 705
    .line 706
    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 707
    .line 708
    .line 709
    move-result-wide v0

    .line 710
    invoke-virtual {v12, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 711
    .line 712
    .line 713
    add-int/lit8 v0, v4, 0x8

    .line 714
    .line 715
    :goto_11
    if-ge v0, v5, :cond_2e

    .line 716
    .line 717
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 722
    .line 723
    if-eq v2, v4, :cond_25

    .line 724
    .line 725
    goto/16 :goto_16

    .line 726
    .line 727
    :cond_25
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 728
    .line 729
    .line 730
    move-result-wide v8

    .line 731
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 732
    .line 733
    .line 734
    add-int/lit8 v0, v1, 0x8

    .line 735
    .line 736
    goto :goto_11

    .line 737
    :pswitch_a
    if-ne v6, v14, :cond_26

    .line 738
    .line 739
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    goto/16 :goto_16

    .line 744
    .line 745
    :cond_26
    if-nez v6, :cond_2d

    .line 746
    .line 747
    move-object/from16 p6, p2

    .line 748
    .line 749
    move/from16 p7, p3

    .line 750
    .line 751
    move/from16 p8, p4

    .line 752
    .line 753
    move-object/from16 p9, v12

    .line 754
    .line 755
    move-object/from16 p10, p14

    .line 756
    .line 757
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    goto/16 :goto_16

    .line 762
    .line 763
    :pswitch_b
    if-ne v6, v14, :cond_27

    .line 764
    .line 765
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    goto/16 :goto_16

    .line 770
    .line 771
    :cond_27
    if-nez v6, :cond_2d

    .line 772
    .line 773
    check-cast v12, Lcom/google/protobuf/LongArrayList;

    .line 774
    .line 775
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 780
    .line 781
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 782
    .line 783
    .line 784
    :goto_12
    if-ge v0, v5, :cond_2e

    .line 785
    .line 786
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 791
    .line 792
    if-eq v2, v4, :cond_28

    .line 793
    .line 794
    goto/16 :goto_16

    .line 795
    .line 796
    :cond_28
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    iget-wide v8, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 801
    .line 802
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 803
    .line 804
    .line 805
    goto :goto_12

    .line 806
    :pswitch_c
    if-ne v6, v14, :cond_29

    .line 807
    .line 808
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    goto :goto_16

    .line 813
    :cond_29
    if-ne v6, v11, :cond_2d

    .line 814
    .line 815
    check-cast v12, Lcom/google/protobuf/FloatArrayList;

    .line 816
    .line 817
    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-virtual {v12, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 826
    .line 827
    .line 828
    add-int/lit8 v0, v4, 0x4

    .line 829
    .line 830
    :goto_13
    if-ge v0, v5, :cond_2e

    .line 831
    .line 832
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 837
    .line 838
    if-eq v2, v4, :cond_2a

    .line 839
    .line 840
    goto :goto_16

    .line 841
    :cond_2a
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32(I[B)I

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    invoke-virtual {v12, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 850
    .line 851
    .line 852
    add-int/lit8 v0, v1, 0x4

    .line 853
    .line 854
    goto :goto_13

    .line 855
    :pswitch_d
    if-ne v6, v14, :cond_2b

    .line 856
    .line 857
    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    goto :goto_16

    .line 862
    :cond_2b
    if-ne v6, v10, :cond_2d

    .line 863
    .line 864
    check-cast v12, Lcom/google/protobuf/DoubleArrayList;

    .line 865
    .line 866
    invoke-static {v4, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 867
    .line 868
    .line 869
    move-result-wide v0

    .line 870
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 871
    .line 872
    .line 873
    move-result-wide v0

    .line 874
    invoke-virtual {v12, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 875
    .line 876
    .line 877
    add-int/lit8 v0, v4, 0x8

    .line 878
    .line 879
    :goto_14
    if-ge v0, v5, :cond_2e

    .line 880
    .line 881
    invoke-static {v3, v0, v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    iget v4, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 886
    .line 887
    if-eq v2, v4, :cond_2c

    .line 888
    .line 889
    goto :goto_16

    .line 890
    :cond_2c
    invoke-static {v1, v3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64(I[B)J

    .line 891
    .line 892
    .line 893
    move-result-wide v8

    .line 894
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 895
    .line 896
    .line 897
    move-result-wide v8

    .line 898
    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 899
    .line 900
    .line 901
    add-int/lit8 v0, v1, 0x8

    .line 902
    .line 903
    goto :goto_14

    .line 904
    :cond_2d
    :goto_15
    move v0, v4

    .line 905
    :cond_2e
    :goto_16
    return v0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p4, Lcom/google/protobuf/CodedInputStreamReader;

    .line 8
    .line 9
    iget p1, p4, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 10
    .line 11
    and-int/lit8 p2, p1, 0x7

    .line 12
    .line 13
    const/4 p3, 0x3

    .line 14
    if-ne p2, p3, :cond_3

    .line 15
    .line 16
    :cond_0
    invoke-interface {p5}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p4, p2, p5, p6}, Lcom/google/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p2}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object p2, p4, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    iget p3, p4, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eq p2, p1, :cond_0

    .line 47
    .line 48
    iput p2, p4, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0
.end method

.method public final readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 13
    .line 14
    iget p1, p3, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 15
    .line 16
    and-int/lit8 p2, p1, 0x7

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    :cond_0
    invoke-interface {p4}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p3, p2, p4, p5}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p4, p2}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p2, p3, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget v0, p3, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eq p2, p1, :cond_0

    .line 52
    .line 53
    iput p2, p3, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0
.end method

.method public final readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v1, 0x2

    .line 10
    const v2, 0xfffff

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    and-int p0, p2, v2

    .line 16
    .line 17
    int-to-long v2, p0

    .line 18
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 19
    .line 20
    invoke-virtual {p3, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p3, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v2, v3, p1, p0}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/MessageSchema;->lite:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    and-int p0, p2, v2

    .line 38
    .line 39
    int-to-long v2, p0

    .line 40
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 41
    .line 42
    invoke-virtual {p3, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p3, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, v3, p1, p0}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    and-int p0, p2, v2

    .line 56
    .line 57
    int-to-long v0, p0

    .line 58
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v0, v1, p1, p0}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public final readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/2addr p2, v3

    .line 19
    int-to-long v2, p2

    .line 20
    invoke-virtual {p0, v2, v3, p1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 25
    .line 26
    invoke-virtual {p3, p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    and-int/2addr p2, v3

    .line 31
    int-to-long v0, p2

    .line 32
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p3, Lcom/google/protobuf/CodedInputStreamReader;

    .line 37
    .line 38
    invoke-virtual {p3, p0, v2}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    shl-int p0, p1, p0

    .line 24
    .line 25
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    or-int/2addr p0, p1

    .line 30
    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setOneofPresent(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final slowPositionForFieldNumber(II)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v1, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    mul-int/lit8 v2, v1, 0x3

    .line 15
    .line 16
    aget v3, p0, v2

    .line 17
    .line 18
    if-ne p1, v3, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    if-ge p1, v3, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    move p2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public final storeMessageField(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final storeOneofMessageField(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p3, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v4, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v6, v4, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/util/Map$Entry;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 39
    .line 40
    array-length v8, v7

    .line 41
    const/4 v9, 0x0

    .line 42
    move v10, v9

    .line 43
    :goto_1
    if-ge v10, v8, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    aget v12, v7, v10

    .line 50
    .line 51
    :goto_2
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    if-gt v13, v12, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5, v2, v6}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/util/Map$Entry;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/4 v6, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/high16 v13, 0xff00000

    .line 78
    .line 79
    and-int/2addr v13, v11

    .line 80
    ushr-int/lit8 v13, v13, 0x14

    .line 81
    .line 82
    const/4 v14, 0x1

    .line 83
    const v15, 0xfffff

    .line 84
    .line 85
    .line 86
    packed-switch v13, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_3
    move-object/from16 v16, v4

    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :pswitch_0
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eqz v13, :cond_3

    .line 98
    .line 99
    and-int/2addr v11, v15

    .line 100
    int-to-long v13, v11

    .line 101
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :pswitch_1
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    if-eqz v13, :cond_3

    .line 118
    .line 119
    and-int/2addr v11, v15

    .line 120
    int-to-long v13, v11

    .line 121
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v13

    .line 125
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_2
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v13

    .line 133
    if-eqz v13, :cond_3

    .line 134
    .line 135
    and-int/2addr v11, v15

    .line 136
    int-to-long v13, v11

    .line 137
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :pswitch_3
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_3

    .line 150
    .line 151
    and-int/2addr v11, v15

    .line 152
    int-to-long v13, v11

    .line 153
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v13

    .line 157
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :pswitch_4
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_3

    .line 166
    .line 167
    and-int/2addr v11, v15

    .line 168
    int-to-long v13, v11

    .line 169
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_5
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    if-eqz v13, :cond_3

    .line 182
    .line 183
    and-int/2addr v11, v15

    .line 184
    int-to-long v13, v11

    .line 185
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :pswitch_6
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_3

    .line 198
    .line 199
    and-int/2addr v11, v15

    .line 200
    int-to-long v13, v11

    .line 201
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :pswitch_7
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-eqz v13, :cond_3

    .line 214
    .line 215
    and-int/2addr v11, v15

    .line 216
    int-to-long v13, v11

    .line 217
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    check-cast v11, Lcom/google/protobuf/ByteString;

    .line 222
    .line 223
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :pswitch_8
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-eqz v13, :cond_3

    .line 233
    .line 234
    and-int/2addr v11, v15

    .line 235
    int-to-long v13, v11

    .line 236
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :pswitch_9
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    if-eqz v13, :cond_3

    .line 254
    .line 255
    and-int/2addr v11, v15

    .line 256
    int-to-long v13, v11

    .line 257
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    invoke-static {v12, v11, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :pswitch_a
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-eqz v13, :cond_3

    .line 271
    .line 272
    and-int/2addr v11, v15

    .line 273
    int-to-long v13, v11

    .line 274
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    check-cast v11, Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :pswitch_b
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    if-eqz v13, :cond_3

    .line 294
    .line 295
    and-int/2addr v11, v15

    .line 296
    int-to-long v13, v11

    .line 297
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :pswitch_c
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_3

    .line 311
    .line 312
    and-int/2addr v11, v15

    .line 313
    int-to-long v13, v11

    .line 314
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v13

    .line 318
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_3

    .line 322
    .line 323
    :pswitch_d
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v13

    .line 327
    if-eqz v13, :cond_3

    .line 328
    .line 329
    and-int/2addr v11, v15

    .line 330
    int-to-long v13, v11

    .line 331
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    invoke-virtual {v2, v12, v11}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :pswitch_e
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-eqz v13, :cond_3

    .line 345
    .line 346
    and-int/2addr v11, v15

    .line 347
    int-to-long v13, v11

    .line 348
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v13

    .line 352
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :pswitch_f
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    if-eqz v13, :cond_3

    .line 362
    .line 363
    and-int/2addr v11, v15

    .line 364
    int-to-long v13, v11

    .line 365
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v13

    .line 369
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :pswitch_10
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    if-eqz v13, :cond_3

    .line 379
    .line 380
    and-int/2addr v11, v15

    .line 381
    int-to-long v13, v11

    .line 382
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    check-cast v11, Ljava/lang/Float;

    .line 387
    .line 388
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    invoke-virtual {v2, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :pswitch_11
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    if-eqz v13, :cond_3

    .line 402
    .line 403
    and-int/2addr v11, v15

    .line 404
    int-to-long v13, v11

    .line 405
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    check-cast v11, Ljava/lang/Double;

    .line 410
    .line 411
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 412
    .line 413
    .line 414
    move-result-wide v13

    .line 415
    invoke-virtual {v2, v13, v14, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_3

    .line 419
    .line 420
    :pswitch_12
    and-int/2addr v11, v15

    .line 421
    int-to-long v13, v11

    .line 422
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v11

    .line 426
    invoke-virtual {v0, v2, v12, v11, v10}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :pswitch_13
    aget v12, v7, v10

    .line 432
    .line 433
    and-int/2addr v11, v15

    .line 434
    int-to-long v13, v11

    .line 435
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v11

    .line 439
    check-cast v11, Ljava/util/List;

    .line 440
    .line 441
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-static {v12, v11, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :pswitch_14
    aget v12, v7, v10

    .line 451
    .line 452
    and-int/2addr v11, v15

    .line 453
    move-object/from16 v16, v4

    .line 454
    .line 455
    int-to-long v3, v11

    .line 456
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    check-cast v3, Ljava/util/List;

    .line 461
    .line 462
    invoke-static {v12, v3, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :pswitch_15
    move-object/from16 v16, v4

    .line 468
    .line 469
    aget v3, v7, v10

    .line 470
    .line 471
    and-int v4, v11, v15

    .line 472
    .line 473
    int-to-long v11, v4

    .line 474
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    check-cast v4, Ljava/util/List;

    .line 479
    .line 480
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_4

    .line 484
    .line 485
    :pswitch_16
    move-object/from16 v16, v4

    .line 486
    .line 487
    aget v3, v7, v10

    .line 488
    .line 489
    and-int v4, v11, v15

    .line 490
    .line 491
    int-to-long v11, v4

    .line 492
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    check-cast v4, Ljava/util/List;

    .line 497
    .line 498
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :pswitch_17
    move-object/from16 v16, v4

    .line 504
    .line 505
    aget v3, v7, v10

    .line 506
    .line 507
    and-int v4, v11, v15

    .line 508
    .line 509
    int-to-long v11, v4

    .line 510
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Ljava/util/List;

    .line 515
    .line 516
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_4

    .line 520
    .line 521
    :pswitch_18
    move-object/from16 v16, v4

    .line 522
    .line 523
    aget v3, v7, v10

    .line 524
    .line 525
    and-int v4, v11, v15

    .line 526
    .line 527
    int-to-long v11, v4

    .line 528
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    check-cast v4, Ljava/util/List;

    .line 533
    .line 534
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_4

    .line 538
    .line 539
    :pswitch_19
    move-object/from16 v16, v4

    .line 540
    .line 541
    aget v3, v7, v10

    .line 542
    .line 543
    and-int v4, v11, v15

    .line 544
    .line 545
    int-to-long v11, v4

    .line 546
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    check-cast v4, Ljava/util/List;

    .line 551
    .line 552
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_4

    .line 556
    .line 557
    :pswitch_1a
    move-object/from16 v16, v4

    .line 558
    .line 559
    aget v3, v7, v10

    .line 560
    .line 561
    and-int v4, v11, v15

    .line 562
    .line 563
    int-to-long v11, v4

    .line 564
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    check-cast v4, Ljava/util/List;

    .line 569
    .line 570
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_4

    .line 574
    .line 575
    :pswitch_1b
    move-object/from16 v16, v4

    .line 576
    .line 577
    aget v3, v7, v10

    .line 578
    .line 579
    and-int v4, v11, v15

    .line 580
    .line 581
    int-to-long v11, v4

    .line 582
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    check-cast v4, Ljava/util/List;

    .line 587
    .line 588
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_4

    .line 592
    .line 593
    :pswitch_1c
    move-object/from16 v16, v4

    .line 594
    .line 595
    aget v3, v7, v10

    .line 596
    .line 597
    and-int v4, v11, v15

    .line 598
    .line 599
    int-to-long v11, v4

    .line 600
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    check-cast v4, Ljava/util/List;

    .line 605
    .line 606
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_4

    .line 610
    .line 611
    :pswitch_1d
    move-object/from16 v16, v4

    .line 612
    .line 613
    aget v3, v7, v10

    .line 614
    .line 615
    and-int v4, v11, v15

    .line 616
    .line 617
    int-to-long v11, v4

    .line 618
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    check-cast v4, Ljava/util/List;

    .line 623
    .line 624
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_4

    .line 628
    .line 629
    :pswitch_1e
    move-object/from16 v16, v4

    .line 630
    .line 631
    aget v3, v7, v10

    .line 632
    .line 633
    and-int v4, v11, v15

    .line 634
    .line 635
    int-to-long v11, v4

    .line 636
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    check-cast v4, Ljava/util/List;

    .line 641
    .line 642
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_4

    .line 646
    .line 647
    :pswitch_1f
    move-object/from16 v16, v4

    .line 648
    .line 649
    aget v3, v7, v10

    .line 650
    .line 651
    and-int v4, v11, v15

    .line 652
    .line 653
    int-to-long v11, v4

    .line 654
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    check-cast v4, Ljava/util/List;

    .line 659
    .line 660
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_4

    .line 664
    .line 665
    :pswitch_20
    move-object/from16 v16, v4

    .line 666
    .line 667
    aget v3, v7, v10

    .line 668
    .line 669
    and-int v4, v11, v15

    .line 670
    .line 671
    int-to-long v11, v4

    .line 672
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    check-cast v4, Ljava/util/List;

    .line 677
    .line 678
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_4

    .line 682
    .line 683
    :pswitch_21
    move-object/from16 v16, v4

    .line 684
    .line 685
    aget v3, v7, v10

    .line 686
    .line 687
    and-int v4, v11, v15

    .line 688
    .line 689
    int-to-long v11, v4

    .line 690
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    check-cast v4, Ljava/util/List;

    .line 695
    .line 696
    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_4

    .line 700
    .line 701
    :pswitch_22
    move-object/from16 v16, v4

    .line 702
    .line 703
    aget v3, v7, v10

    .line 704
    .line 705
    and-int v4, v11, v15

    .line 706
    .line 707
    int-to-long v11, v4

    .line 708
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    check-cast v4, Ljava/util/List;

    .line 713
    .line 714
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 715
    .line 716
    .line 717
    goto/16 :goto_4

    .line 718
    .line 719
    :pswitch_23
    move-object/from16 v16, v4

    .line 720
    .line 721
    aget v3, v7, v10

    .line 722
    .line 723
    and-int v4, v11, v15

    .line 724
    .line 725
    int-to-long v11, v4

    .line 726
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    check-cast v4, Ljava/util/List;

    .line 731
    .line 732
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_4

    .line 736
    .line 737
    :pswitch_24
    move-object/from16 v16, v4

    .line 738
    .line 739
    aget v3, v7, v10

    .line 740
    .line 741
    and-int v4, v11, v15

    .line 742
    .line 743
    int-to-long v11, v4

    .line 744
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    check-cast v4, Ljava/util/List;

    .line 749
    .line 750
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_4

    .line 754
    .line 755
    :pswitch_25
    move-object/from16 v16, v4

    .line 756
    .line 757
    aget v3, v7, v10

    .line 758
    .line 759
    and-int v4, v11, v15

    .line 760
    .line 761
    int-to-long v11, v4

    .line 762
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    check-cast v4, Ljava/util/List;

    .line 767
    .line 768
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_4

    .line 772
    .line 773
    :pswitch_26
    move-object/from16 v16, v4

    .line 774
    .line 775
    aget v3, v7, v10

    .line 776
    .line 777
    and-int v4, v11, v15

    .line 778
    .line 779
    int-to-long v11, v4

    .line 780
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    check-cast v4, Ljava/util/List;

    .line 785
    .line 786
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_4

    .line 790
    .line 791
    :pswitch_27
    move-object/from16 v16, v4

    .line 792
    .line 793
    aget v3, v7, v10

    .line 794
    .line 795
    and-int v4, v11, v15

    .line 796
    .line 797
    int-to-long v11, v4

    .line 798
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    check-cast v4, Ljava/util/List;

    .line 803
    .line 804
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_4

    .line 808
    .line 809
    :pswitch_28
    move-object/from16 v16, v4

    .line 810
    .line 811
    aget v3, v7, v10

    .line 812
    .line 813
    and-int v4, v11, v15

    .line 814
    .line 815
    int-to-long v11, v4

    .line 816
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    check-cast v4, Ljava/util/List;

    .line 821
    .line 822
    invoke-static {v3, v4, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_4

    .line 826
    .line 827
    :pswitch_29
    move-object/from16 v16, v4

    .line 828
    .line 829
    aget v3, v7, v10

    .line 830
    .line 831
    and-int v4, v11, v15

    .line 832
    .line 833
    int-to-long v11, v4

    .line 834
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    check-cast v4, Ljava/util/List;

    .line 839
    .line 840
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 841
    .line 842
    .line 843
    move-result-object v11

    .line 844
    invoke-static {v3, v4, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_4

    .line 848
    .line 849
    :pswitch_2a
    move-object/from16 v16, v4

    .line 850
    .line 851
    aget v3, v7, v10

    .line 852
    .line 853
    and-int v4, v11, v15

    .line 854
    .line 855
    int-to-long v11, v4

    .line 856
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    check-cast v4, Ljava/util/List;

    .line 861
    .line 862
    invoke-static {v3, v4, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 863
    .line 864
    .line 865
    goto/16 :goto_4

    .line 866
    .line 867
    :pswitch_2b
    move-object/from16 v16, v4

    .line 868
    .line 869
    aget v3, v7, v10

    .line 870
    .line 871
    and-int v4, v11, v15

    .line 872
    .line 873
    int-to-long v11, v4

    .line 874
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    check-cast v4, Ljava/util/List;

    .line 879
    .line 880
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_4

    .line 884
    .line 885
    :pswitch_2c
    move-object/from16 v16, v4

    .line 886
    .line 887
    aget v3, v7, v10

    .line 888
    .line 889
    and-int v4, v11, v15

    .line 890
    .line 891
    int-to-long v11, v4

    .line 892
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    check-cast v4, Ljava/util/List;

    .line 897
    .line 898
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 899
    .line 900
    .line 901
    goto/16 :goto_4

    .line 902
    .line 903
    :pswitch_2d
    move-object/from16 v16, v4

    .line 904
    .line 905
    aget v3, v7, v10

    .line 906
    .line 907
    and-int v4, v11, v15

    .line 908
    .line 909
    int-to-long v11, v4

    .line 910
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    check-cast v4, Ljava/util/List;

    .line 915
    .line 916
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_4

    .line 920
    .line 921
    :pswitch_2e
    move-object/from16 v16, v4

    .line 922
    .line 923
    aget v3, v7, v10

    .line 924
    .line 925
    and-int v4, v11, v15

    .line 926
    .line 927
    int-to-long v11, v4

    .line 928
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    check-cast v4, Ljava/util/List;

    .line 933
    .line 934
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 935
    .line 936
    .line 937
    goto/16 :goto_4

    .line 938
    .line 939
    :pswitch_2f
    move-object/from16 v16, v4

    .line 940
    .line 941
    aget v3, v7, v10

    .line 942
    .line 943
    and-int v4, v11, v15

    .line 944
    .line 945
    int-to-long v11, v4

    .line 946
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v4

    .line 950
    check-cast v4, Ljava/util/List;

    .line 951
    .line 952
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 953
    .line 954
    .line 955
    goto/16 :goto_4

    .line 956
    .line 957
    :pswitch_30
    move-object/from16 v16, v4

    .line 958
    .line 959
    aget v3, v7, v10

    .line 960
    .line 961
    and-int v4, v11, v15

    .line 962
    .line 963
    int-to-long v11, v4

    .line 964
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    check-cast v4, Ljava/util/List;

    .line 969
    .line 970
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 971
    .line 972
    .line 973
    goto/16 :goto_4

    .line 974
    .line 975
    :pswitch_31
    move-object/from16 v16, v4

    .line 976
    .line 977
    aget v3, v7, v10

    .line 978
    .line 979
    and-int v4, v11, v15

    .line 980
    .line 981
    int-to-long v11, v4

    .line 982
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v4

    .line 986
    check-cast v4, Ljava/util/List;

    .line 987
    .line 988
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_4

    .line 992
    .line 993
    :pswitch_32
    move-object/from16 v16, v4

    .line 994
    .line 995
    aget v3, v7, v10

    .line 996
    .line 997
    and-int v4, v11, v15

    .line 998
    .line 999
    int-to-long v11, v4

    .line 1000
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    check-cast v4, Ljava/util/List;

    .line 1005
    .line 1006
    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1007
    .line 1008
    .line 1009
    goto/16 :goto_4

    .line 1010
    .line 1011
    :pswitch_33
    move-object/from16 v16, v4

    .line 1012
    .line 1013
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    if-eqz v3, :cond_4

    .line 1018
    .line 1019
    and-int v3, v11, v15

    .line 1020
    .line 1021
    int-to-long v3, v3

    .line 1022
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v4

    .line 1030
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    goto/16 :goto_4

    .line 1034
    .line 1035
    :pswitch_34
    move-object/from16 v16, v4

    .line 1036
    .line 1037
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v3

    .line 1041
    if-eqz v3, :cond_4

    .line 1042
    .line 1043
    and-int v3, v11, v15

    .line 1044
    .line 1045
    int-to-long v3, v3

    .line 1046
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v3

    .line 1050
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 1051
    .line 1052
    .line 1053
    goto/16 :goto_4

    .line 1054
    .line 1055
    :pswitch_35
    move-object/from16 v16, v4

    .line 1056
    .line 1057
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1058
    .line 1059
    .line 1060
    move-result v3

    .line 1061
    if-eqz v3, :cond_4

    .line 1062
    .line 1063
    and-int v3, v11, v15

    .line 1064
    .line 1065
    int-to-long v3, v3

    .line 1066
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1067
    .line 1068
    .line 1069
    move-result v3

    .line 1070
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 1071
    .line 1072
    .line 1073
    goto/16 :goto_4

    .line 1074
    .line 1075
    :pswitch_36
    move-object/from16 v16, v4

    .line 1076
    .line 1077
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v3

    .line 1081
    if-eqz v3, :cond_4

    .line 1082
    .line 1083
    and-int v3, v11, v15

    .line 1084
    .line 1085
    int-to-long v3, v3

    .line 1086
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v3

    .line 1090
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 1091
    .line 1092
    .line 1093
    goto/16 :goto_4

    .line 1094
    .line 1095
    :pswitch_37
    move-object/from16 v16, v4

    .line 1096
    .line 1097
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    if-eqz v3, :cond_4

    .line 1102
    .line 1103
    and-int v3, v11, v15

    .line 1104
    .line 1105
    int-to-long v3, v3

    .line 1106
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1107
    .line 1108
    .line 1109
    move-result v3

    .line 1110
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 1111
    .line 1112
    .line 1113
    goto/16 :goto_4

    .line 1114
    .line 1115
    :pswitch_38
    move-object/from16 v16, v4

    .line 1116
    .line 1117
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    if-eqz v3, :cond_4

    .line 1122
    .line 1123
    and-int v3, v11, v15

    .line 1124
    .line 1125
    int-to-long v3, v3

    .line 1126
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v3

    .line 1130
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 1131
    .line 1132
    .line 1133
    goto/16 :goto_4

    .line 1134
    .line 1135
    :pswitch_39
    move-object/from16 v16, v4

    .line 1136
    .line 1137
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v3

    .line 1141
    if-eqz v3, :cond_4

    .line 1142
    .line 1143
    and-int v3, v11, v15

    .line 1144
    .line 1145
    int-to-long v3, v3

    .line 1146
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1147
    .line 1148
    .line 1149
    move-result v3

    .line 1150
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 1151
    .line 1152
    .line 1153
    goto/16 :goto_4

    .line 1154
    .line 1155
    :pswitch_3a
    move-object/from16 v16, v4

    .line 1156
    .line 1157
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v3

    .line 1161
    if-eqz v3, :cond_4

    .line 1162
    .line 1163
    and-int v3, v11, v15

    .line 1164
    .line 1165
    int-to-long v3, v3

    .line 1166
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1171
    .line 1172
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1173
    .line 1174
    .line 1175
    goto/16 :goto_4

    .line 1176
    .line 1177
    :pswitch_3b
    move-object/from16 v16, v4

    .line 1178
    .line 1179
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    if-eqz v3, :cond_4

    .line 1184
    .line 1185
    and-int v3, v11, v15

    .line 1186
    .line 1187
    int-to-long v3, v3

    .line 1188
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v3

    .line 1192
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    goto/16 :goto_4

    .line 1200
    .line 1201
    :pswitch_3c
    move-object/from16 v16, v4

    .line 1202
    .line 1203
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v3

    .line 1207
    if-eqz v3, :cond_4

    .line 1208
    .line 1209
    and-int v3, v11, v15

    .line 1210
    .line 1211
    int-to-long v3, v3

    .line 1212
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    invoke-static {v12, v3, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 1217
    .line 1218
    .line 1219
    goto/16 :goto_4

    .line 1220
    .line 1221
    :pswitch_3d
    move-object/from16 v16, v4

    .line 1222
    .line 1223
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v3

    .line 1227
    if-eqz v3, :cond_4

    .line 1228
    .line 1229
    and-int v3, v11, v15

    .line 1230
    .line 1231
    int-to-long v3, v3

    .line 1232
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 1237
    .line 1238
    .line 1239
    goto/16 :goto_4

    .line 1240
    .line 1241
    :pswitch_3e
    move-object/from16 v16, v4

    .line 1242
    .line 1243
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v3

    .line 1247
    if-eqz v3, :cond_4

    .line 1248
    .line 1249
    and-int v3, v11, v15

    .line 1250
    .line 1251
    int-to-long v3, v3

    .line 1252
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1253
    .line 1254
    .line 1255
    move-result v3

    .line 1256
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_4

    .line 1260
    .line 1261
    :pswitch_3f
    move-object/from16 v16, v4

    .line 1262
    .line 1263
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v3

    .line 1267
    if-eqz v3, :cond_4

    .line 1268
    .line 1269
    and-int v3, v11, v15

    .line 1270
    .line 1271
    int-to-long v3, v3

    .line 1272
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v3

    .line 1276
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_4

    .line 1280
    :pswitch_40
    move-object/from16 v16, v4

    .line 1281
    .line 1282
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-eqz v3, :cond_4

    .line 1287
    .line 1288
    and-int v3, v11, v15

    .line 1289
    .line 1290
    int-to-long v3, v3

    .line 1291
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1292
    .line 1293
    .line 1294
    move-result v3

    .line 1295
    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 1296
    .line 1297
    .line 1298
    goto :goto_4

    .line 1299
    :pswitch_41
    move-object/from16 v16, v4

    .line 1300
    .line 1301
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v3

    .line 1305
    if-eqz v3, :cond_4

    .line 1306
    .line 1307
    and-int v3, v11, v15

    .line 1308
    .line 1309
    int-to-long v3, v3

    .line 1310
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1311
    .line 1312
    .line 1313
    move-result-wide v3

    .line 1314
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 1315
    .line 1316
    .line 1317
    goto :goto_4

    .line 1318
    :pswitch_42
    move-object/from16 v16, v4

    .line 1319
    .line 1320
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1321
    .line 1322
    .line 1323
    move-result v3

    .line 1324
    if-eqz v3, :cond_4

    .line 1325
    .line 1326
    and-int v3, v11, v15

    .line 1327
    .line 1328
    int-to-long v3, v3

    .line 1329
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1330
    .line 1331
    .line 1332
    move-result-wide v3

    .line 1333
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 1334
    .line 1335
    .line 1336
    goto :goto_4

    .line 1337
    :pswitch_43
    move-object/from16 v16, v4

    .line 1338
    .line 1339
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v3

    .line 1343
    if-eqz v3, :cond_4

    .line 1344
    .line 1345
    and-int v3, v11, v15

    .line 1346
    .line 1347
    int-to-long v3, v3

    .line 1348
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 1349
    .line 1350
    .line 1351
    move-result v3

    .line 1352
    invoke-virtual {v2, v3, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 1353
    .line 1354
    .line 1355
    goto :goto_4

    .line 1356
    :pswitch_44
    move-object/from16 v16, v4

    .line 1357
    .line 1358
    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v3

    .line 1362
    if-eqz v3, :cond_4

    .line 1363
    .line 1364
    and-int v3, v11, v15

    .line 1365
    .line 1366
    int-to-long v3, v3

    .line 1367
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 1368
    .line 1369
    .line 1370
    move-result-wide v3

    .line 1371
    invoke-virtual {v2, v3, v4, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 1372
    .line 1373
    .line 1374
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x3

    .line 1375
    .line 1376
    move-object/from16 v4, v16

    .line 1377
    .line 1378
    goto/16 :goto_1

    .line 1379
    .line 1380
    :cond_5
    move-object/from16 v16, v4

    .line 1381
    .line 1382
    :goto_5
    if-eqz v6, :cond_7

    .line 1383
    .line 1384
    invoke-virtual {v5, v2, v6}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 1388
    .line 1389
    .line 1390
    move-result v3

    .line 1391
    if-eqz v3, :cond_6

    .line 1392
    .line 1393
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v3

    .line 1397
    move-object v6, v3

    .line 1398
    check-cast v6, Ljava/util/Map$Entry;

    .line 1399
    .line 1400
    goto :goto_5

    .line 1401
    :cond_6
    const/4 v6, 0x0

    .line 1402
    goto :goto_5

    .line 1403
    :cond_7
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 1404
    .line 1405
    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 1410
    .line 1411
    .line 1412
    return-void

    .line 1413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p4, Lcom/google/protobuf/MapEntryLite;

    .line 16
    .line 17
    iget-object p4, p4, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    .line 18
    .line 19
    check-cast p0, Lcom/google/protobuf/MapFieldSchemaLite;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p3, Lcom/google/protobuf/MapFieldLite;

    .line 25
    .line 26
    iget-object p0, p1, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Ljava/util/Map$Entry;

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p0, p4, v0, p3}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v3, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    .line 11
    .line 12
    sget-object v4, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 15
    .line 16
    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 17
    .line 18
    iget-boolean v7, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 19
    .line 20
    iget-object v8, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 21
    .line 22
    const/high16 v9, 0xff00000

    .line 23
    .line 24
    const v10, 0xfffff

    .line 25
    .line 26
    .line 27
    const/4 v11, 0x0

    .line 28
    if-ne v3, v4, :cond_9

    .line 29
    .line 30
    invoke-virtual {v8, v1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v8, v3, v2}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 35
    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    invoke-virtual {v6, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, v3, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    iget-boolean v4, v3, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 52
    .line 53
    iget-object v3, v3, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    new-instance v4, Lcom/google/protobuf/LazyField$LazyIterator;

    .line 58
    .line 59
    iget-object v7, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 60
    .line 61
    if-nez v7, :cond_0

    .line 62
    .line 63
    new-instance v7, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 64
    .line 65
    invoke-direct {v7, v3, v11}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    .line 66
    .line 67
    .line 68
    iput-object v7, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 69
    .line 70
    :cond_0
    iget-object v3, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-direct {v4, v3}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v4, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 81
    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    new-instance v4, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 85
    .line 86
    invoke-direct {v4, v3, v11}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    .line 87
    .line 88
    .line 89
    iput-object v4, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 90
    .line 91
    :cond_2
    iget-object v3, v3, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/util/Map$Entry;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move-object v3, v11

    .line 105
    move-object v4, v3

    .line 106
    :goto_1
    array-length v7, v5

    .line 107
    add-int/lit8 v7, v7, -0x3

    .line 108
    .line 109
    :goto_2
    if-ltz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    aget v14, v5, v7

    .line 116
    .line 117
    :goto_3
    if-eqz v3, :cond_5

    .line 118
    .line 119
    invoke-virtual {v6, v3}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-le v15, v14, :cond_5

    .line 124
    .line 125
    invoke-virtual {v6, v2, v3}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/util/Map$Entry;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move-object v3, v11

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    and-int v15, v8, v9

    .line 144
    .line 145
    ushr-int/lit8 v15, v15, 0x14

    .line 146
    .line 147
    packed-switch v15, :pswitch_data_0

    .line 148
    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :pswitch_0
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_6

    .line 157
    .line 158
    and-int/2addr v8, v10

    .line 159
    int-to-long v11, v8

    .line 160
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v2, v14, v11, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :pswitch_1
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_6

    .line 178
    .line 179
    and-int/2addr v8, v10

    .line 180
    int-to-long v11, v8

    .line 181
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v11

    .line 185
    invoke-virtual {v2, v14, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :pswitch_2
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-eqz v11, :cond_6

    .line 195
    .line 196
    and-int/2addr v8, v10

    .line 197
    int-to-long v11, v8

    .line 198
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :pswitch_3
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-eqz v11, :cond_6

    .line 212
    .line 213
    and-int/2addr v8, v10

    .line 214
    int-to-long v11, v8

    .line 215
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v11

    .line 219
    invoke-virtual {v2, v14, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_4

    .line 223
    .line 224
    :pswitch_4
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eqz v11, :cond_6

    .line 229
    .line 230
    and-int/2addr v8, v10

    .line 231
    int-to-long v11, v8

    .line 232
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_4

    .line 240
    .line 241
    :pswitch_5
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    if-eqz v11, :cond_6

    .line 246
    .line 247
    and-int/2addr v8, v10

    .line 248
    int-to-long v11, v8

    .line 249
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_4

    .line 257
    .line 258
    :pswitch_6
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_6

    .line 263
    .line 264
    and-int/2addr v8, v10

    .line 265
    int-to-long v11, v8

    .line 266
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :pswitch_7
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    if-eqz v11, :cond_6

    .line 280
    .line 281
    and-int/2addr v8, v10

    .line 282
    int-to-long v11, v8

    .line 283
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 288
    .line 289
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :pswitch_8
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-eqz v11, :cond_6

    .line 299
    .line 300
    and-int/2addr v8, v10

    .line 301
    int-to-long v11, v8

    .line 302
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    invoke-virtual {v2, v14, v11, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :pswitch_9
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-eqz v11, :cond_6

    .line 320
    .line 321
    and-int/2addr v8, v10

    .line 322
    int-to-long v11, v8

    .line 323
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-static {v14, v8, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :pswitch_a
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    if-eqz v11, :cond_6

    .line 337
    .line 338
    and-int/2addr v8, v10

    .line 339
    int-to-long v11, v8

    .line 340
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    check-cast v8, Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_4

    .line 354
    .line 355
    :pswitch_b
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v11

    .line 359
    if-eqz v11, :cond_6

    .line 360
    .line 361
    and-int/2addr v8, v10

    .line 362
    int-to-long v11, v8

    .line 363
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_4

    .line 371
    .line 372
    :pswitch_c
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-eqz v11, :cond_6

    .line 377
    .line 378
    and-int/2addr v8, v10

    .line 379
    int-to-long v11, v8

    .line 380
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 381
    .line 382
    .line 383
    move-result-wide v11

    .line 384
    invoke-virtual {v2, v14, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_4

    .line 388
    .line 389
    :pswitch_d
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    if-eqz v11, :cond_6

    .line 394
    .line 395
    and-int/2addr v8, v10

    .line 396
    int-to-long v11, v8

    .line 397
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :pswitch_e
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v11

    .line 410
    if-eqz v11, :cond_6

    .line 411
    .line 412
    and-int/2addr v8, v10

    .line 413
    int-to-long v11, v8

    .line 414
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 415
    .line 416
    .line 417
    move-result-wide v11

    .line 418
    invoke-virtual {v2, v14, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_4

    .line 422
    .line 423
    :pswitch_f
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    if-eqz v11, :cond_6

    .line 428
    .line 429
    and-int/2addr v8, v10

    .line 430
    int-to-long v11, v8

    .line 431
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v11

    .line 435
    invoke-virtual {v2, v14, v11, v12}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_4

    .line 439
    .line 440
    :pswitch_10
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v11

    .line 444
    if-eqz v11, :cond_6

    .line 445
    .line 446
    and-int/2addr v8, v10

    .line 447
    int-to-long v11, v8

    .line 448
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    check-cast v8, Ljava/lang/Float;

    .line 453
    .line 454
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    invoke-virtual {v2, v8, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_4

    .line 462
    .line 463
    :pswitch_11
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-eqz v11, :cond_6

    .line 468
    .line 469
    and-int/2addr v8, v10

    .line 470
    int-to-long v11, v8

    .line 471
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    check-cast v8, Ljava/lang/Double;

    .line 476
    .line 477
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 478
    .line 479
    .line 480
    move-result-wide v11

    .line 481
    invoke-virtual {v2, v11, v12, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :pswitch_12
    and-int/2addr v8, v10

    .line 487
    int-to-long v11, v8

    .line 488
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-virtual {v0, v2, v14, v8, v7}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_4

    .line 496
    .line 497
    :pswitch_13
    aget v11, v5, v7

    .line 498
    .line 499
    and-int/2addr v8, v10

    .line 500
    int-to-long v13, v8

    .line 501
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    check-cast v8, Ljava/util/List;

    .line 506
    .line 507
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 508
    .line 509
    .line 510
    move-result-object v13

    .line 511
    invoke-static {v11, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :pswitch_14
    aget v11, v5, v7

    .line 517
    .line 518
    and-int/2addr v8, v10

    .line 519
    int-to-long v13, v8

    .line 520
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    check-cast v8, Ljava/util/List;

    .line 525
    .line 526
    const/4 v13, 0x1

    .line 527
    invoke-static {v11, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_4

    .line 531
    .line 532
    :pswitch_15
    const/4 v13, 0x1

    .line 533
    aget v11, v5, v7

    .line 534
    .line 535
    and-int/2addr v8, v10

    .line 536
    int-to-long v9, v8

    .line 537
    invoke-static {v9, v10, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    check-cast v8, Ljava/util/List;

    .line 542
    .line 543
    invoke-static {v11, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :pswitch_16
    const/4 v13, 0x1

    .line 549
    aget v9, v5, v7

    .line 550
    .line 551
    const v10, 0xfffff

    .line 552
    .line 553
    .line 554
    and-int/2addr v8, v10

    .line 555
    int-to-long v10, v8

    .line 556
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    check-cast v8, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_4

    .line 566
    .line 567
    :pswitch_17
    const/4 v13, 0x1

    .line 568
    aget v9, v5, v7

    .line 569
    .line 570
    const v10, 0xfffff

    .line 571
    .line 572
    .line 573
    and-int/2addr v8, v10

    .line 574
    int-to-long v10, v8

    .line 575
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    check-cast v8, Ljava/util/List;

    .line 580
    .line 581
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_4

    .line 585
    .line 586
    :pswitch_18
    const/4 v13, 0x1

    .line 587
    aget v9, v5, v7

    .line 588
    .line 589
    const v10, 0xfffff

    .line 590
    .line 591
    .line 592
    and-int/2addr v8, v10

    .line 593
    int-to-long v10, v8

    .line 594
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v8

    .line 598
    check-cast v8, Ljava/util/List;

    .line 599
    .line 600
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_4

    .line 604
    .line 605
    :pswitch_19
    const/4 v13, 0x1

    .line 606
    aget v9, v5, v7

    .line 607
    .line 608
    const v10, 0xfffff

    .line 609
    .line 610
    .line 611
    and-int/2addr v8, v10

    .line 612
    int-to-long v10, v8

    .line 613
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    check-cast v8, Ljava/util/List;

    .line 618
    .line 619
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_4

    .line 623
    .line 624
    :pswitch_1a
    const/4 v13, 0x1

    .line 625
    aget v9, v5, v7

    .line 626
    .line 627
    const v10, 0xfffff

    .line 628
    .line 629
    .line 630
    and-int/2addr v8, v10

    .line 631
    int-to-long v10, v8

    .line 632
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    check-cast v8, Ljava/util/List;

    .line 637
    .line 638
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_4

    .line 642
    .line 643
    :pswitch_1b
    const/4 v13, 0x1

    .line 644
    aget v9, v5, v7

    .line 645
    .line 646
    const v10, 0xfffff

    .line 647
    .line 648
    .line 649
    and-int/2addr v8, v10

    .line 650
    int-to-long v10, v8

    .line 651
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    check-cast v8, Ljava/util/List;

    .line 656
    .line 657
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 658
    .line 659
    .line 660
    goto/16 :goto_4

    .line 661
    .line 662
    :pswitch_1c
    const/4 v13, 0x1

    .line 663
    aget v9, v5, v7

    .line 664
    .line 665
    const v10, 0xfffff

    .line 666
    .line 667
    .line 668
    and-int/2addr v8, v10

    .line 669
    int-to-long v10, v8

    .line 670
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v8

    .line 674
    check-cast v8, Ljava/util/List;

    .line 675
    .line 676
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_4

    .line 680
    .line 681
    :pswitch_1d
    const/4 v13, 0x1

    .line 682
    aget v9, v5, v7

    .line 683
    .line 684
    const v10, 0xfffff

    .line 685
    .line 686
    .line 687
    and-int/2addr v8, v10

    .line 688
    int-to-long v10, v8

    .line 689
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    check-cast v8, Ljava/util/List;

    .line 694
    .line 695
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_4

    .line 699
    .line 700
    :pswitch_1e
    const/4 v13, 0x1

    .line 701
    aget v9, v5, v7

    .line 702
    .line 703
    const v10, 0xfffff

    .line 704
    .line 705
    .line 706
    and-int/2addr v8, v10

    .line 707
    int-to-long v10, v8

    .line 708
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v8

    .line 712
    check-cast v8, Ljava/util/List;

    .line 713
    .line 714
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 715
    .line 716
    .line 717
    goto/16 :goto_4

    .line 718
    .line 719
    :pswitch_1f
    const/4 v13, 0x1

    .line 720
    aget v9, v5, v7

    .line 721
    .line 722
    const v10, 0xfffff

    .line 723
    .line 724
    .line 725
    and-int/2addr v8, v10

    .line 726
    int-to-long v10, v8

    .line 727
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    check-cast v8, Ljava/util/List;

    .line 732
    .line 733
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 734
    .line 735
    .line 736
    goto/16 :goto_4

    .line 737
    .line 738
    :pswitch_20
    const/4 v13, 0x1

    .line 739
    aget v9, v5, v7

    .line 740
    .line 741
    const v10, 0xfffff

    .line 742
    .line 743
    .line 744
    and-int/2addr v8, v10

    .line 745
    int-to-long v10, v8

    .line 746
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    check-cast v8, Ljava/util/List;

    .line 751
    .line 752
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_4

    .line 756
    .line 757
    :pswitch_21
    const/4 v13, 0x1

    .line 758
    aget v9, v5, v7

    .line 759
    .line 760
    const v10, 0xfffff

    .line 761
    .line 762
    .line 763
    and-int/2addr v8, v10

    .line 764
    int-to-long v10, v8

    .line 765
    invoke-static {v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v8

    .line 769
    check-cast v8, Ljava/util/List;

    .line 770
    .line 771
    invoke-static {v9, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_4

    .line 775
    .line 776
    :pswitch_22
    aget v9, v5, v7

    .line 777
    .line 778
    const v10, 0xfffff

    .line 779
    .line 780
    .line 781
    and-int/2addr v8, v10

    .line 782
    int-to-long v13, v8

    .line 783
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v8

    .line 787
    check-cast v8, Ljava/util/List;

    .line 788
    .line 789
    const/4 v11, 0x0

    .line 790
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_4

    .line 794
    .line 795
    :pswitch_23
    const/4 v11, 0x0

    .line 796
    aget v9, v5, v7

    .line 797
    .line 798
    and-int/2addr v8, v10

    .line 799
    int-to-long v12, v8

    .line 800
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v8

    .line 804
    check-cast v8, Ljava/util/List;

    .line 805
    .line 806
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 807
    .line 808
    .line 809
    goto/16 :goto_4

    .line 810
    .line 811
    :pswitch_24
    const/4 v11, 0x0

    .line 812
    aget v9, v5, v7

    .line 813
    .line 814
    and-int/2addr v8, v10

    .line 815
    int-to-long v12, v8

    .line 816
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v8

    .line 820
    check-cast v8, Ljava/util/List;

    .line 821
    .line 822
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_4

    .line 826
    .line 827
    :pswitch_25
    const/4 v11, 0x0

    .line 828
    aget v9, v5, v7

    .line 829
    .line 830
    and-int/2addr v8, v10

    .line 831
    int-to-long v12, v8

    .line 832
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v8

    .line 836
    check-cast v8, Ljava/util/List;

    .line 837
    .line 838
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_4

    .line 842
    .line 843
    :pswitch_26
    const/4 v11, 0x0

    .line 844
    aget v9, v5, v7

    .line 845
    .line 846
    and-int/2addr v8, v10

    .line 847
    int-to-long v12, v8

    .line 848
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v8

    .line 852
    check-cast v8, Ljava/util/List;

    .line 853
    .line 854
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_4

    .line 858
    .line 859
    :pswitch_27
    const/4 v11, 0x0

    .line 860
    aget v9, v5, v7

    .line 861
    .line 862
    and-int/2addr v8, v10

    .line 863
    int-to-long v12, v8

    .line 864
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    check-cast v8, Ljava/util/List;

    .line 869
    .line 870
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_4

    .line 874
    .line 875
    :pswitch_28
    aget v9, v5, v7

    .line 876
    .line 877
    and-int/2addr v8, v10

    .line 878
    int-to-long v13, v8

    .line 879
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v8

    .line 883
    check-cast v8, Ljava/util/List;

    .line 884
    .line 885
    invoke-static {v9, v8, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 886
    .line 887
    .line 888
    goto/16 :goto_4

    .line 889
    .line 890
    :pswitch_29
    aget v9, v5, v7

    .line 891
    .line 892
    and-int/2addr v8, v10

    .line 893
    int-to-long v13, v8

    .line 894
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v8

    .line 898
    check-cast v8, Ljava/util/List;

    .line 899
    .line 900
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 901
    .line 902
    .line 903
    move-result-object v11

    .line 904
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 905
    .line 906
    .line 907
    goto/16 :goto_4

    .line 908
    .line 909
    :pswitch_2a
    aget v9, v5, v7

    .line 910
    .line 911
    and-int/2addr v8, v10

    .line 912
    int-to-long v13, v8

    .line 913
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v8

    .line 917
    check-cast v8, Ljava/util/List;

    .line 918
    .line 919
    invoke-static {v9, v8, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_4

    .line 923
    .line 924
    :pswitch_2b
    aget v9, v5, v7

    .line 925
    .line 926
    and-int/2addr v8, v10

    .line 927
    int-to-long v13, v8

    .line 928
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v8

    .line 932
    check-cast v8, Ljava/util/List;

    .line 933
    .line 934
    const/4 v11, 0x0

    .line 935
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 936
    .line 937
    .line 938
    goto/16 :goto_4

    .line 939
    .line 940
    :pswitch_2c
    const/4 v11, 0x0

    .line 941
    aget v9, v5, v7

    .line 942
    .line 943
    and-int/2addr v8, v10

    .line 944
    int-to-long v12, v8

    .line 945
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v8

    .line 949
    check-cast v8, Ljava/util/List;

    .line 950
    .line 951
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_4

    .line 955
    .line 956
    :pswitch_2d
    const/4 v11, 0x0

    .line 957
    aget v9, v5, v7

    .line 958
    .line 959
    and-int/2addr v8, v10

    .line 960
    int-to-long v12, v8

    .line 961
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v8

    .line 965
    check-cast v8, Ljava/util/List;

    .line 966
    .line 967
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_4

    .line 971
    .line 972
    :pswitch_2e
    const/4 v11, 0x0

    .line 973
    aget v9, v5, v7

    .line 974
    .line 975
    and-int/2addr v8, v10

    .line 976
    int-to-long v12, v8

    .line 977
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v8

    .line 981
    check-cast v8, Ljava/util/List;

    .line 982
    .line 983
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_4

    .line 987
    .line 988
    :pswitch_2f
    const/4 v11, 0x0

    .line 989
    aget v9, v5, v7

    .line 990
    .line 991
    and-int/2addr v8, v10

    .line 992
    int-to-long v12, v8

    .line 993
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v8

    .line 997
    check-cast v8, Ljava/util/List;

    .line 998
    .line 999
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_4

    .line 1003
    .line 1004
    :pswitch_30
    const/4 v11, 0x0

    .line 1005
    aget v9, v5, v7

    .line 1006
    .line 1007
    and-int/2addr v8, v10

    .line 1008
    int-to-long v12, v8

    .line 1009
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v8

    .line 1013
    check-cast v8, Ljava/util/List;

    .line 1014
    .line 1015
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_4

    .line 1019
    .line 1020
    :pswitch_31
    const/4 v11, 0x0

    .line 1021
    aget v9, v5, v7

    .line 1022
    .line 1023
    and-int/2addr v8, v10

    .line 1024
    int-to-long v12, v8

    .line 1025
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    check-cast v8, Ljava/util/List;

    .line 1030
    .line 1031
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_4

    .line 1035
    .line 1036
    :pswitch_32
    const/4 v11, 0x0

    .line 1037
    aget v9, v5, v7

    .line 1038
    .line 1039
    and-int/2addr v8, v10

    .line 1040
    int-to-long v12, v8

    .line 1041
    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    check-cast v8, Ljava/util/List;

    .line 1046
    .line 1047
    invoke-static {v9, v8, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1048
    .line 1049
    .line 1050
    goto/16 :goto_4

    .line 1051
    .line 1052
    :pswitch_33
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v9

    .line 1056
    if-eqz v9, :cond_6

    .line 1057
    .line 1058
    and-int/2addr v8, v10

    .line 1059
    int-to-long v8, v8

    .line 1060
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v8

    .line 1064
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v9

    .line 1068
    invoke-virtual {v2, v14, v9, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_4

    .line 1072
    .line 1073
    :pswitch_34
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v9

    .line 1077
    if-eqz v9, :cond_6

    .line 1078
    .line 1079
    and-int/2addr v8, v10

    .line 1080
    int-to-long v8, v8

    .line 1081
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v8

    .line 1085
    invoke-virtual {v2, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_4

    .line 1089
    .line 1090
    :pswitch_35
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v9

    .line 1094
    if-eqz v9, :cond_6

    .line 1095
    .line 1096
    and-int/2addr v8, v10

    .line 1097
    int-to-long v8, v8

    .line 1098
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1099
    .line 1100
    .line 1101
    move-result v8

    .line 1102
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 1103
    .line 1104
    .line 1105
    goto/16 :goto_4

    .line 1106
    .line 1107
    :pswitch_36
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v9

    .line 1111
    if-eqz v9, :cond_6

    .line 1112
    .line 1113
    and-int/2addr v8, v10

    .line 1114
    int-to-long v8, v8

    .line 1115
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v8

    .line 1119
    invoke-virtual {v2, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 1120
    .line 1121
    .line 1122
    goto/16 :goto_4

    .line 1123
    .line 1124
    :pswitch_37
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v9

    .line 1128
    if-eqz v9, :cond_6

    .line 1129
    .line 1130
    and-int/2addr v8, v10

    .line 1131
    int-to-long v8, v8

    .line 1132
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1133
    .line 1134
    .line 1135
    move-result v8

    .line 1136
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_4

    .line 1140
    .line 1141
    :pswitch_38
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v9

    .line 1145
    if-eqz v9, :cond_6

    .line 1146
    .line 1147
    and-int/2addr v8, v10

    .line 1148
    int-to-long v8, v8

    .line 1149
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1150
    .line 1151
    .line 1152
    move-result v8

    .line 1153
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_4

    .line 1157
    .line 1158
    :pswitch_39
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    move-result v9

    .line 1162
    if-eqz v9, :cond_6

    .line 1163
    .line 1164
    and-int/2addr v8, v10

    .line 1165
    int-to-long v8, v8

    .line 1166
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1167
    .line 1168
    .line 1169
    move-result v8

    .line 1170
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 1171
    .line 1172
    .line 1173
    goto/16 :goto_4

    .line 1174
    .line 1175
    :pswitch_3a
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v9

    .line 1179
    if-eqz v9, :cond_6

    .line 1180
    .line 1181
    and-int/2addr v8, v10

    .line 1182
    int-to-long v8, v8

    .line 1183
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v8

    .line 1187
    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1188
    .line 1189
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_4

    .line 1193
    .line 1194
    :pswitch_3b
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v9

    .line 1198
    if-eqz v9, :cond_6

    .line 1199
    .line 1200
    and-int/2addr v8, v10

    .line 1201
    int-to-long v8, v8

    .line 1202
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v8

    .line 1206
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v9

    .line 1210
    invoke-virtual {v2, v14, v9, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    goto/16 :goto_4

    .line 1214
    .line 1215
    :pswitch_3c
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v9

    .line 1219
    if-eqz v9, :cond_6

    .line 1220
    .line 1221
    and-int/2addr v8, v10

    .line 1222
    int-to-long v8, v8

    .line 1223
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v8

    .line 1227
    invoke-static {v14, v8, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 1228
    .line 1229
    .line 1230
    goto/16 :goto_4

    .line 1231
    .line 1232
    :pswitch_3d
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v9

    .line 1236
    if-eqz v9, :cond_6

    .line 1237
    .line 1238
    and-int/2addr v8, v10

    .line 1239
    int-to-long v8, v8

    .line 1240
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v8

    .line 1244
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_4

    .line 1248
    .line 1249
    :pswitch_3e
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v9

    .line 1253
    if-eqz v9, :cond_6

    .line 1254
    .line 1255
    and-int/2addr v8, v10

    .line 1256
    int-to-long v8, v8

    .line 1257
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1258
    .line 1259
    .line 1260
    move-result v8

    .line 1261
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 1262
    .line 1263
    .line 1264
    goto :goto_4

    .line 1265
    :pswitch_3f
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v9

    .line 1269
    if-eqz v9, :cond_6

    .line 1270
    .line 1271
    and-int/2addr v8, v10

    .line 1272
    int-to-long v8, v8

    .line 1273
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v8

    .line 1277
    invoke-virtual {v2, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 1278
    .line 1279
    .line 1280
    goto :goto_4

    .line 1281
    :pswitch_40
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v9

    .line 1285
    if-eqz v9, :cond_6

    .line 1286
    .line 1287
    and-int/2addr v8, v10

    .line 1288
    int-to-long v8, v8

    .line 1289
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1290
    .line 1291
    .line 1292
    move-result v8

    .line 1293
    invoke-virtual {v2, v14, v8}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 1294
    .line 1295
    .line 1296
    goto :goto_4

    .line 1297
    :pswitch_41
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v9

    .line 1301
    if-eqz v9, :cond_6

    .line 1302
    .line 1303
    and-int/2addr v8, v10

    .line 1304
    int-to-long v8, v8

    .line 1305
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1306
    .line 1307
    .line 1308
    move-result-wide v8

    .line 1309
    invoke-virtual {v2, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 1310
    .line 1311
    .line 1312
    goto :goto_4

    .line 1313
    :pswitch_42
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v9

    .line 1317
    if-eqz v9, :cond_6

    .line 1318
    .line 1319
    and-int/2addr v8, v10

    .line 1320
    int-to-long v8, v8

    .line 1321
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1322
    .line 1323
    .line 1324
    move-result-wide v8

    .line 1325
    invoke-virtual {v2, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_4

    .line 1329
    :pswitch_43
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v9

    .line 1333
    if-eqz v9, :cond_6

    .line 1334
    .line 1335
    and-int/2addr v8, v10

    .line 1336
    int-to-long v8, v8

    .line 1337
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 1338
    .line 1339
    .line 1340
    move-result v8

    .line 1341
    invoke-virtual {v2, v8, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 1342
    .line 1343
    .line 1344
    goto :goto_4

    .line 1345
    :pswitch_44
    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v9

    .line 1349
    if-eqz v9, :cond_6

    .line 1350
    .line 1351
    and-int/2addr v8, v10

    .line 1352
    int-to-long v8, v8

    .line 1353
    invoke-static {v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 1354
    .line 1355
    .line 1356
    move-result-wide v8

    .line 1357
    invoke-virtual {v2, v8, v9, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 1358
    .line 1359
    .line 1360
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, -0x3

    .line 1361
    .line 1362
    const/high16 v9, 0xff00000

    .line 1363
    .line 1364
    const v10, 0xfffff

    .line 1365
    .line 1366
    .line 1367
    const/4 v11, 0x0

    .line 1368
    goto/16 :goto_2

    .line 1369
    .line 1370
    :cond_7
    :goto_5
    if-eqz v3, :cond_15

    .line 1371
    .line 1372
    invoke-virtual {v6, v2, v3}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v0

    .line 1379
    if-eqz v0, :cond_8

    .line 1380
    .line 1381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    move-object v3, v0

    .line 1386
    check-cast v3, Ljava/util/Map$Entry;

    .line 1387
    .line 1388
    goto :goto_5

    .line 1389
    :cond_8
    const/4 v3, 0x0

    .line 1390
    goto :goto_5

    .line 1391
    :cond_9
    iget-boolean v3, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    .line 1392
    .line 1393
    if-eqz v3, :cond_a

    .line 1394
    .line 1395
    invoke-virtual/range {p0 .. p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 1396
    .line 1397
    .line 1398
    goto/16 :goto_d

    .line 1399
    .line 1400
    :cond_a
    if-eqz v7, :cond_b

    .line 1401
    .line 1402
    invoke-virtual {v6, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v3

    .line 1406
    iget-object v4, v3, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 1407
    .line 1408
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 1409
    .line 1410
    .line 1411
    move-result v4

    .line 1412
    if-nez v4, :cond_b

    .line 1413
    .line 1414
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v4

    .line 1422
    check-cast v4, Ljava/util/Map$Entry;

    .line 1423
    .line 1424
    goto :goto_6

    .line 1425
    :cond_b
    const/4 v3, 0x0

    .line 1426
    const/4 v4, 0x0

    .line 1427
    :goto_6
    array-length v7, v5

    .line 1428
    const/4 v9, 0x0

    .line 1429
    const v10, 0xfffff

    .line 1430
    .line 1431
    .line 1432
    const/4 v11, 0x0

    .line 1433
    :goto_7
    if-ge v11, v7, :cond_12

    .line 1434
    .line 1435
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1436
    .line 1437
    .line 1438
    move-result v13

    .line 1439
    aget v14, v5, v11

    .line 1440
    .line 1441
    const/high16 v16, 0xff00000

    .line 1442
    .line 1443
    and-int v18, v13, v16

    .line 1444
    .line 1445
    ushr-int/lit8 v12, v18, 0x14

    .line 1446
    .line 1447
    sget-object v15, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1448
    .line 1449
    move-object/from16 v19, v4

    .line 1450
    .line 1451
    const/16 v4, 0x11

    .line 1452
    .line 1453
    if-gt v12, v4, :cond_d

    .line 1454
    .line 1455
    add-int/lit8 v4, v11, 0x2

    .line 1456
    .line 1457
    aget v4, v5, v4

    .line 1458
    .line 1459
    move/from16 v20, v7

    .line 1460
    .line 1461
    const v17, 0xfffff

    .line 1462
    .line 1463
    .line 1464
    and-int v7, v4, v17

    .line 1465
    .line 1466
    if-eq v7, v10, :cond_c

    .line 1467
    .line 1468
    int-to-long v9, v7

    .line 1469
    invoke-virtual {v15, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1470
    .line 1471
    .line 1472
    move-result v9

    .line 1473
    move v10, v7

    .line 1474
    :cond_c
    ushr-int/lit8 v4, v4, 0x14

    .line 1475
    .line 1476
    const/4 v7, 0x1

    .line 1477
    shl-int v4, v7, v4

    .line 1478
    .line 1479
    move v7, v4

    .line 1480
    move-object/from16 v4, v19

    .line 1481
    .line 1482
    goto :goto_8

    .line 1483
    :cond_d
    move/from16 v20, v7

    .line 1484
    .line 1485
    move-object/from16 v4, v19

    .line 1486
    .line 1487
    const/4 v7, 0x0

    .line 1488
    :goto_8
    move/from16 v19, v10

    .line 1489
    .line 1490
    if-eqz v4, :cond_f

    .line 1491
    .line 1492
    invoke-virtual {v6, v4}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    .line 1493
    .line 1494
    .line 1495
    move-result v10

    .line 1496
    if-gt v10, v14, :cond_f

    .line 1497
    .line 1498
    invoke-virtual {v6, v2, v4}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 1499
    .line 1500
    .line 1501
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1502
    .line 1503
    .line 1504
    move-result v4

    .line 1505
    if-eqz v4, :cond_e

    .line 1506
    .line 1507
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v4

    .line 1511
    check-cast v4, Ljava/util/Map$Entry;

    .line 1512
    .line 1513
    move/from16 v10, v19

    .line 1514
    .line 1515
    goto :goto_8

    .line 1516
    :cond_e
    move/from16 v10, v19

    .line 1517
    .line 1518
    const/4 v4, 0x0

    .line 1519
    goto :goto_8

    .line 1520
    :cond_f
    const v10, 0xfffff

    .line 1521
    .line 1522
    .line 1523
    and-int/2addr v13, v10

    .line 1524
    move-object/from16 v17, v3

    .line 1525
    .line 1526
    move-object/from16 v21, v4

    .line 1527
    .line 1528
    int-to-long v3, v13

    .line 1529
    packed-switch v12, :pswitch_data_1

    .line 1530
    .line 1531
    .line 1532
    :cond_10
    :goto_9
    const/4 v12, 0x0

    .line 1533
    const/4 v13, 0x1

    .line 1534
    goto/16 :goto_b

    .line 1535
    .line 1536
    :pswitch_45
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1537
    .line 1538
    .line 1539
    move-result v7

    .line 1540
    if-eqz v7, :cond_10

    .line 1541
    .line 1542
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v4

    .line 1550
    invoke-virtual {v2, v14, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1551
    .line 1552
    .line 1553
    goto :goto_9

    .line 1554
    :pswitch_46
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v7

    .line 1558
    if-eqz v7, :cond_10

    .line 1559
    .line 1560
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1561
    .line 1562
    .line 1563
    move-result-wide v3

    .line 1564
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 1565
    .line 1566
    .line 1567
    goto :goto_9

    .line 1568
    :pswitch_47
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v7

    .line 1572
    if-eqz v7, :cond_10

    .line 1573
    .line 1574
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1575
    .line 1576
    .line 1577
    move-result v3

    .line 1578
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 1579
    .line 1580
    .line 1581
    goto :goto_9

    .line 1582
    :pswitch_48
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v7

    .line 1586
    if-eqz v7, :cond_10

    .line 1587
    .line 1588
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1589
    .line 1590
    .line 1591
    move-result-wide v3

    .line 1592
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 1593
    .line 1594
    .line 1595
    goto :goto_9

    .line 1596
    :pswitch_49
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1597
    .line 1598
    .line 1599
    move-result v7

    .line 1600
    if-eqz v7, :cond_10

    .line 1601
    .line 1602
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1603
    .line 1604
    .line 1605
    move-result v3

    .line 1606
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 1607
    .line 1608
    .line 1609
    goto :goto_9

    .line 1610
    :pswitch_4a
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v7

    .line 1614
    if-eqz v7, :cond_10

    .line 1615
    .line 1616
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1617
    .line 1618
    .line 1619
    move-result v3

    .line 1620
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 1621
    .line 1622
    .line 1623
    goto :goto_9

    .line 1624
    :pswitch_4b
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v7

    .line 1628
    if-eqz v7, :cond_10

    .line 1629
    .line 1630
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1631
    .line 1632
    .line 1633
    move-result v3

    .line 1634
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 1635
    .line 1636
    .line 1637
    goto :goto_9

    .line 1638
    :pswitch_4c
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v7

    .line 1642
    if-eqz v7, :cond_10

    .line 1643
    .line 1644
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v3

    .line 1648
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 1649
    .line 1650
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1651
    .line 1652
    .line 1653
    goto :goto_9

    .line 1654
    :pswitch_4d
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v7

    .line 1658
    if-eqz v7, :cond_10

    .line 1659
    .line 1660
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v3

    .line 1664
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v4

    .line 1668
    invoke-virtual {v2, v14, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 1669
    .line 1670
    .line 1671
    goto/16 :goto_9

    .line 1672
    .line 1673
    :pswitch_4e
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v7

    .line 1677
    if-eqz v7, :cond_10

    .line 1678
    .line 1679
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v3

    .line 1683
    invoke-static {v14, v3, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 1684
    .line 1685
    .line 1686
    goto/16 :goto_9

    .line 1687
    .line 1688
    :pswitch_4f
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1689
    .line 1690
    .line 1691
    move-result v7

    .line 1692
    if-eqz v7, :cond_10

    .line 1693
    .line 1694
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v3

    .line 1698
    check-cast v3, Ljava/lang/Boolean;

    .line 1699
    .line 1700
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 1705
    .line 1706
    .line 1707
    goto/16 :goto_9

    .line 1708
    .line 1709
    :pswitch_50
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v7

    .line 1713
    if-eqz v7, :cond_10

    .line 1714
    .line 1715
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1716
    .line 1717
    .line 1718
    move-result v3

    .line 1719
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 1720
    .line 1721
    .line 1722
    goto/16 :goto_9

    .line 1723
    .line 1724
    :pswitch_51
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v7

    .line 1728
    if-eqz v7, :cond_10

    .line 1729
    .line 1730
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1731
    .line 1732
    .line 1733
    move-result-wide v3

    .line 1734
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 1735
    .line 1736
    .line 1737
    goto/16 :goto_9

    .line 1738
    .line 1739
    :pswitch_52
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1740
    .line 1741
    .line 1742
    move-result v7

    .line 1743
    if-eqz v7, :cond_10

    .line 1744
    .line 1745
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1746
    .line 1747
    .line 1748
    move-result v3

    .line 1749
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 1750
    .line 1751
    .line 1752
    goto/16 :goto_9

    .line 1753
    .line 1754
    :pswitch_53
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1755
    .line 1756
    .line 1757
    move-result v7

    .line 1758
    if-eqz v7, :cond_10

    .line 1759
    .line 1760
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1761
    .line 1762
    .line 1763
    move-result-wide v3

    .line 1764
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 1765
    .line 1766
    .line 1767
    goto/16 :goto_9

    .line 1768
    .line 1769
    :pswitch_54
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1770
    .line 1771
    .line 1772
    move-result v7

    .line 1773
    if-eqz v7, :cond_10

    .line 1774
    .line 1775
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1776
    .line 1777
    .line 1778
    move-result-wide v3

    .line 1779
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 1780
    .line 1781
    .line 1782
    goto/16 :goto_9

    .line 1783
    .line 1784
    :pswitch_55
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result v7

    .line 1788
    if-eqz v7, :cond_10

    .line 1789
    .line 1790
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v3

    .line 1794
    check-cast v3, Ljava/lang/Float;

    .line 1795
    .line 1796
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1797
    .line 1798
    .line 1799
    move-result v3

    .line 1800
    invoke-virtual {v2, v3, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 1801
    .line 1802
    .line 1803
    goto/16 :goto_9

    .line 1804
    .line 1805
    :pswitch_56
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1806
    .line 1807
    .line 1808
    move-result v7

    .line 1809
    if-eqz v7, :cond_10

    .line 1810
    .line 1811
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v3

    .line 1815
    check-cast v3, Ljava/lang/Double;

    .line 1816
    .line 1817
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1818
    .line 1819
    .line 1820
    move-result-wide v3

    .line 1821
    invoke-virtual {v2, v3, v4, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 1822
    .line 1823
    .line 1824
    goto/16 :goto_9

    .line 1825
    .line 1826
    :pswitch_57
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v3

    .line 1830
    invoke-virtual {v0, v2, v14, v3, v11}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    .line 1831
    .line 1832
    .line 1833
    goto/16 :goto_9

    .line 1834
    .line 1835
    :pswitch_58
    aget v7, v5, v11

    .line 1836
    .line 1837
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v3

    .line 1841
    check-cast v3, Ljava/util/List;

    .line 1842
    .line 1843
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v4

    .line 1847
    invoke-static {v7, v3, v2, v4}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 1848
    .line 1849
    .line 1850
    goto/16 :goto_9

    .line 1851
    .line 1852
    :pswitch_59
    aget v7, v5, v11

    .line 1853
    .line 1854
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v3

    .line 1858
    check-cast v3, Ljava/util/List;

    .line 1859
    .line 1860
    const/4 v13, 0x1

    .line 1861
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1862
    .line 1863
    .line 1864
    goto/16 :goto_a

    .line 1865
    .line 1866
    :pswitch_5a
    const/4 v13, 0x1

    .line 1867
    aget v7, v5, v11

    .line 1868
    .line 1869
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v3

    .line 1873
    check-cast v3, Ljava/util/List;

    .line 1874
    .line 1875
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1876
    .line 1877
    .line 1878
    goto/16 :goto_a

    .line 1879
    .line 1880
    :pswitch_5b
    const/4 v13, 0x1

    .line 1881
    aget v7, v5, v11

    .line 1882
    .line 1883
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v3

    .line 1887
    check-cast v3, Ljava/util/List;

    .line 1888
    .line 1889
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1890
    .line 1891
    .line 1892
    goto/16 :goto_a

    .line 1893
    .line 1894
    :pswitch_5c
    const/4 v13, 0x1

    .line 1895
    aget v7, v5, v11

    .line 1896
    .line 1897
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v3

    .line 1901
    check-cast v3, Ljava/util/List;

    .line 1902
    .line 1903
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1904
    .line 1905
    .line 1906
    goto/16 :goto_a

    .line 1907
    .line 1908
    :pswitch_5d
    const/4 v13, 0x1

    .line 1909
    aget v7, v5, v11

    .line 1910
    .line 1911
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v3

    .line 1915
    check-cast v3, Ljava/util/List;

    .line 1916
    .line 1917
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1918
    .line 1919
    .line 1920
    goto/16 :goto_a

    .line 1921
    .line 1922
    :pswitch_5e
    const/4 v13, 0x1

    .line 1923
    aget v7, v5, v11

    .line 1924
    .line 1925
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v3

    .line 1929
    check-cast v3, Ljava/util/List;

    .line 1930
    .line 1931
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1932
    .line 1933
    .line 1934
    goto/16 :goto_a

    .line 1935
    .line 1936
    :pswitch_5f
    const/4 v13, 0x1

    .line 1937
    aget v7, v5, v11

    .line 1938
    .line 1939
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v3

    .line 1943
    check-cast v3, Ljava/util/List;

    .line 1944
    .line 1945
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1946
    .line 1947
    .line 1948
    goto/16 :goto_a

    .line 1949
    .line 1950
    :pswitch_60
    const/4 v13, 0x1

    .line 1951
    aget v7, v5, v11

    .line 1952
    .line 1953
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v3

    .line 1957
    check-cast v3, Ljava/util/List;

    .line 1958
    .line 1959
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1960
    .line 1961
    .line 1962
    goto/16 :goto_a

    .line 1963
    .line 1964
    :pswitch_61
    const/4 v13, 0x1

    .line 1965
    aget v7, v5, v11

    .line 1966
    .line 1967
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v3

    .line 1971
    check-cast v3, Ljava/util/List;

    .line 1972
    .line 1973
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1974
    .line 1975
    .line 1976
    goto/16 :goto_a

    .line 1977
    .line 1978
    :pswitch_62
    const/4 v13, 0x1

    .line 1979
    aget v7, v5, v11

    .line 1980
    .line 1981
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v3

    .line 1985
    check-cast v3, Ljava/util/List;

    .line 1986
    .line 1987
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 1988
    .line 1989
    .line 1990
    goto/16 :goto_a

    .line 1991
    .line 1992
    :pswitch_63
    const/4 v13, 0x1

    .line 1993
    aget v7, v5, v11

    .line 1994
    .line 1995
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v3

    .line 1999
    check-cast v3, Ljava/util/List;

    .line 2000
    .line 2001
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2002
    .line 2003
    .line 2004
    goto/16 :goto_a

    .line 2005
    .line 2006
    :pswitch_64
    const/4 v13, 0x1

    .line 2007
    aget v7, v5, v11

    .line 2008
    .line 2009
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v3

    .line 2013
    check-cast v3, Ljava/util/List;

    .line 2014
    .line 2015
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2016
    .line 2017
    .line 2018
    goto/16 :goto_a

    .line 2019
    .line 2020
    :pswitch_65
    const/4 v13, 0x1

    .line 2021
    aget v7, v5, v11

    .line 2022
    .line 2023
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v3

    .line 2027
    check-cast v3, Ljava/util/List;

    .line 2028
    .line 2029
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2030
    .line 2031
    .line 2032
    goto/16 :goto_a

    .line 2033
    .line 2034
    :pswitch_66
    const/4 v13, 0x1

    .line 2035
    aget v7, v5, v11

    .line 2036
    .line 2037
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v3

    .line 2041
    check-cast v3, Ljava/util/List;

    .line 2042
    .line 2043
    invoke-static {v7, v3, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_a

    .line 2047
    .line 2048
    :pswitch_67
    const/4 v13, 0x1

    .line 2049
    aget v7, v5, v11

    .line 2050
    .line 2051
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v3

    .line 2055
    check-cast v3, Ljava/util/List;

    .line 2056
    .line 2057
    const/4 v12, 0x0

    .line 2058
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2059
    .line 2060
    .line 2061
    goto/16 :goto_b

    .line 2062
    .line 2063
    :pswitch_68
    const/4 v12, 0x0

    .line 2064
    const/4 v13, 0x1

    .line 2065
    aget v7, v5, v11

    .line 2066
    .line 2067
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v3

    .line 2071
    check-cast v3, Ljava/util/List;

    .line 2072
    .line 2073
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_b

    .line 2077
    .line 2078
    :pswitch_69
    const/4 v12, 0x0

    .line 2079
    const/4 v13, 0x1

    .line 2080
    aget v7, v5, v11

    .line 2081
    .line 2082
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v3

    .line 2086
    check-cast v3, Ljava/util/List;

    .line 2087
    .line 2088
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2089
    .line 2090
    .line 2091
    goto/16 :goto_b

    .line 2092
    .line 2093
    :pswitch_6a
    const/4 v12, 0x0

    .line 2094
    const/4 v13, 0x1

    .line 2095
    aget v7, v5, v11

    .line 2096
    .line 2097
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v3

    .line 2101
    check-cast v3, Ljava/util/List;

    .line 2102
    .line 2103
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_b

    .line 2107
    .line 2108
    :pswitch_6b
    const/4 v12, 0x0

    .line 2109
    const/4 v13, 0x1

    .line 2110
    aget v7, v5, v11

    .line 2111
    .line 2112
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v3

    .line 2116
    check-cast v3, Ljava/util/List;

    .line 2117
    .line 2118
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_b

    .line 2122
    .line 2123
    :pswitch_6c
    const/4 v12, 0x0

    .line 2124
    const/4 v13, 0x1

    .line 2125
    aget v7, v5, v11

    .line 2126
    .line 2127
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v3

    .line 2131
    check-cast v3, Ljava/util/List;

    .line 2132
    .line 2133
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2134
    .line 2135
    .line 2136
    goto :goto_a

    .line 2137
    :pswitch_6d
    const/4 v13, 0x1

    .line 2138
    aget v7, v5, v11

    .line 2139
    .line 2140
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v3

    .line 2144
    check-cast v3, Ljava/util/List;

    .line 2145
    .line 2146
    invoke-static {v7, v3, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 2147
    .line 2148
    .line 2149
    goto :goto_a

    .line 2150
    :pswitch_6e
    const/4 v13, 0x1

    .line 2151
    aget v7, v5, v11

    .line 2152
    .line 2153
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v3

    .line 2157
    check-cast v3, Ljava/util/List;

    .line 2158
    .line 2159
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v4

    .line 2163
    invoke-static {v7, v3, v2, v4}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Lcom/google/protobuf/Schema;)V

    .line 2164
    .line 2165
    .line 2166
    goto :goto_a

    .line 2167
    :pswitch_6f
    const/4 v13, 0x1

    .line 2168
    aget v7, v5, v11

    .line 2169
    .line 2170
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v3

    .line 2174
    check-cast v3, Ljava/util/List;

    .line 2175
    .line 2176
    invoke-static {v7, v3, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 2177
    .line 2178
    .line 2179
    :goto_a
    const/4 v12, 0x0

    .line 2180
    goto/16 :goto_b

    .line 2181
    .line 2182
    :pswitch_70
    const/4 v13, 0x1

    .line 2183
    aget v7, v5, v11

    .line 2184
    .line 2185
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v3

    .line 2189
    check-cast v3, Ljava/util/List;

    .line 2190
    .line 2191
    const/4 v12, 0x0

    .line 2192
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2193
    .line 2194
    .line 2195
    goto/16 :goto_b

    .line 2196
    .line 2197
    :pswitch_71
    const/4 v12, 0x0

    .line 2198
    const/4 v13, 0x1

    .line 2199
    aget v7, v5, v11

    .line 2200
    .line 2201
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v3

    .line 2205
    check-cast v3, Ljava/util/List;

    .line 2206
    .line 2207
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2208
    .line 2209
    .line 2210
    goto/16 :goto_b

    .line 2211
    .line 2212
    :pswitch_72
    const/4 v12, 0x0

    .line 2213
    const/4 v13, 0x1

    .line 2214
    aget v7, v5, v11

    .line 2215
    .line 2216
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v3

    .line 2220
    check-cast v3, Ljava/util/List;

    .line 2221
    .line 2222
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2223
    .line 2224
    .line 2225
    goto/16 :goto_b

    .line 2226
    .line 2227
    :pswitch_73
    const/4 v12, 0x0

    .line 2228
    const/4 v13, 0x1

    .line 2229
    aget v7, v5, v11

    .line 2230
    .line 2231
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v3

    .line 2235
    check-cast v3, Ljava/util/List;

    .line 2236
    .line 2237
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2238
    .line 2239
    .line 2240
    goto/16 :goto_b

    .line 2241
    .line 2242
    :pswitch_74
    const/4 v12, 0x0

    .line 2243
    const/4 v13, 0x1

    .line 2244
    aget v7, v5, v11

    .line 2245
    .line 2246
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v3

    .line 2250
    check-cast v3, Ljava/util/List;

    .line 2251
    .line 2252
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2253
    .line 2254
    .line 2255
    goto/16 :goto_b

    .line 2256
    .line 2257
    :pswitch_75
    const/4 v12, 0x0

    .line 2258
    const/4 v13, 0x1

    .line 2259
    aget v7, v5, v11

    .line 2260
    .line 2261
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v3

    .line 2265
    check-cast v3, Ljava/util/List;

    .line 2266
    .line 2267
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2268
    .line 2269
    .line 2270
    goto/16 :goto_b

    .line 2271
    .line 2272
    :pswitch_76
    const/4 v12, 0x0

    .line 2273
    const/4 v13, 0x1

    .line 2274
    aget v7, v5, v11

    .line 2275
    .line 2276
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v3

    .line 2280
    check-cast v3, Ljava/util/List;

    .line 2281
    .line 2282
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2283
    .line 2284
    .line 2285
    goto/16 :goto_b

    .line 2286
    .line 2287
    :pswitch_77
    const/4 v12, 0x0

    .line 2288
    const/4 v13, 0x1

    .line 2289
    aget v7, v5, v11

    .line 2290
    .line 2291
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v3

    .line 2295
    check-cast v3, Ljava/util/List;

    .line 2296
    .line 2297
    invoke-static {v7, v3, v2, v12}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/CodedOutputStreamWriter;Z)V

    .line 2298
    .line 2299
    .line 2300
    goto/16 :goto_b

    .line 2301
    .line 2302
    :pswitch_78
    const/4 v12, 0x0

    .line 2303
    const/4 v13, 0x1

    .line 2304
    and-int/2addr v7, v9

    .line 2305
    if-eqz v7, :cond_11

    .line 2306
    .line 2307
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v3

    .line 2311
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v4

    .line 2315
    invoke-virtual {v2, v14, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 2316
    .line 2317
    .line 2318
    goto/16 :goto_b

    .line 2319
    .line 2320
    :pswitch_79
    const/4 v12, 0x0

    .line 2321
    const/4 v13, 0x1

    .line 2322
    and-int/2addr v7, v9

    .line 2323
    if-eqz v7, :cond_11

    .line 2324
    .line 2325
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2326
    .line 2327
    .line 2328
    move-result-wide v3

    .line 2329
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    .line 2330
    .line 2331
    .line 2332
    goto/16 :goto_b

    .line 2333
    .line 2334
    :pswitch_7a
    const/4 v12, 0x0

    .line 2335
    const/4 v13, 0x1

    .line 2336
    and-int/2addr v7, v9

    .line 2337
    if-eqz v7, :cond_11

    .line 2338
    .line 2339
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2340
    .line 2341
    .line 2342
    move-result v3

    .line 2343
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    .line 2344
    .line 2345
    .line 2346
    goto/16 :goto_b

    .line 2347
    .line 2348
    :pswitch_7b
    const/4 v12, 0x0

    .line 2349
    const/4 v13, 0x1

    .line 2350
    and-int/2addr v7, v9

    .line 2351
    if-eqz v7, :cond_11

    .line 2352
    .line 2353
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2354
    .line 2355
    .line 2356
    move-result-wide v3

    .line 2357
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    .line 2358
    .line 2359
    .line 2360
    goto/16 :goto_b

    .line 2361
    .line 2362
    :pswitch_7c
    const/4 v12, 0x0

    .line 2363
    const/4 v13, 0x1

    .line 2364
    and-int/2addr v7, v9

    .line 2365
    if-eqz v7, :cond_11

    .line 2366
    .line 2367
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2368
    .line 2369
    .line 2370
    move-result v3

    .line 2371
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    .line 2372
    .line 2373
    .line 2374
    goto/16 :goto_b

    .line 2375
    .line 2376
    :pswitch_7d
    const/4 v12, 0x0

    .line 2377
    const/4 v13, 0x1

    .line 2378
    and-int/2addr v7, v9

    .line 2379
    if-eqz v7, :cond_11

    .line 2380
    .line 2381
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2382
    .line 2383
    .line 2384
    move-result v3

    .line 2385
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    .line 2386
    .line 2387
    .line 2388
    goto/16 :goto_b

    .line 2389
    .line 2390
    :pswitch_7e
    const/4 v12, 0x0

    .line 2391
    const/4 v13, 0x1

    .line 2392
    and-int/2addr v7, v9

    .line 2393
    if-eqz v7, :cond_11

    .line 2394
    .line 2395
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2396
    .line 2397
    .line 2398
    move-result v3

    .line 2399
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    .line 2400
    .line 2401
    .line 2402
    goto/16 :goto_b

    .line 2403
    .line 2404
    :pswitch_7f
    const/4 v12, 0x0

    .line 2405
    const/4 v13, 0x1

    .line 2406
    and-int/2addr v7, v9

    .line 2407
    if-eqz v7, :cond_11

    .line 2408
    .line 2409
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v3

    .line 2413
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 2414
    .line 2415
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2416
    .line 2417
    .line 2418
    goto/16 :goto_b

    .line 2419
    .line 2420
    :pswitch_80
    const/4 v12, 0x0

    .line 2421
    const/4 v13, 0x1

    .line 2422
    and-int/2addr v7, v9

    .line 2423
    if-eqz v7, :cond_11

    .line 2424
    .line 2425
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v3

    .line 2429
    invoke-virtual {v0, v11}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v4

    .line 2433
    invoke-virtual {v2, v14, v4, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILcom/google/protobuf/Schema;Ljava/lang/Object;)V

    .line 2434
    .line 2435
    .line 2436
    goto/16 :goto_b

    .line 2437
    .line 2438
    :pswitch_81
    const/4 v12, 0x0

    .line 2439
    const/4 v13, 0x1

    .line 2440
    and-int/2addr v7, v9

    .line 2441
    if-eqz v7, :cond_11

    .line 2442
    .line 2443
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v3

    .line 2447
    invoke-static {v14, v3, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 2448
    .line 2449
    .line 2450
    goto/16 :goto_b

    .line 2451
    .line 2452
    :pswitch_82
    const/4 v12, 0x0

    .line 2453
    const/4 v13, 0x1

    .line 2454
    and-int/2addr v7, v9

    .line 2455
    if-eqz v7, :cond_11

    .line 2456
    .line 2457
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(JLjava/lang/Object;)Z

    .line 2458
    .line 2459
    .line 2460
    move-result v3

    .line 2461
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    .line 2462
    .line 2463
    .line 2464
    goto :goto_b

    .line 2465
    :pswitch_83
    const/4 v12, 0x0

    .line 2466
    const/4 v13, 0x1

    .line 2467
    and-int/2addr v7, v9

    .line 2468
    if-eqz v7, :cond_11

    .line 2469
    .line 2470
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2471
    .line 2472
    .line 2473
    move-result v3

    .line 2474
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    .line 2475
    .line 2476
    .line 2477
    goto :goto_b

    .line 2478
    :pswitch_84
    const/4 v12, 0x0

    .line 2479
    const/4 v13, 0x1

    .line 2480
    and-int/2addr v7, v9

    .line 2481
    if-eqz v7, :cond_11

    .line 2482
    .line 2483
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2484
    .line 2485
    .line 2486
    move-result-wide v3

    .line 2487
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    .line 2488
    .line 2489
    .line 2490
    goto :goto_b

    .line 2491
    :pswitch_85
    const/4 v12, 0x0

    .line 2492
    const/4 v13, 0x1

    .line 2493
    and-int/2addr v7, v9

    .line 2494
    if-eqz v7, :cond_11

    .line 2495
    .line 2496
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2497
    .line 2498
    .line 2499
    move-result v3

    .line 2500
    invoke-virtual {v2, v14, v3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    .line 2501
    .line 2502
    .line 2503
    goto :goto_b

    .line 2504
    :pswitch_86
    const/4 v12, 0x0

    .line 2505
    const/4 v13, 0x1

    .line 2506
    and-int/2addr v7, v9

    .line 2507
    if-eqz v7, :cond_11

    .line 2508
    .line 2509
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2510
    .line 2511
    .line 2512
    move-result-wide v3

    .line 2513
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    .line 2514
    .line 2515
    .line 2516
    goto :goto_b

    .line 2517
    :pswitch_87
    const/4 v12, 0x0

    .line 2518
    const/4 v13, 0x1

    .line 2519
    and-int/2addr v7, v9

    .line 2520
    if-eqz v7, :cond_11

    .line 2521
    .line 2522
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2523
    .line 2524
    .line 2525
    move-result-wide v3

    .line 2526
    invoke-virtual {v2, v14, v3, v4}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    .line 2527
    .line 2528
    .line 2529
    goto :goto_b

    .line 2530
    :pswitch_88
    const/4 v12, 0x0

    .line 2531
    const/4 v13, 0x1

    .line 2532
    and-int/2addr v7, v9

    .line 2533
    if-eqz v7, :cond_11

    .line 2534
    .line 2535
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getFloat(JLjava/lang/Object;)F

    .line 2536
    .line 2537
    .line 2538
    move-result v3

    .line 2539
    invoke-virtual {v2, v3, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    .line 2540
    .line 2541
    .line 2542
    goto :goto_b

    .line 2543
    :pswitch_89
    const/4 v12, 0x0

    .line 2544
    const/4 v13, 0x1

    .line 2545
    and-int/2addr v7, v9

    .line 2546
    if-eqz v7, :cond_11

    .line 2547
    .line 2548
    invoke-static {v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->getDouble(JLjava/lang/Object;)D

    .line 2549
    .line 2550
    .line 2551
    move-result-wide v3

    .line 2552
    invoke-virtual {v2, v3, v4, v14}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    .line 2553
    .line 2554
    .line 2555
    :cond_11
    :goto_b
    add-int/lit8 v11, v11, 0x3

    .line 2556
    .line 2557
    move-object/from16 v3, v17

    .line 2558
    .line 2559
    move/from16 v10, v19

    .line 2560
    .line 2561
    move/from16 v7, v20

    .line 2562
    .line 2563
    move-object/from16 v4, v21

    .line 2564
    .line 2565
    goto/16 :goto_7

    .line 2566
    .line 2567
    :cond_12
    move-object/from16 v17, v3

    .line 2568
    .line 2569
    move-object/from16 v19, v4

    .line 2570
    .line 2571
    :goto_c
    if-eqz v4, :cond_14

    .line 2572
    .line 2573
    invoke-virtual {v6, v2, v4}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    .line 2574
    .line 2575
    .line 2576
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 2577
    .line 2578
    .line 2579
    move-result v0

    .line 2580
    if-eqz v0, :cond_13

    .line 2581
    .line 2582
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2583
    .line 2584
    .line 2585
    move-result-object v0

    .line 2586
    move-object v4, v0

    .line 2587
    check-cast v4, Ljava/util/Map$Entry;

    .line 2588
    .line 2589
    goto :goto_c

    .line 2590
    :cond_13
    const/4 v4, 0x0

    .line 2591
    goto :goto_c

    .line 2592
    :cond_14
    invoke-virtual {v8, v1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2593
    .line 2594
    .line 2595
    move-result-object v0

    .line 2596
    invoke-virtual {v8, v0, v2}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V

    .line 2597
    .line 2598
    .line 2599
    :cond_15
    :goto_d
    return-void

    .line 2600
    nop

    .line 2601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    .line 2704
    .line 2705
    .line 2706
    .line 2707
    .line 2708
    .line 2709
    .line 2710
    .line 2711
    .line 2712
    .line 2713
    .line 2714
    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    .line 2720
    .line 2721
    .line 2722
    .line 2723
    .line 2724
    .line 2725
    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
